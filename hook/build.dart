/// TDLib native build hook.
///
/// Delegates to the manifest-driven native_prebuilt build pipeline.
library;

import 'package:native_prebuilt/hooks.dart';

Future<void> main(List<String> args) {
  return nativePrebuiltBuild(args);
}
