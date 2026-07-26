/// CLI entry point for TDLib native builds.
///
/// Usage:
/// ```bash
/// dart run tool/native_prebuilt.dart plan --target linux-x64
/// dart run tool/native_prebuilt.dart build --target linux-x64 --output built-library
/// dart run tool/native_prebuilt.dart cache-key --target linux-x64
/// dart run tool/native_prebuilt.dart explain-cache --target linux-x64
/// dart run tool/native_prebuilt.dart verify --target linux-x64
/// ```
library;

import 'package:native_prebuilt/native_prebuilt.dart';

Future<void> main(List<String> args) {
  return runNativePrebuiltCli(args);
}
