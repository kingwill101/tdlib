import 'dart:io';

import 'package:code_assets/code_assets.dart';
import 'package:logging/logging.dart';

const _kPythonAppleSupportRepo =
    'https://github.com/beeware/Python-Apple-support';
const _kPythonAppleSupportCommit = '6f43aba0ddd5a9f52f39775d0141bd4363614020';

Future<Directory> buildTdlibIos({
  required String workingRoot,
  required String outputDirectory,
  required String sourceDirectory,
  required IOSSdk targetSdk,
  required int targetVersion,
  Logger? logger,
}) async {
  if (!Platform.isMacOS) {
    throw UnsupportedError(
      'iOS source builds require macOS with Xcode installed.',
    );
  }

  final workRoot = Directory(workingRoot)..createSync(recursive: true);
  final outputDir = Directory(outputDirectory)..createSync(recursive: true);
  final nativeBuildDir = Directory('${workRoot.path}/native-build');
  final buildDir = Directory('${workRoot.path}/build');
  final installDir = Directory('${workRoot.path}/install');

  await _prepareSourceForCrossCompile(
    sourceDirectory: sourceDirectory,
    buildDir: nativeBuildDir,
    logger: logger,
  );

  final opensslDir = await _buildOpenSsl(
    sourceDirectory: sourceDirectory,
    workRoot: workRoot,
    targetSdk: targetSdk,
    logger: logger,
  );

  final iosPlatform = targetSdk == IOSSdk.iPhoneOS ? 'OS' : 'SIMULATOR';
  logger?.info('Configuring TDLib with CMake in ${buildDir.path}');
  await _run('cmake', [
    '-G',
    'Unix Makefiles',
    '-DCMAKE_MAKE_PROGRAM=/usr/bin/make',
    '-S',
    sourceDirectory,
    '-B',
    buildDir.path,
    '-DCMAKE_BUILD_TYPE=Release',
    '-DCMAKE_TOOLCHAIN_FILE=$sourceDirectory/CMake/iOS.cmake',
    '-DIOS_PLATFORM=$iosPlatform',
    '-DIOS_DEPLOYMENT_TARGET=$targetVersion',
    '-DCMAKE_INSTALL_PREFIX=${installDir.path}',
    '-DOPENSSL_FOUND=1',
    '-DOPENSSL_CRYPTO_LIBRARY=${opensslDir.path}/lib/libcrypto.a',
    '-DOPENSSL_SSL_LIBRARY=${opensslDir.path}/lib/libssl.a',
    '-DOPENSSL_INCLUDE_DIR=${opensslDir.path}/include',
    '-DOPENSSL_LIBRARIES=${opensslDir.path}/lib/libcrypto.a;${opensslDir.path}/lib/libssl.a',
  ]);

  logger?.info('Building TDLib target install');
  await _run('cmake', [
    '--build',
    buildDir.path,
    '--target',
    'install',
    '--parallel',
    _parallelism().toString(),
  ]);

  final builtLib = File('${installDir.path}/lib/libtdjson.dylib');
  if (!builtLib.existsSync()) {
    throw StateError(
      'CMake completed but libtdjson.dylib was not found under ${installDir.path}',
    );
  }

  await _fixInstallName(builtLib);
  final finalLib = File('${outputDir.path}/libtdjson.dylib');
  if (builtLib.path != finalLib.path) {
    builtLib.copySync(finalLib.path);
  }
  return outputDir;
}

Future<void> _prepareSourceForCrossCompile({
  required String sourceDirectory,
  required Directory buildDir,
  required Logger? logger,
}) async {
  if (File('${buildDir.path}/CMakeCache.txt').existsSync()) {
    return;
  }

  buildDir.createSync(recursive: true);
  logger?.info('Preparing TDLib source for cross-compiling');
  await _run('cmake', [
    '-G',
    'Unix Makefiles',
    '-DCMAKE_MAKE_PROGRAM=/usr/bin/make',
    '-S',
    sourceDirectory,
    '-B',
    buildDir.path,
    '-DCMAKE_BUILD_TYPE=Release',
    '-DTD_GENERATE_SOURCE_FILES=ON',
  ]);
  await _run('cmake', [
    '--build',
    buildDir.path,
    '--target',
    'prepare_cross_compiling',
    '--parallel',
    _parallelism().toString(),
  ]);
}

Future<Directory> _buildOpenSsl({
  required String sourceDirectory,
  required Directory workRoot,
  required IOSSdk targetSdk,
  required Logger? logger,
}) async {
  final supportDir = Directory('${workRoot.path}/Python-Apple-support');
  if (supportDir.existsSync() &&
      !Directory('${supportDir.path}/.git').existsSync()) {
    supportDir.deleteSync(recursive: true);
  }
  if (!supportDir.existsSync()) {
    await _run('git', ['clone', _kPythonAppleSupportRepo, supportDir.path]);
  }
  await _run('git', [
    'checkout',
    _kPythonAppleSupportCommit,
  ], workingDirectory: supportDir.path);
  await _run('git', ['reset', '--hard'], workingDirectory: supportDir.path);

  final patchFile = File(
    '$sourceDirectory/example/ios/Python-Apple-support.patch',
  );
  if (patchFile.existsSync()) {
    await _run('git', [
      'apply',
      patchFile.path,
    ], workingDirectory: supportDir.path);
  }

  final target = targetSdk == IOSSdk.iPhoneOS
      ? 'OpenSSL-iOS'
      : 'OpenSSL-iOS-simulator';
  logger?.info('Building OpenSSL for ${targetSdk.type}');
  await _run('make', [target], workingDirectory: supportDir.path);

  final platformDir = targetSdk == IOSSdk.iPhoneOS ? 'iOS' : 'iOS-simulator';
  final opensslDir = Directory('${supportDir.path}/merge/$platformDir/openssl');
  if (!opensslDir.existsSync()) {
    throw StateError(
      'OpenSSL build completed but ${opensslDir.path} does not exist',
    );
  }
  return opensslDir;
}

Future<void> _fixInstallName(File builtLib) async {
  await _run('install_name_tool', [
    '-id',
    '@rpath/libtdjson.dylib',
    builtLib.path,
  ]);
}

int _parallelism() =>
    Platform.numberOfProcessors <= 1 ? 1 : Platform.numberOfProcessors - 1;

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
