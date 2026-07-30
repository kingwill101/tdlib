import 'dart:convert';
import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';

import 'tdjson_native.dart' as native;

/// Thin wrapper around TDLib's legacy JSON client interface.
///
/// Native loading is handled by Dart code assets via the `@Native`
/// declarations in [tdjson_native.dart].
final class JsonBindings {
  static final JsonBindings _singleton = JsonBindings._internal();

  factory JsonBindings() => _singleton;

  JsonBindings._internal();

  ffi.Pointer<ffi.Void> createClient() {
    final client = native.tdJsonClientCreate();
    if (client == ffi.nullptr) {
      throw StateError('td_json_client_create returned nullptr');
    }
    return client;
  }

  void send(ffi.Pointer client, String object) {
    _validateClient(client);

    final request = object.toNativeUtf8();
    try {
      native.tdJsonClientSend(
        client.cast<ffi.Void>(),
        request.cast<ffi.Char>(),
      );
    } finally {
      malloc.free(request);
    }
  }

  /// Non-blocking when [timeout] is `0`. Returns `null` if nothing is ready.
  String? receive(ffi.Pointer client, double timeout) {
    _validateClient(client);

    if (!timeout.isFinite || timeout < 0) {
      throw ArgumentError.value(
        timeout,
        'timeout',
        'Timeout must be finite and non-negative.',
      );
    }

    final result = native.tdJsonClientReceive(client.cast<ffi.Void>(), timeout);
    if (result == ffi.nullptr) return null;
    return result.cast<Utf8>().toDartString();
  }

  Map<String, dynamic> execute(ffi.Pointer client, String query) {
    _validateClient(client);

    final request = query.toNativeUtf8();
    try {
      final result = native.tdJsonClientExecute(
        client.cast<ffi.Void>(),
        request.cast<ffi.Char>(),
      );
      if (result == ffi.nullptr) {
        throw StateError('td_json_client_execute returned null');
      }

      final decoded = jsonDecode(result.cast<Utf8>().toDartString());
      if (decoded is! Map<String, dynamic>) {
        throw FormatException('TDLib returned a non-object JSON value.');
      }
      return decoded;
    } finally {
      malloc.free(request);
    }
  }

  void destroy(ffi.Pointer client) {
    if (client == ffi.nullptr) return;
    native.tdJsonClientDestroy(client.cast<ffi.Void>());
  }

  void _validateClient(ffi.Pointer client) {
    if (client == ffi.nullptr) {
      throw ArgumentError.value(
        client,
        'client',
        'TDLib client must not be nullptr.',
      );
    }
  }
}
