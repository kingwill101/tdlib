import 'dart:io';

import 'generator.dart';
import 'parser.dart';

void writeBuildConfig({
  String schemaPath = 'tool/schema/td_api.tl',
  String outputPath = 'build.yaml',
}) {
  final classes = Parser(tlPath: schemaPath).parse();
  final outputs = Generator(root: '.', classes: classes).outputPaths;
  final buffer = StringBuffer()
    ..writeln('targets:')
    ..writeln(r'  $default:')
    ..writeln('    sources:')
    ..writeln(r'      - "$package$"')
    ..writeln('      - "lib/**"')
    ..writeln('      - "tool/**"')
    ..writeln('      - "test/**"')
    ..writeln()
    ..writeln('builders:')
    ..writeln('  td_api:')
    ..writeln('    import: "package:tdlib2/builder.dart"')
    ..writeln('    builder_factories: ["tdApiBuilder"]')
    ..writeln('    build_extensions:')
    ..writeln('      "^$schemaPath":');

  for (final output in outputs) {
    buffer.writeln('        - "$output"');
  }

  buffer
    ..writeln('    auto_apply: root_package')
    ..writeln('    build_to: source')
    ..writeln('    defaults:')
    ..writeln('      generate_for:')
    ..writeln('        - "$schemaPath"');

  File(outputPath).writeAsStringSync(buffer.toString());
}
