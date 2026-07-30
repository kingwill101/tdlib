/// TDLib native build hook.
///
/// Delegates to the manifest-driven native_prebuilt build pipeline.
library;

import 'package:native_prebuilt/hooks.dart';

import 'package:tdlib/src/hook/tdlib_prebuilts.g.dart';

Future<void> main(List<String> args) {
  final project = detect();
  if (project == null) {
    throw StateError('Unable to load native_prebuilt.yaml.');
  }
  return nativePrebuiltBuild(
    args,
    project: project.copyWith(prebuilts: tdlibPrebuilts),
  );
}
