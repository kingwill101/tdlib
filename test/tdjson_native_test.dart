import 'dart:ffi' as ffi;
import 'dart:io';

import 'package:tdlib2/src/client/platform/io/tdjson_native.dart' as native;
import 'package:test/test.dart';

void main() {
  test('loads bundled TDLib and invokes a native symbol', () {
    final client = native.tdJsonClientCreate();
    expect(client, isNot(ffi.nullptr));
    native.tdJsonClientDestroy(client);
  });

  test('native_prebuilt asset matches the TDLib binding library', () {
    final config = File('native_prebuilt.yaml').readAsStringSync();

    expect(
      config,
      contains('asset_name: src/client/platform/io/tdjson_native.dart'),
    );

    expect(
      File('lib/src/client/platform/io/tdjson_native.dart').existsSync(),
      isTrue,
    );

    expect(File('native_prebuilt.lock.yaml').existsSync(), isTrue);
    expect(
      File('native_prebuilt.lock.yaml').readAsStringSync(),
      contains("tag: 'tdlib-v1.8.64'"),
    );
  });
}
