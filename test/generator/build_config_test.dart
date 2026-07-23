import 'dart:io';

import 'package:tdlib/src/generator/build_config.dart';
import 'package:tdlib/src/generator/generator.dart';
import 'package:tdlib/src/generator/parser.dart';
import 'package:test/test.dart';

void main() {
  test('declares every schema-dependent build_runner output', () {
    final directory = Directory.systemTemp.createTempSync(
      'tdlib_build_config_test_',
    );
    addTearDown(() => directory.deleteSync(recursive: true));

    final outputPath = '${directory.path}/build.yaml';
    writeBuildConfig(outputPath: outputPath);
    final config = File(outputPath).readAsStringSync();
    final expected = Generator(
      root: '.',
      classes: Parser(tlPath: 'tool/schema/td_api.tl').parse(),
    ).outputPaths;

    for (final path in expected) {
      expect(config, contains('        - "$path"'));
    }
    expect(config, contains(r'      - "$package$"'));
    expect(config, contains('      - "lib/**"'));
    expect(config, isNot(contains('example/**')));
  });
}
