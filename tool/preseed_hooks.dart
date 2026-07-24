import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:code_assets/code_assets.dart';
import 'package:hooks/hooks.dart';

Future<void> main(List<String> args) async {
  final parser = ArgParser()
    ..addOption(
      'target-os',
      help: 'Target OS (linux, macos, windows, android, ios).',
    )
    ..addOption('target-arch', help: 'Target architecture (x64, arm64, ...).')
    ..addOption(
      'ios-sdk',
      help: 'Target iOS SDK (iphoneos or iphonesimulator).',
    )
    ..addOption('ios-version', defaultsTo: '17')
    ..addOption('macos-version', defaultsTo: '13')
    ..addOption('android-ndk-api', defaultsTo: '30')
    ..addFlag('build-from-source', defaultsTo: false);

  final options = parser.parse(args);
  final osName = options['target-os'] as String?;
  final archName = options['target-arch'] as String?;
  if (osName == null || archName == null) {
    stderr.writeln(parser.usage);
    throw ArgumentError('Missing --target-os or --target-arch');
  }

  final targetOS = OS.fromString(osName);
  final targetArch = Architecture.fromString(archName);
  final sharedRoot = Directory.current.uri.resolve(
    '.dart_tool/hooks_runner/shared/tdlib/',
  );

  final initialInput = _buildInput(
    outputFile: Directory.current.uri.resolve(
      '.dart_tool/hooks_runner/tdlib/_pending/output.json',
    ),
    sharedRoot: sharedRoot,
    targetOS: targetOS,
    targetArch: targetArch,
    options: options,
  );
  final checksum = initialInput.computeChecksum();
  final hookDir = Directory.fromUri(
    Directory.current.uri.resolve('.dart_tool/hooks_runner/tdlib/$checksum/'),
  )..createSync(recursive: true);

  final input = _buildInput(
    outputFile: hookDir.uri.resolve('output.json'),
    sharedRoot: sharedRoot,
    targetOS: targetOS,
    targetArch: targetArch,
    options: options,
  ).build();

  final inputJson = input.json;
  if (targetOS == OS.windows) {
    final vcpkgRoot = Platform.environment['VCPKG_ROOT'];
    if (vcpkgRoot != null && vcpkgRoot.isNotEmpty) {
      inputJson['user_defines'] = {
        'workspace_pubspec': {
          'base_path': Directory.current.uri.toFilePath(),
          'defines': {'vcpkg_root': vcpkgRoot},
        },
      };
    }
  }

  final inputFile = File.fromUri(hookDir.uri.resolve('input.json'));
  inputFile.writeAsStringSync(
    const JsonEncoder.withIndent('  ').convert(inputJson),
  );

  stdout.writeln('Hook input: ${inputFile.path}');
  stdout.writeln(
    'Hook output: ${File.fromUri(hookDir.uri.resolve('output.json')).path}',
  );

  final process = await Process.start(
    Platform.resolvedExecutable,
    ['run', 'hook/build.dart', '--config', inputFile.path],
    runInShell: Platform.isWindows,
    includeParentEnvironment: true,
    environment: Map<String, String>.from(Platform.environment),
  );
  final stdoutFuture = stdout.addStream(process.stdout);
  final stderrFuture = stderr.addStream(process.stderr);
  final exitCode = await process.exitCode;
  await stdoutFuture;
  await stderrFuture;
  if (exitCode != 0) {
    throw ProcessException(
      Platform.resolvedExecutable,
      ['run', 'hook/build.dart', '--config', inputFile.path],
      'Hook build failed',
      exitCode,
    );
  }
}

BuildInputBuilder _buildInput({
  required Uri outputFile,
  required Uri sharedRoot,
  required OS targetOS,
  required Architecture targetArch,
  required ArgResults options,
}) {
  final vcpkgRoot = Platform.environment['VCPKG_ROOT'];
  final userDefines =
      targetOS == OS.windows && vcpkgRoot != null && vcpkgRoot.isNotEmpty
      ? PackageUserDefines(
          workspacePubspec: PackageUserDefinesSource(
            defines: {'vcpkg_root': vcpkgRoot},
            basePath: Directory.current.uri,
          ),
        )
      : null;

  final builder = BuildInputBuilder()
    ..setupShared(
      packageRoot: Directory.current.uri,
      packageName: 'tdlib',
      outputFile: outputFile,
      outputDirectoryShared: sharedRoot,
      userDefines: userDefines,
    )
    ..setupBuildInput();
  builder.config.setupBuild(linkingEnabled: false);

  final iOS = targetOS == OS.iOS
      ? IOSCodeConfig(
          targetSdk: IOSSdk.fromString(
            (options['ios-sdk'] as String?) ?? 'iphoneos',
          ),
          targetVersion: int.parse((options['ios-version'] as String?) ?? '17'),
        )
      : null;
  final macOS = targetOS == OS.macOS
      ? MacOSCodeConfig(
          targetVersion: int.parse(
            (options['macos-version'] as String?) ?? '13',
          ),
        )
      : null;
  final android = targetOS == OS.android
      ? AndroidCodeConfig(
          targetNdkApi: int.parse(
            (options['android-ndk-api'] as String?) ?? '30',
          ),
        )
      : null;

  CodeAssetExtension(
    targetArchitecture: targetArch,
    targetOS: targetOS,
    linkModePreference: LinkModePreference.dynamic,
    iOS: iOS,
    macOS: macOS,
    android: android,
  ).setupBuildInput(builder);
  return builder;
}
