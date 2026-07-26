/// Declarative TDLib project definition for native_prebuilt.
///
/// This file defines the complete build configuration for TDLib using
/// the new NativeProject and recipe system.
library;

import 'package:code_assets/code_assets.dart';
import 'package:native_prebuilt/native_prebuilt.dart';

import 'package:tdlib/src/tdlib_source.dart';
import 'tdlib_prebuilts.g.dart';

/// The TDLib native project definition.
///
/// This replaces the ~500 line hook/build.dart with a declarative
/// configuration that can be used by both the hook and the CLI.
final tdlibProject = NativeProject(
  name: 'tdlib',
  asset: NativeAssetSpec(
    assetName: 'src/tdlib.g.dart',
    libraryStem: 'tdjson',
    linkMode: DynamicLoadingBundled(),
  ),
  prebuilts: tdlibPrebuilts,
  sources: [_tdlibSource],
  build: NativeBuildDefinition(
    recipes: [
      NativeTargetRecipe(
        pattern: NativeTargetPattern(os: OS.linux),
        recipe: _desktopRecipe,
      ),
      NativeTargetRecipe(
        pattern: NativeTargetPattern(os: OS.macOS),
        recipe: _desktopRecipe,
      ),
      NativeTargetRecipe(
        pattern: NativeTargetPattern(os: OS.windows),
        recipe: _windowsRecipe,
      ),
      NativeTargetRecipe(
        pattern: NativeTargetPattern(
          os: OS.android,
          architecture: Architecture.arm,
        ),
        recipe: _androidRecipe(abi: 'armeabi-v7a'),
      ),
      NativeTargetRecipe(
        pattern: NativeTargetPattern(
          os: OS.android,
          architecture: Architecture.arm64,
        ),
        recipe: _androidRecipe(abi: 'arm64-v8a'),
      ),
      NativeTargetRecipe(
        pattern: NativeTargetPattern(
          os: OS.android,
          architecture: Architecture.x64,
        ),
        recipe: _androidRecipe(abi: 'x86_64'),
      ),
      NativeTargetRecipe(
        pattern: NativeTargetPattern(
          os: OS.android,
          architecture: Architecture.ia32,
        ),
        recipe: _androidRecipe(abi: 'x86'),
      ),
      NativeTargetRecipe(
        pattern: NativeTargetPattern(os: OS.iOS),
        recipe: _iosRecipe,
      ),
    ],
  ),
);

/// TDLib source specification.
final _tdlibSource = GitSource(
  repository: Uri.parse(kTDLibRepo),
  revision: kTDLibCommit,
);

/// Desktop recipe for Linux and macOS.
///
/// Uses CMake directly with sccache for fast rebuilds.
StepBuildRecipe _desktopRecipe = StepBuildRecipe(
  steps: [
    CmakeConfigureStep(
      sourceDirectory: '.',
      buildDirectory: 'build',
      defines: {
        'CMAKE_BUILD_TYPE': 'Release',
        'CMAKE_C_COMPILER_LAUNCHER': 'sccache',
        'CMAKE_CXX_COMPILER_LAUNCHER': 'sccache',
      },
    ),
    CmakeBuildStep(buildDirectory: 'build', targets: ['tdjson']),
    ExportArtifactStep(
      id: 'export_tdjson',
      declaration: NativeArtifactDeclaration(
        id: 'tdjson',
        kind: NativeArtifactKind.dynamicLibrary,
        primaryPath: 'build/libtdjson.so',
      ),
    ),
  ],
);

/// Windows recipe using vcpkg for dependencies.
StepBuildRecipe _windowsRecipe = StepBuildRecipe(
  steps: [
    CmakeConfigureStep(
      sourceDirectory: '.',
      buildDirectory: 'build',
      generator: 'Ninja',
      defines: {
        'CMAKE_BUILD_TYPE': 'Release',
        'CMAKE_TOOLCHAIN_FILE': r'VCPKG_ROOT/scripts/buildsystems/vcpkg.cmake',
        'VCPKG_TARGET_TRIPLET': 'x64-windows',
      },
    ),
    CmakeBuildStep(buildDirectory: 'build', targets: ['tdjson']),
    ExportArtifactStep(
      id: 'export_tdjson',
      declaration: NativeArtifactDeclaration(
        id: 'tdjson',
        kind: NativeArtifactKind.dynamicLibrary,
        primaryPath: 'build/td/tdjson.dll',
      ),
    ),
  ],
);

/// Android recipe with OpenSSL and cross-compilation.
StepBuildRecipe _androidRecipe({required String abi}) {
  return StepBuildRecipe(
    steps: [
      CmakeConfigureStep(
        sourceDirectory: 'example/android',
        buildDirectory: 'build-native',
        defines: {'TD_GENERATE_SOURCE_FILES': 'ON', 'TD_ANDROID_JSON': 'ON'},
      ),
      CmakeBuildStep(buildDirectory: 'build-native'),
      CmakeConfigureStep(
        sourceDirectory: 'example/android',
        buildDirectory: 'build',
        defines: {
          'CMAKE_BUILD_TYPE': 'RelWithDebInfo',
          'ANDROID_ABI': abi,
          'ANDROID_STL': 'c++_static',
          'ANDROID_PLATFORM': 'android-24',
          'TD_ANDROID_JSON': 'ON',
          'GNinja': '',
        },
      ),
      CmakeBuildStep(buildDirectory: 'build', targets: ['tdjson']),
      StripStep(
        id: 'strip',
        inputPath: 'build/td/libtdjson.so',
        outputPath: 'libtdjson.so',
      ),
      ExportArtifactStep(
        id: 'export_tdjson',
        declaration: NativeArtifactDeclaration(
          id: 'tdjson',
          kind: NativeArtifactKind.dynamicLibrary,
          primaryPath: 'libtdjson.so',
        ),
      ),
    ],
  );
}

/// iOS recipe with OpenSSL and cross-compilation.
StepBuildRecipe _iosRecipe = StepBuildRecipe(
  steps: [
    CmakeConfigureStep(
      sourceDirectory: '.',
      buildDirectory: 'native-build',
      generator: 'Ninja',
      defines: {'TD_GENERATE_SOURCE_FILES': 'ON'},
    ),
    CmakeBuildStep(
      buildDirectory: 'native-build',
      targets: ['prepare_cross_compiling'],
    ),
    GitCheckoutStep(
      id: 'checkout-python-apple-support',
      repository: 'https://github.com/beeware/Python-Apple-support',
      revision: '6f43aba0ddd5a9f52f39775d0141bd4363614020',
      targetDirectory: 'python-apple-support',
    ),
    CommandStep(
      id: 'build-openssl',
      commands: [
        ['/usr/bin/make', 'OpenSSL-iOS'],
      ],
      workingDirectory: 'python-apple-support',
    ),
    CmakeConfigureStep(
      sourceDirectory: '.',
      buildDirectory: 'build',
      generator: 'Ninja',
      toolchainFile: 'CMake/iOS.cmake',
      defines: {
        'CMAKE_BUILD_TYPE': 'Release',
        'IOS_PLATFORM': 'OS',
        'IOS_DEPLOYMENT_TARGET': '17',
        'OPENSSL_FOUND': '1',
      },
    ),
    CmakeBuildStep(buildDirectory: 'build', targets: ['install']),
    CommandStep(
      id: 'fix-install-name',
      commands: [
        [
          'install_name_tool',
          '-id',
          '@rpath/libtdjson.dylib',
          'install/lib/libtdjson.dylib',
        ],
      ],
    ),
    ExportArtifactStep(
      id: 'export_tdjson',
      declaration: NativeArtifactDeclaration(
        id: 'tdjson',
        kind: NativeArtifactKind.dynamicLibrary,
        primaryPath: 'install/lib/libtdjson.dylib',
      ),
    ),
  ],
);

