import 'dart:io';

import 'package:code_assets/code_assets.dart';
import 'package:code_assets/src/code_assets/config.dart';
import 'package:hooks/hooks.dart';
import 'package:native_prebuilt/native_prebuilt.dart';
import 'package:test/test.dart';

void main() {
  test('parses build_from_source from user-defines', () {
    final root = Directory.systemTemp.createTempSync('tdlib_hook_test');
    try {
      final inputBuilder = BuildInputBuilder()
        ..setupShared(
          packageRoot: root.uri,
          packageName: 'tdlib2',
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
      expect(shouldBuildFromSource(input), isFalse);
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
          packageName: 'tdlib2',
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
      expect(shouldBuildFromSource(input), isTrue);
    } finally {
      root.deleteSync(recursive: true);
    }
  });
}
