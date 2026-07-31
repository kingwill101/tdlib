import 'dart:async';
import 'dart:convert';
import 'dart:ffi' as ffi;

import 'package:rxdart/rxdart.dart';
import 'package:tdlib2/td_api.dart';

import '../../td_error.dart' as client_error;
import '../platform.dart';
import 'json_bindings.dart';
import 'orphan_client_tracker.dart';

/// Single-isolate TDLib JSON client using **non-blocking** receive.
///
/// ```
/// UI / main isolate
/// ─────────────────
/// send / execute  →  libtdjson (same thread)
/// Timer poll      →  td_json_client_receive(client, 0)  // never blocks
/// updates stream  ←  drained events
/// ```
///
/// `td_json_client_receive` with timeout `0` returns immediately when the
/// queue is empty, so no background isolate is required. TDLib still runs its
/// own internal threads for network/DB work.
///
/// Lifecycle is in-memory only: create → use → [destroy]. After a Flutter
/// hot restart, fully restart the app process.
final class PlatformImpl implements Platform {
  ffi.Pointer? _client;
  Timer? _pollTimer;
  bool _draining = false;
  bool _alive = false;
  final PublishSubject<Event> _eventsSubject = PublishSubject<Event>();

  /// How often to poll an empty receive queue.
  static const Duration _pollInterval = Duration(milliseconds: 16);

  /// Max events processed in one drain pass before yielding.
  ///
  /// Keep this small: JSON parse + [toTdObject] run on the UI isolate.
  /// Under download storms (many `updateFile` events) a large batch +
  /// microtask chaining starves frames and triggers Android ANRs.
  static const int _maxEventsPerDrain = 8;

  @override
  Future<void> initialize({
    Iterable<Map<String, dynamic>> beforeReceive = const [],
  }) async {
    if (_client != null) {
      throw client_error.TdError('Client already initiated!');
    }

    final bindings = JsonBindings();
    // Flutter hot restart discards this Dart object but not the native TDLib
    // client. Release its database lock before making a replacement client.
    OrphanClientTracker.instance.initialize(bindings.destroy);
    _client = bindings.createClient();
    OrphanClientTracker.instance.add(_client!);
    _alive = true;

    for (final function in beforeReceive) {
      final result = bindings.execute(_client!, json.encode(function));
      if (result['@type'] == 'error') {
        throw client_error.TdError(result.toString());
      }
    }

    // Start non-blocking poll. First drain immediately so early auth updates
    // are not delayed by one poll interval.
    _drainReceive();
    _pollTimer = Timer.periodic(_pollInterval, (_) => _drainReceive());
  }

  /// Pull all ready events with timeout 0 (non-blocking).
  void _drainReceive() {
    final client = _client;
    if (!_alive || client == null || _eventsSubject.isClosed || _draining) {
      return;
    }

    _draining = true;
    try {
      final bindings = JsonBindings();
      var processed = 0;
      while (_alive && processed < _maxEventsPerDrain) {
        final raw = bindings.receive(client, 0);
        if (raw == null) break;

        processed++;
        _dispatchRaw(raw);
      }

      // Backlog remains — schedule on the *event* queue (Timer), never via
      // chained microtasks. Microtasks run before the next frame callback, so
      // a continuous microtask drain blocks painting and causes ANRs.
      if (processed >= _maxEventsPerDrain &&
          _alive &&
          !_eventsSubject.isClosed) {
        Timer.run(_drainReceive);
      }
    } finally {
      _draining = false;
    }
  }

  void _dispatchRaw(String raw) {
    late final Map<String, dynamic> newJson;
    try {
      newJson = json.decode(raw) as Map<String, dynamic>;
    } catch (e) {
      // ignore: avoid_print
      print('[tdlib] JSON decode failed: $e raw=$raw');
      return;
    }

    TdObject? object;
    try {
      object = newJson.toTdObject();
    } catch (e) {
      // ignore: avoid_print
      print('[tdlib] Deserialization failed for @type=${newJson['@type']}: $e');
      return;
    }
    if (object == null) return;

    if (_eventsSubject.isClosed) return;
    _eventsSubject.add(Event(object: object, extra: newJson['@extra'] as int?));
  }

  @override
  Stream<Event> get events => _eventsSubject;

  @override
  Map<String, dynamic> execute({required Map<String, dynamic> function}) {
    final client = _client;
    if (client == null) {
      throw client_error.TdError('Client not initiated!');
    }
    return JsonBindings().execute(client, json.encode(function));
  }

  @override
  void send({required Map<String, dynamic> function}) {
    final client = _client;
    if (client == null) {
      throw client_error.TdError('Client not initiated!');
    }
    JsonBindings().send(client, json.encode(function));
    // Responses may already be queued; drain on the event queue so we do not
    // starve frames under load (see _drainReceive backlog note).
    Timer.run(_drainReceive);
  }

  @override
  void destroy() {
    _alive = false;
    _pollTimer?.cancel();
    _pollTimer = null;
    if (!_eventsSubject.isClosed) {
      _eventsSubject.close();
    }
    if (_client != null) {
      final client = _client!;
      OrphanClientTracker.instance.remove(client);
      JsonBindings().destroy(client);
      _client = null;
    }
  }
}
