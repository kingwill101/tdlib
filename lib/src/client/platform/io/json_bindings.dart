import 'dart:convert';
import 'dart:ffi' as ffi;
import 'dart:io';

import 'package:ffi/ffi.dart';

typedef TdJsonClientCreateNative = ffi.Pointer Function();
typedef TdJsonClientReceiveNative = ffi.Pointer<Utf8> Function(
  ffi.Pointer,
  ffi.Double,
);
typedef TdJsonClientSendNative = ffi.Void Function(
  ffi.Pointer,
  ffi.Pointer<Utf8>,
);
typedef TdJsonClientExecuteNative = ffi.Pointer<Utf8> Function(
  ffi.Pointer,
  ffi.Pointer<Utf8>,
);
typedef TdJsonClientDestroyNative = ffi.Void Function(ffi.Pointer);

/// Thin FFI wrapper around `td_json_client_*`.
///
/// [receive] with [timeout] `0` is non-blocking (returns immediately when the
/// queue is empty). Callers must copy the returned string before the next
/// [receive]/[execute] on this thread — TDLib reclaims the C buffer then.
final class JsonBindings {
  static final JsonBindings _singleton = JsonBindings._internal();

  factory JsonBindings() => _singleton;

  JsonBindings._internal();

  late final ffi.DynamicLibrary _libtdjson = _openLib();

  late final ffi.Pointer Function() _clientCreate = _libtdjson
      .lookup<ffi.NativeFunction<TdJsonClientCreateNative>>(
        _resolveFuncName('create'),
      )
      .asFunction();

  late final ffi.Pointer<Utf8> Function(ffi.Pointer, double) _clientReceive =
      _libtdjson
          .lookup<ffi.NativeFunction<TdJsonClientReceiveNative>>(
            _resolveFuncName('receive'),
          )
          .asFunction();

  late final void Function(ffi.Pointer, ffi.Pointer<Utf8>) _clientSend =
      _libtdjson
          .lookup<ffi.NativeFunction<TdJsonClientSendNative>>(
            _resolveFuncName('send'),
          )
          .asFunction();

  late final ffi.Pointer<Utf8> Function(ffi.Pointer, ffi.Pointer<Utf8>)
  _clientExecute = _libtdjson
      .lookup<ffi.NativeFunction<TdJsonClientExecuteNative>>(
        _resolveFuncName('execute'),
      )
      .asFunction();

  late final void Function(ffi.Pointer) _clientDestroy = _libtdjson
      .lookup<ffi.NativeFunction<TdJsonClientDestroyNative>>(
        _resolveFuncName('destroy'),
      )
      .asFunction();

  ffi.Pointer createClient() => _clientCreate();

  void send(ffi.Pointer client, String object) {
    final ptr = object.toNativeUtf8();
    try {
      _clientSend(client, ptr);
    } finally {
      malloc.free(ptr);
    }
  }

  /// Non-blocking when [timeout] is `0`. Returns `null` if nothing is ready.
  String? receive(ffi.Pointer client, double timeout) {
    final result = _clientReceive(client, timeout);
    if (result == ffi.nullptr) return null;
    // Copy immediately — TDLib frees the buffer on the next receive/execute.
    return result.toDartString();
  }

  Map<String, dynamic> execute(ffi.Pointer client, String query) {
    final ptr = query.toNativeUtf8();
    try {
      final result = _clientExecute(client, ptr);
      if (result == ffi.nullptr) {
        throw StateError('td_json_client_execute returned null');
      }
      return json.decode(result.toDartString()) as Map<String, dynamic>;
    } finally {
      malloc.free(ptr);
    }
  }

  void destroy(ffi.Pointer client) => _clientDestroy(client);

  String _resolveLibName() {
    if (Platform.isAndroid) {
      return 'libtdjson.so';
    } else if (Platform.isWindows) {
      return 'tdjson.dll';
    } else if (Platform.isLinux) {
      return 'libtdjson.so';
    }
    throw UnsupportedError('Unsupported for current platform');
  }

  String _resolveFuncName(String name) => 'td_json_client_$name';

  ffi.DynamicLibrary _openLib() {
    if (Platform.isMacOS || Platform.isIOS) {
      return ffi.DynamicLibrary.process();
    }

    final libName = _resolveLibName();

    try {
      return ffi.DynamicLibrary.open(libName);
    } on ArgumentError {
      // fall through to local search
    }

    final arch = _nativeArch();
    final nativeDir = 'native/$arch';
    final scriptUri = Platform.script;
    if (scriptUri.scheme == 'file') {
      final scriptDir = File.fromUri(scriptUri).parent;
      for (var dir = scriptDir; dir.path != dir.parent.path; dir = dir.parent) {
        final candidate = File('${dir.path}/$nativeDir/$libName');
        if (candidate.existsSync()) {
          return ffi.DynamicLibrary.open(candidate.path);
        }
        final flat = File('${dir.path}/$libName');
        if (flat.existsSync()) {
          return ffi.DynamicLibrary.open(flat.path);
        }
      }
    }

    throw ArgumentError('Cannot find $libName in any search path');
  }

  String _nativeArch() {
    if (Platform.isAndroid) return 'android';
    if (Platform.isIOS) return 'ios';
    if (Platform.isMacOS) {
      return Platform.version.contains('arm64') ? 'macos-arm64' : 'macos-x64';
    }
    if (Platform.isLinux) return 'linux-x64';
    if (Platform.isWindows) return 'windows-x64';
    throw UnsupportedError('Unknown platform');
  }
}
