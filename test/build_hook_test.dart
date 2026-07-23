import 'dart:io';

import 'package:code_assets/code_assets.dart';
import 'package:code_assets/src/code_assets/config.dart';
import 'package:hooks/hooks.dart';
import 'package:test/test.dart';

import '../hook/build.dart' as tdlib_hook;

void main() {
  test('parses build_from_source from user-defines', () {
    final root = Directory.systemTemp.createTempSync('tdlib_hook_test');
    try {
      final inputBuilder = BuildInputBuilder()
        ..setupShared(
          packageRoot: root.uri,
          packageName: 'tdlib',
          outputFile: root.uri.resolve('output.json'),
          outputDirectoryShared: root.uri.resolve('shared/'),
        )
        ..setupBuildInput()
        ..config.setupBuild(linkingEnabled: false)
        ..config.addBuildAssetTypes(['code_assets/code'])
        ..config.setupCode(
          targetArchitecture: Architecture.x64,
          targetOS: OS.linux,
          linkModePreference: LinkModePreference.dynamic,
        );

      final input = inputBuilder.build();
      expect(tdlib_hook.shouldBuildFromSource(input), isFalse);
    } finally {
      root.deleteSync(recursive: true);
    }
  });

  test('parses build_from_source=true from user-defines', () {
    final root = Directory.systemTemp.createTempSync('tdlib_hook_test');
    try {
      final inputBuilder = BuildInputBuilder()
        ..setupShared(
          packageRoot: root.uri,
          packageName: 'tdlib',
          outputFile: root.uri.resolve('output.json'),
          outputDirectoryShared: root.uri.resolve('shared/'),
          userDefines: PackageUserDefines(
            workspacePubspec: PackageUserDefinesSource(
              defines: {'build_from_source': true},
              basePath: root.uri,
            ),
          ),
        )
        ..setupBuildInput()
        ..config.setupBuild(linkingEnabled: false)
        ..config.addBuildAssetTypes(['code_assets/code'])
        ..config.setupCode(
          targetArchitecture: Architecture.x64,
          targetOS: OS.linux,
          linkModePreference: LinkModePreference.dynamic,
        );

      final input = inputBuilder.build();
      expect(tdlib_hook.shouldBuildFromSource(input), isTrue);
    } finally {
      root.deleteSync(recursive: true);
    }
  });

  test('registers the Linux TDLib prebuilt for the generated bindings', () async {
    await testCodeBuildHook(
      mainMethod: tdlib_hook.main,
      targetOS: OS.linux,
      check: (input, output) {
        expect(output.assets.code, hasLength(1));

        final asset = output.assets.code.single;
        expect(asset.id, 'package:tdlib/src/tdlib.g.dart');
        expect(asset.linkMode, isA<DynamicLoadingBundled>());
        expect(File.fromUri(asset.file!).existsSync(), isTrue);
        expect(File.fromUri(asset.file!).readAsBytesSync().sublist(0, 4), [0x7F, 0x45, 0x4C, 0x46]);
      },
    );
  });
}
