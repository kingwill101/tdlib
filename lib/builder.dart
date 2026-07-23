import 'dart:async';
import 'dart:io';

import 'package:build/build.dart';

import 'src/generator/generator.dart';
import 'src/generator/parser.dart';

const _defaultSchemaPath = 'tool/schema/td_api.tl';

Builder tdApiBuilder(BuilderOptions options) {
  final schemaPath =
      options.config['schema_path'] as String? ?? _defaultSchemaPath;
  final packageRoot = _findPackageRoot(schemaPath);
  final schema = File('${packageRoot.path}/$schemaPath').readAsStringSync();
  final generator = Generator(
    root: packageRoot.path,
    classes: Parser.fromSource(schema).parse(),
  );
  return TdApiBuilder(
    schemaPath: schemaPath,
    outputPaths: generator.outputPaths,
  );
}

final class TdApiBuilder implements Builder {
  TdApiBuilder({required this.schemaPath, required List<String> outputPaths})
    : outputPaths = List.unmodifiable(outputPaths);

  final String schemaPath;
  final List<String> outputPaths;

  @override
  Map<String, List<String>> get buildExtensions => {
    '^$schemaPath': outputPaths,
  };

  @override
  Future<void> build(BuildStep buildStep) async {
    final schema = await buildStep.readAsString(buildStep.inputId);
    final temporaryRoot = Directory.systemTemp.createTempSync(
      'tdlib_api_builder_',
    );

    try {
      final generator = Generator(
        root: temporaryRoot.path,
        classes: Parser.fromSource(schema).parse(),
      );
      generator.generate();

      final generatedPaths = generator.outputPaths;
      if (!_samePaths(outputPaths, generatedPaths)) {
        throw StateError(
          'TDLib schema outputs changed while the builder was running. '
          'Restart build_runner so it can declare the new output set.',
        );
      }

      for (final path in outputPaths) {
        final generated = File('${temporaryRoot.path}/$path');
        await buildStep.writeAsString(
          AssetId(buildStep.inputId.package, path),
          generated.readAsStringSync(),
        );
      }
    } finally {
      temporaryRoot.deleteSync(recursive: true);
    }
  }
}

Directory _findPackageRoot(String schemaPath) {
  var directory = Directory.current.absolute;
  while (true) {
    if (File('${directory.path}/$schemaPath').existsSync()) {
      return directory;
    }

    final workspacePackage = Directory('${directory.path}/pkgs/tdlib-dart');
    if (File('${workspacePackage.path}/$schemaPath').existsSync()) {
      return workspacePackage;
    }

    final parent = directory.parent;
    if (parent.path == directory.path) break;
    directory = parent;
  }
  throw StateError('Unable to locate tdlib package containing $schemaPath');
}

bool _samePaths(List<String> left, List<String> right) {
  if (left.length != right.length) return false;
  for (var index = 0; index < left.length; index++) {
    if (left[index] != right[index]) return false;
  }
  return true;
}
