/// Declarative TDLib project definition for native_prebuilt.
///
/// This file defines the complete build configuration for TDLib using
/// the new NativeProject and recipe system.
library;

import 'package:code_assets/code_assets.dart';
import 'package:native_prebuilt/native_prebuilt.dart';

import 'package:tdlib/src/tdlib_source.dart';

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
  prebuilts: _prebuilts,
  sources: [_tdlibSource],
  build: NativeBuildDefinition(
    recipes: {
      OS.linux: _desktopRecipe,
      OS.macOS: _desktopRecipe,
      OS.windows: _windowsRecipe,
      OS.android: _androidRecipe,
      OS.iOS: _iosRecipe,
    },
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
      artifactPath: 'build/td/libtdjson.so',
      outputName: 'libtdjson.so',
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
      artifactPath: 'build/td/tdjson.dll',
      outputName: 'tdjson.dll',
    ),
  ],
);

/// Android recipe with OpenSSL and cross-compilation.
StepBuildRecipe _androidRecipe = StepBuildRecipe(
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
        'ANDROID_ABI': 'arm64-v8a',
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
      artifactPath: 'libtdjson.so',
      outputName: 'libtdjson.so',
    ),
  ],
);

/// iOS recipe with OpenSSL and cross-compilation.
StepBuildRecipe _iosRecipe = StepBuildRecipe(
  steps: [
    CmakeConfigureStep(
      sourceDirectory: '.',
      buildDirectory: 'native-build',
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
    ),
    CommandStep(
      id: 'build-openssl',
      commands: [
        ['make', 'OpenSSL-iOS'],
      ],
      workingDirectory: 'python-apple-support',
    ),
    CmakeConfigureStep(
      sourceDirectory: '.',
      buildDirectory: 'build',
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
      artifactPath: 'install/lib/libtdjson.dylib',
      outputName: 'libtdjson.dylib',
    ),
  ],
);

/// Prebuilt manifest for TDLib releases.
final _prebuilts = PrebuiltManifest(
  schemaVersion: 1,
  release: const GitHubReleaseSource(
    owner: 'kingwill101',
    repository: 'tdlib',
    tag: 'tdlib-v1.8.52',
  ),
  artifacts: {},
);
