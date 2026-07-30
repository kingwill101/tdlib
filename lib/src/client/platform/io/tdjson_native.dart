import 'dart:ffi' as ffi;

/// Native TDLib bindings resolved through Dart code assets.
///
/// The corresponding code-asset ID is the Dart library URI for this file.
@ffi.Native<TdJsonClientCreateNative>(symbol: 'td_json_client_create')
external ffi.Pointer<ffi.Void> tdJsonClientCreate();

@ffi.Native<TdJsonClientReceiveNative>(symbol: 'td_json_client_receive')
external ffi.Pointer<ffi.Char> tdJsonClientReceive(
  ffi.Pointer<ffi.Void> client,
  double timeout,
);

@ffi.Native<TdJsonClientSendNative>(symbol: 'td_json_client_send')
external void tdJsonClientSend(
  ffi.Pointer<ffi.Void> client,
  ffi.Pointer<ffi.Char> request,
);

@ffi.Native<TdJsonClientExecuteNative>(symbol: 'td_json_client_execute')
external ffi.Pointer<ffi.Char> tdJsonClientExecute(
  ffi.Pointer<ffi.Void> client,
  ffi.Pointer<ffi.Char> request,
);

@ffi.Native<TdJsonClientDestroyNative>(symbol: 'td_json_client_destroy')
external void tdJsonClientDestroy(ffi.Pointer<ffi.Void> client);

typedef TdJsonClientCreateNative = ffi.Pointer<ffi.Void> Function();

typedef TdJsonClientReceiveNative =
    ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Void>, ffi.Double);

typedef TdJsonClientSendNative =
    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Char>);

typedef TdJsonClientExecuteNative =
    ffi.Pointer<ffi.Char> Function(
      ffi.Pointer<ffi.Void>,
      ffi.Pointer<ffi.Char>,
    );

typedef TdJsonClientDestroyNative = ffi.Void Function(ffi.Pointer<ffi.Void>);
