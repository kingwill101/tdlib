import 'dart:ffi' as ffi;
import 'dart:io';

import 'package:ffi/ffi.dart';

/// Tracks TDLib JSON-client pointers so debug hot restarts can release them.
///
/// Flutter hot restart replaces the Dart VM but leaves the host process and
/// native TDLib clients alive. A leaked client keeps TDLib's database lock,
/// making the next VM wait forever before it can restore the session.
///
/// The small native buffer deliberately outlives a Dart VM. The next VM in the
/// same process reads its address from a PID-scoped temp file, destroys every
/// tracked pointer, and then reuses the buffer for its own clients. This is a
/// development-only recovery; normal production process shutdown releases all
/// native resources with the process.
final class OrphanClientTracker {
  OrphanClientTracker._();

  static final instance = OrphanClientTracker._();

  static const _slots = 8;
  static const _slotStride = 2;
  static const _cookie = 0x54444C49425F4852; // "TDLIB_HR"

  late final File _sentinel = File(
    '${Directory.systemTemp.path}${Platform.pathSeparator}'
    'tdlib_dart_refs_$pid.txt',
  );
  ffi.Pointer<ffi.IntPtr>? _buffer;
  bool _initialized = false;

  bool get _enabled => !const bool.fromEnvironment('dart.vm.product');

  /// Reaps clients from the VM that existed before this one, if any.
  void initialize(void Function(ffi.Pointer client) destroy) {
    if (!_enabled || _initialized || ffi.sizeOf<ffi.IntPtr>() != 8) return;
    _initialized = true;

    try {
      final buffer = _openBuffer();
      for (var index = 0; index < _slots; index++) {
        final cookie = buffer + (index * _slotStride);
        final address = buffer + (index * _slotStride + 1);
        if (cookie.value != _cookie || address.value == 0) continue;

        final client = ffi.Pointer.fromAddress(address.value);
        // Clear the slot first: a failing destroy must never be retried with
        // an already-released pointer during another hot restart.
        cookie.value = 0;
        address.value = 0;
        stderr.writeln(
          '[tdlib] Releasing a client leaked across Flutter hot restart.',
        );
        try {
          destroy(client);
        } catch (error) {
          stderr.writeln('[tdlib] Failed to release orphaned client: $error');
        }
      }
    } catch (error) {
      stderr.writeln('[tdlib] Hot-restart client recovery unavailable: $error');
    }
  }

  void add(ffi.Pointer client) {
    final buffer = _buffer;
    if (!_enabled || buffer == null || client == ffi.nullptr) return;

    for (var index = 0; index < _slots; index++) {
      final cookie = buffer + (index * _slotStride);
      final address = buffer + (index * _slotStride + 1);
      if (cookie.value == 0 && address.value == 0) {
        cookie.value = _cookie;
        address.value = client.address;
        return;
      }
    }
    stderr.writeln('[tdlib] Hot-restart client tracker is full.');
  }

  void remove(ffi.Pointer client) {
    final buffer = _buffer;
    if (!_enabled || buffer == null || client == ffi.nullptr) return;

    for (var index = 0; index < _slots; index++) {
      final cookie = buffer + (index * _slotStride);
      final address = buffer + (index * _slotStride + 1);
      if (cookie.value == _cookie && address.value == client.address) {
        cookie.value = 0;
        address.value = 0;
        return;
      }
    }
  }

  ffi.Pointer<ffi.IntPtr> _openBuffer() {
    final existing = _buffer;
    if (existing != null) return existing;

    if (_sentinel.existsSync()) {
      final address = int.parse(_sentinel.readAsStringSync().trim());
      return _buffer = ffi.Pointer<ffi.IntPtr>.fromAddress(address);
    }

    // Do not free this allocation. It has to remain valid until either the
    // next hot restart releases tracked clients or the host process exits.
    final buffer = calloc<ffi.IntPtr>(_slots * _slotStride);
    _sentinel.writeAsStringSync(buffer.address.toString());
    return _buffer = buffer;
  }
}
