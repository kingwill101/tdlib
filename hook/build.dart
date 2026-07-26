/// TDLib native build hook.
///
/// Uses the declarative [NativeProject] definition to build
/// TDLib for all supported platforms.
library;

import 'package:native_prebuilt/hooks.dart';

Future<void> main(List<String> args) {
  return nativePrebuiltBuild(args);
}
