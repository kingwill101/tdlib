import 'dart:io';

import 'package:args/args.dart';
import 'package:http/http.dart' as http;
import 'package:tdlib/src/android_builder.dart';
import 'package:tdlib/src/generator/build_config.dart';

const _defaultSchemaPath = 'tool/schema/td_api.tl';

Future<void> main(List<String> arguments) async {
  final parser = ArgParser()
    ..addOption(
      'commit',
      help: 'TDLib commit hash or tag',
      defaultsTo: kTDLibCommit,
    )
    ..addOption(
      'schema-path',
      help: 'Path to td_api.tl',
      defaultsTo: _defaultSchemaPath,
    )
    ..addFlag(
      'skip-fetch',
      help: 'Use the existing schema file',
      negatable: false,
    )
    ..addFlag('help', abbr: 'h', help: 'Show usage', negatable: false);
  final results = parser.parse(arguments);

  if (results['help'] as bool) {
    stdout.writeln('''
Update the pinned TDLib schema and regenerate the Dart API.

Usage: dart run tool/update_tdlib.dart [options]

${parser.usage}
''');
    return;
  }

  final commit = results['commit'] as String;
  final schemaPath = results['schema-path'] as String;
  final schemaFile = File(schemaPath);

  if (!(results['skip-fetch'] as bool)) {
    final uri = Uri.parse(
      '$kTDLibRawBaseUrl/$commit/td/generate/scheme/td_api.tl',
    );
    final response = await http.get(uri);
    if (response.statusCode != 200) {
      throw HttpException(
        'Failed to fetch td_api.tl: HTTP ${response.statusCode}',
        uri: uri,
      );
    }
    schemaFile.parent.createSync(recursive: true);
    schemaFile.writeAsStringSync(response.body);
  } else if (!schemaFile.existsSync()) {
    throw StateError('Schema does not exist: ${schemaFile.path}');
  }

  File('$schemaPath.commit').writeAsStringSync('$commit\n');
  writeBuildConfig(schemaPath: schemaPath);
  await _run('dart', ['run', 'build_runner', 'build']);
  stdout.writeln('Generated TDLib Dart API from $commit.');
}

Future<void> _run(String executable, List<String> arguments) async {
  final process = await Process.start(
    executable,
    arguments,
    mode: ProcessStartMode.inheritStdio,
    runInShell: Platform.isWindows,
  );
  final result = await process.exitCode;
  if (result != 0) {
    throw ProcessException(executable, arguments, 'Exited with code $result');
  }
}
