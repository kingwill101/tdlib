import 'dart:ffi';
import 'dart:io';

import 'package:code_assets/code_assets.dart';
import 'package:hooks/hooks.dart';
import 'package:logging/logging.dart';
import 'package:native_prebuilt/hooks.dart';
import 'package:tdlib/src/android_builder.dart' as android;
import 'package:tdlib/src/ios_builder.dart' as ios;
import 'package:tdlib/src/tdlib_source.dart';
import 'package:tdlib/src/hook/tdlib_prebuilts.g.dart';

Future<void> main(List<String> args) async {
  Logger.root.level = Level.INFO;
  Logger.root.onRecord.listen((record) {
    stderr.writeln('[tdlib] ${record.level.name}: ${record.message}');
  });

  await build(args, (input, output) async {
    if (!input.config.buildCodeAssets) return;

    final os = input.config.code.targetOS;
    final arch = input.config.code.targetArchitecture;
    final libName = _libName(os);
    final buildFromSource = shouldBuildFromSource(input);

    await PrebuiltCodeAssetBuilder(
      assetName: 'src/tdlib.g.dart',
      libraryStem: 'tdjson',
      manifest: tdlibPrebuilts,
      linkModeResolver: (_) => DynamicLoadingBundled(),
      sourceFallback: SourceFallback(
        sources: [
          GitSource(repository: Uri.parse(kTDLibRepo), revision: kTDLibCommit),
        ],
        builder: CallbackSourceBuilder(
          callback:
              ({
                required source,
                required input,
                required output,
                required logger,
              }) async {
                final builtLib = await _buildTdlibFromSource(
                  input: input,
                  os: os,
                  arch: arch,
                  libName: libName,
                  sourceDirectory: source.directory,
                  logger: logger,
                );
                _registerTdlibAsset(input, output, builtLib);
              },
        ),
      ),
      resolvers: buildFromSource ? const <PrebuiltResolver>[] : null,
    ).run(input: input, output: output, logger: Logger.root);
  });
}

bool shouldBuildFromSource(HookInput input) {
  final buildFromSource = input.userDefines['build_from_source'];
  if (buildFromSource is! bool?) {
    throw const FormatException(
      'hooks.user_defines.tdlib.build_from_source must be a boolean.',
    );
  }
  return buildFromSource ?? false;
}

void _registerTdlibAsset(
  HookInput input,
  BuildOutputBuilder output,
  File library,
) {
  output.assets.code.add(
    CodeAsset(
      package: input.packageName,
      name: 'src/tdlib.g.dart',
      linkMode: DynamicLoadingBundled(),
      file: library.uri,
    ),
  );
}

Future<File> _buildTdlibFromSource({
  required HookInput input,
  required OS os,
  required Architecture arch,
  required String libName,
  required Directory sourceDirectory,
  required Logger? logger,
}) async {
  if (os == OS.android) {
    final abi = _androidAbi(arch);
    final apiLevel = input.config.code.android.targetNdkApi;
    final ndkPath = _resolveNdkPath(input);

    logger?.info('Building for Android $abi (API $apiLevel)...');
    if (ndkPath != null) {
      logger?.info('Using resolved NDK: $ndkPath');
    }

    final workRoot = _cacheRoot('android-$abi-api$apiLevel');
    final artifactDir = Directory.fromUri(
      input.outputDirectory.resolve('artifacts/'),
    );
    final outDir = await android.buildTdlibAndroid(
      workingRoot: workRoot.path,
      outputDirectory: artifactDir.path,
      abi: abi,
      apiLevel: apiLevel,
      ndkPath: ndkPath,
      sourceDirectory: sourceDirectory.path,
      logger: logger,
    );

    final builtLib = File('${outDir.path}/$libName');
    if (builtLib.existsSync()) {
      logger?.info('Registered code asset: ${builtLib.path}');
      return builtLib;
    }
    throw StateError('Build produced no output at ${builtLib.path}');
  }

  if (os == OS.iOS) {
    final iosConfig = input.config.code.iOS;

    final workRoot = _cacheRoot(
      'ios-${iosConfig.targetSdk.type}-v${iosConfig.targetVersion}',
    );
    final artifactDir = Directory.fromUri(
      input.outputDirectory.resolve('artifacts/'),
    );
    final outDir = await ios.buildTdlibIos(
      workingRoot: workRoot.path,
      outputDirectory: artifactDir.path,
      sourceDirectory: sourceDirectory.path,
      targetSdk: iosConfig.targetSdk,
      targetVersion: iosConfig.targetVersion,
      logger: logger,
    );

    final builtLib = File('${outDir.path}/$libName');
    if (builtLib.existsSync()) {
      logger?.info('Registered code asset: ${builtLib.path}');
      return builtLib;
    }
    throw StateError('Build produced no output at ${builtLib.path}');
  }

  if (!_canBuildOnHost(os, arch)) {
    throw UnsupportedError(
      'No prebuilt TDLib library found for ${os.name}/${arch.name}, and '
      'the TDLib hook only builds from source for supported host targets. '
      'Provide ${_nativeDir(os, arch)}/$libName or build it outside the hook.',
    );
  }

  return _buildTdlibWithCMake(
    input: input,
    targetOS: os,
    libName: libName,
    sourceDir: sourceDirectory,
    workingRoot: _cacheRoot('${os.name}-${arch.name}'),
  );
}

Future<File> _buildTdlibWithCMake({
  required HookInput input,
  required OS targetOS,
  required String libName,
  required Directory sourceDir,
  required Directory workingRoot,
}) async {
  final buildDir = Directory('${workingRoot.path}/build');
  buildDir.createSync(recursive: true);

  Logger.root.info('Configuring TDLib with CMake in ${buildDir.path}');
  final cmakeArgs = <String>[
    '-S',
    sourceDir.path,
    '-B',
    buildDir.path,
    '-DCMAKE_BUILD_TYPE=Release',
    '-DCMAKE_C_COMPILER_LAUNCHER=sccache',
    '-DCMAKE_CXX_COMPILER_LAUNCHER=sccache',
  ];
  if (targetOS == OS.windows) {
    cmakeArgs.addAll(['-G', 'Ninja']);
    final vcpkgRoot = _resolveVcpkgRoot(input);
    if (vcpkgRoot == null || vcpkgRoot.isEmpty) {
      throw UnsupportedError(
        'Windows source builds require vcpkg.exe to be available on PATH, '
        'VCPKG_ROOT to be set, or vcpkg_root to be supplied as a '
        'hook user define.',
      );
    }
    cmakeArgs.addAll([
      '-DCMAKE_TOOLCHAIN_FILE=$vcpkgRoot/scripts/buildsystems/vcpkg.cmake',
      '-DVCPKG_TARGET_TRIPLET=${Platform.environment['VCPKG_TARGET_TRIPLET'] ?? 'x64-windows'}',
      '-DVCPKG_INSTALLED_DIR=${workingRoot.path}/vcpkg_installed',
    ]);
  }
  await _runCmakeConfigure(buildDir: buildDir, cmakeArgs: cmakeArgs);

  Logger.root.info('Building TDLib target tdjson');
  await _run('cmake', [
    '--build',
    buildDir.path,
    '--target',
    'tdjson',
    '--parallel',
    _parallelism().toString(),
  ]);

  final builtLib = _findBuiltLibrary(buildDir, libName);
  if (builtLib == null) {
    throw StateError(
      'CMake completed but $libName was not found under ${buildDir.path}',
    );
  }
  return _copyToHookOutput(input, builtLib, libName);
}

String? _resolveVcpkgRoot(HookInput input) {
  final define = input.userDefines['vcpkg_root'];
  if (define is String && define.isNotEmpty) {
    return define;
  }

  final environmentRoot = Platform.environment['VCPKG_ROOT'];
  if (environmentRoot != null && environmentRoot.isNotEmpty) {
    return environmentRoot;
  }

  if (Platform.isWindows) {
    final result = Process.runSync(
      'where.exe',
      ['vcpkg.exe'],
      runInShell: true,
    );

    if (result.exitCode == 0) {
      final candidates = result.stdout
          .toString()
          .split(RegExp(r'\r?\n'))
          .map((path) => path.trim())
          .where((path) => path.isNotEmpty);

      for (final candidate in candidates) {
        final executable = File(candidate);
        if (!executable.existsSync()) {
          continue;
        }

        final root = executable.parent;
        final toolchain = File(
          '${root.path}'
          '${Platform.pathSeparator}scripts'
          '${Platform.pathSeparator}buildsystems'
          '${Platform.pathSeparator}vcpkg.cmake',
        );

        if (toolchain.existsSync()) {
          Logger.root.info(
            'Resolved vcpkg from PATH: ${root.path}',
          );
          return root.path;
        }
      }
    }
  }

  return null;
}

String? _resolveNdkPath(HookInput input) {
  final cCompiler = input.config.code.cCompiler;
  if (cCompiler == null) return null;

  final compilerPath = cCompiler.compiler.toFilePath();
  final toolchainsIndex = compilerPath.indexOf('/toolchains/');
  if (toolchainsIndex > 0) {
    return compilerPath.substring(0, toolchainsIndex);
  }
  return null;
}

File _copyToHookOutput(HookInput input, File builtLib, String libName) {
  final artifactDir = Directory.fromUri(
    input.outputDirectory.resolve('artifacts/'),
  );
  artifactDir.createSync(recursive: true);
  final artifact = File('${artifactDir.path}/$libName');
  if (builtLib.path != artifact.path) {
    builtLib.copySync(artifact.path);
  }
  return artifact;
}

File? _findBuiltLibrary(Directory buildDir, String libName) {
  if (!buildDir.existsSync()) return null;

  for (final entity in buildDir.listSync(recursive: true)) {
    if (entity is! File && entity is! Link) continue;
    if (_fileName(entity.path).toLowerCase() == libName.toLowerCase()) {
      return File(entity.path);
    }
  }
  return null;
}

bool _canBuildOnHost(OS targetOS, Architecture targetArch) {
  final hostOS = switch (Platform.operatingSystem) {
    'linux' => OS.linux,
    'macos' => OS.macOS,
    'windows' => OS.windows,
    _ => null,
  };
  if (targetOS == OS.iOS) {
    return hostOS == OS.macOS;
  }
  return targetOS == hostOS && targetArch == _hostArchitecture();
}

Architecture? _hostArchitecture() {
  final abi = Abi.current().toString().toLowerCase();
  if (abi.contains('arm64')) return Architecture.arm64;
  if (abi.contains('arm')) return Architecture.arm;
  if (abi.contains('ia32')) return Architecture.ia32;
  if (abi.contains('x64')) return Architecture.x64;
  return null;
}

Future<void> _runCmakeConfigure({
  required Directory buildDir,
  required List<String> cmakeArgs,
}) async {
  try {
    await _run('cmake', cmakeArgs);
  } on ProcessException catch (error) {
    final details = error.toString();
    if (!details.contains('does not match the source') &&
        !details.contains('Does not match the generator')) {
      rethrow;
    }

    Logger.root.warning(
      'CMake cache source mismatch detected; clearing ${buildDir.path} and retrying.',
    );
    if (buildDir.existsSync()) {
      buildDir.deleteSync(recursive: true);
    }
    buildDir.createSync(recursive: true);
    await _run('cmake', cmakeArgs);
  }
}

Future<void> _run(
  String executable,
  List<String> arguments, {
  String? workingDirectory,
}) async {
  final result = await Process.run(
    executable,
    arguments,
    workingDirectory: workingDirectory,
    runInShell: Platform.isWindows,
  );
  if (result.exitCode != 0) {
    throw ProcessException(
      executable,
      arguments,
      'Command failed with exit code ${result.exitCode}\n'
      'stdout:\n${result.stdout}\n'
      'stderr:\n${result.stderr}',
      result.exitCode,
    );
  }
}

int _parallelism() =>
    Platform.numberOfProcessors <= 1 ? 1 : Platform.numberOfProcessors - 1;

String _fileName(String path) {
  final normalized = path.replaceAll(r'\', '/');
  final separator = normalized.lastIndexOf('/');
  return separator == -1 ? normalized : normalized.substring(separator + 1);
}

String _androidAbi(Architecture arch) => switch (arch) {
  Architecture.arm64 => 'arm64-v8a',
  Architecture.arm => 'armeabi-v7a',
  Architecture.x64 => 'x86_64',
  Architecture.ia32 => 'x86',
  _ => throw ArgumentError('Unsupported Android arch: $arch'),
};

String _libName(OS os) => switch (os) {
  OS.android => 'libtdjson.so',
  OS.linux => 'libtdjson.so',
  OS.macOS || OS.iOS => 'libtdjson.dylib',
  OS.windows => 'tdjson.dll',
  _ => 'libtdjson.so',
};

String _nativeDir(OS os, Architecture arch) => switch (os) {
  OS.android => 'native/android/${_androidAbi(arch)}',
  OS.iOS => 'native/ios',
  OS.linux => 'native/linux-x64',
  OS.macOS =>
    arch == Architecture.arm64 ? 'native/macos-arm64' : 'native/macos-x64',
  OS.windows => 'native/windows-x64',
  _ => 'native/other',
};

Directory _cacheRoot(String key) => Directory.fromUri(
  Directory.current.uri.resolve('.dart_tool/tdlib-cmake-cache/$key'),
);
