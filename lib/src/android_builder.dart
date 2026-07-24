import 'dart:io';

import 'package:logging/logging.dart';

import 'tdlib_source.dart';

const kOpenSSLVersion = 'OpenSSL_1_1_1w';
const kOpenSSLUrl =
    'https://github.com/openssl/openssl/archive/refs/tags/$kOpenSSLVersion.tar.gz';

String resolveNdkPath() {
  final ndkHome = Platform.environment['ANDROID_NDK_HOME'];
  if (ndkHome != null && Directory(ndkHome).existsSync()) return ndkHome;

  final androidHome =
      Platform.environment['ANDROID_HOME'] ??
      Platform.environment['ANDROID_SDK_ROOT'] ??
      '${Platform.environment['HOME']}/Android/Sdk';
  final ndkDir = Directory('$androidHome/ndk');
  if (ndkDir.existsSync()) {
    final versions =
        ndkDir.listSync().whereType<Directory>().map((d) => d.path).toList()
          ..sort();
    if (versions.isNotEmpty) return versions.last;
  }

  throw StateError(
    'Android NDK not found. Set ANDROID_NDK_HOME or install via SDK Manager.',
  );
}

Future<Directory> buildTdlibAndroid({
  required String workingRoot,
  required String outputDirectory,
  required String abi,
  required int apiLevel,
  String? ndkPath,
  String? sourceDirectory,
  Logger? logger,
}) async {
  final ndk = ndkPath ?? resolveNdkPath();
  final tdlibSrc = Directory(sourceDirectory ?? '$workingRoot/source');
  final exampleDir = Directory('${tdlibSrc.path}/example/android');
  final cacheDir = Directory('$workingRoot/android');
  final outputDir = Directory(outputDirectory);
  cacheDir.createSync(recursive: true);

  logger?.info('NDK: $ndk');

  // Step 1: Ensure TDLib source is available
  if (sourceDirectory == null &&
      !Directory('${tdlibSrc.path}/td').existsSync() &&
      !File('${tdlibSrc.path}/CMakeLists.txt').existsSync()) {
    logger?.info('Cloning TDLib (commit $kTDLibCommit)...');
    await _run('git', ['clone', '--depth', '1', kTDLibRepo, tdlibSrc.path]);
    await _run('git', [
      'checkout',
      kTDLibCommit,
    ], workingDirectory: tdlibSrc.path);
  }

  // Step 2: Build OpenSSL for target ABI
  final opensslDir = Directory('${cacheDir.path}/openssl');
  final abiDir = Directory('${opensslDir.path}/$abi');
  if (!File('${abiDir.path}/lib/libcrypto.a').existsSync()) {
    await _buildOpenSSL(ndk, abi, apiLevel, opensslDir, cacheDir, logger);
  } else {
    logger?.info('OpenSSL already built for $abi');
  }

  // Step 3: Generate TDLib source files (native cmake pass)
  final nativeGenDir = Directory('${cacheDir.path}/build-native-JSON');
  if (!nativeGenDir.existsSync() ||
      !File(
        '${nativeGenDir.path}/td/generate/auto/td/telegram/td_api.h',
      ).existsSync()) {
    logger?.info('Generating TDLib source files...');
    nativeGenDir.createSync(recursive: true);
    await _run('cmake', [
      '-DTD_GENERATE_SOURCE_FILES=ON',
      '-DTD_ANDROID_JSON=ON',
      exampleDir.path,
    ], workingDirectory: nativeGenDir.path);
    await _run('cmake', ['--build', '.'], workingDirectory: nativeGenDir.path);
  }

  // Step 4: Cross-compile TDLib for target ABI
  logger?.info('Building TDLib for $abi...');
  final buildDir = Directory('${cacheDir.path}/build-$abi-JSON');
  buildDir.createSync(recursive: true);
  final abiApi = apiForAbi(abi, ndk);

  await _run('cmake', [
    '-DCMAKE_TOOLCHAIN_FILE=$ndk/build/cmake/android.toolchain.cmake',
    '-DOPENSSL_ROOT_DIR=${opensslDir.path}/$abi',
    '-DCMAKE_BUILD_TYPE=RelWithDebInfo',
    '-GNinja',
    '-DANDROID_ABI=$abi',
    '-DANDROID_STL=c++_static',
    '-DANDROID_PLATFORM=android-$abiApi',
    '-DTD_ANDROID_JSON=ON',
    exampleDir.path,
  ], workingDirectory: buildDir.path);
  await _run('cmake', [
    '--build',
    '.',
    '--target',
    'tdjson',
  ], workingDirectory: buildDir.path);

  // Step 5: Strip and copy
  final libFile = File('${buildDir.path}/td/libtdjson.so');
  if (!libFile.existsSync()) {
    throw StateError('libtdjson.so not found for $abi after build');
  }

  outputDir.createSync(recursive: true);
  final outFile = File('${outputDir.path}/libtdjson.so');

  final hostArch = hostArchName();
  final strip = '$ndk/toolchains/llvm/prebuilt/$hostArch/bin/llvm-strip';
  if (File(strip).existsSync()) {
    await _run(strip, [
      '--strip-debug',
      '--strip-unneeded',
      libFile.path,
      '-o',
      outFile.path,
    ]);
  } else {
    libFile.copySync(outFile.path);
  }

  logger?.info('Output: ${outFile.path}');
  return outputDir;
}

Future<void> _buildOpenSSL(
  String ndk,
  String abi,
  int apiLevel,
  Directory opensslDir,
  Directory cacheDir,
  Logger? logger,
) async {
  final srcDir = Directory('${cacheDir.path}/openssl_src');
  srcDir.createSync(recursive: true);

  // Download and extract
  final tarFile = File('${srcDir.path}/$kOpenSSLVersion.tar.gz');
  if (!tarFile.existsSync()) {
    logger?.info('Downloading $kOpenSSLVersion...');
    await _run('curl', ['-#', '-L', kOpenSSLUrl, '-o', tarFile.path]);
  }

  final extractedDir = Directory('${srcDir.path}/openssl-$kOpenSSLVersion');
  if (!extractedDir.existsSync()) {
    await _run('tar', ['xzf', tarFile.path], workingDirectory: srcDir.path);
  }

  final host = hostArchName();
  final configureTarget = opensslTarget(abi);
  final actualApi = apiLevel > 0 ? apiLevel : apiForAbi(abi, '');
  final installDir = Directory('${opensslDir.path}/$abi');
  installDir.createSync(recursive: true);

  // Configure
  logger?.info('Configuring OpenSSL for $abi (API $actualApi)...');
  final env = Map<String, String>.from(Platform.environment)
    ..['ANDROID_NDK_ROOT'] = ndk
    ..['ANDROID_NDK_HOME'] = ndk
    ..['PATH'] =
        '$ndk/toolchains/llvm/prebuilt/$host/bin:${Platform.environment['PATH'] ?? ''}';

  if (abi == 'arm64-v8a' || abi == 'x86_64') {
    env['LDFLAGS'] = '-Wl,-z,max-page-size=16384';
  }

  await _run(
    './Configure',
    [
      configureTarget,
      'no-shared',
      'no-ui',
      '-U__ANDROID_API__',
      '-D__ANDROID_API__=$actualApi',
      '--prefix=${installDir.path}',
    ],
    workingDirectory: extractedDir.path,
    environment: env,
  );

  // Patch Makefile for optimization
  final makefile = File('${extractedDir.path}/Makefile');
  if (makefile.existsSync()) {
    var content = makefile.readAsStringSync();
    content = content.replaceAll(
      '-O3',
      '-O3 -ffunction-sections -fdata-sections',
    );
    makefile.writeAsStringSync(content);
  }

  // Build
  logger?.info('Building OpenSSL for $abi...');
  await _run(
    'make',
    ['depend', '-s'],
    workingDirectory: extractedDir.path,
    environment: env,
  );
  await _run(
    'make',
    ['-j4', '-s'],
    workingDirectory: extractedDir.path,
    environment: env,
  );

  // Install manually
  installDir.createSync(recursive: true);
  Directory('${installDir.path}/lib').createSync(recursive: true);
  for (final lib in ['libcrypto.a', 'libssl.a']) {
    final src = File('${extractedDir.path}/$lib');
    if (src.existsSync()) src.copySync('${installDir.path}/lib/$lib');
  }
  final includeSrc = Directory('${extractedDir.path}/include');
  if (includeSrc.existsSync()) {
    await _run('cp', ['-r', includeSrc.path, '${installDir.path}/include']);
  }

  // Clean source build
  await _run('make', ['distclean'], workingDirectory: extractedDir.path);
}

int apiForAbi(String abi, String ndk) {
  int ndkMajor = 23;
  if (ndk.isNotEmpty) {
    final propsFile = File('$ndk/source.properties');
    if (propsFile.existsSync()) {
      final content = propsFile.readAsStringSync();
      final match = RegExp(r'Pkg\.Revision\s*=\s*(\d+)').firstMatch(content);
      if (match != null) ndkMajor = int.parse(match.group(1)!);
    }
  }
  if (ndkMajor >= 26) return 24;
  if (abi.contains('64')) return 21;
  if (ndkMajor >= 24) return 19;
  return 16;
}

String opensslTarget(String abi) => switch (abi) {
  'arm64-v8a' => 'android-arm64',
  'armeabi-v7a' => 'android-arm',
  'x86_64' => 'android-x86_64',
  'x86' => 'android-x86',
  _ => throw ArgumentError('Unsupported ABI: $abi'),
};

String hostArchName() {
  if (Platform.isLinux) return 'linux-x86_64';
  if (Platform.isMacOS) return 'darwin-x86_64';
  if (Platform.isWindows) return 'windows-x86_64';
  throw UnsupportedError('Unsupported platform');
}

Future<void> _run(
  String executable,
  List<String> arguments, {
  String? workingDirectory,
  Map<String, String>? environment,
}) async {
  final result = await Process.run(
    executable,
    arguments,
    workingDirectory: workingDirectory,
    environment: environment,
  );
  if (result.exitCode != 0) {
    final stdout = result.stdout as String;
    final stderr = result.stderr as String;
    throw ProcessException(
      executable,
      arguments,
      'Exit code ${result.exitCode}\n$stdout\n$stderr',
      result.exitCode,
    );
  }
}
