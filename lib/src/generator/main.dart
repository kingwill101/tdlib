import 'package:args/args.dart';
import 'generator.dart';
import 'parser.dart';

const String defaultTlPath = 'tool/schema/td_api.tl';
const String defaultOutputDir = '.';

void main(List<String> arguments) {
  final parser = ArgParser()
    ..addOption(
      'tl-path',
      help: 'Path to td_api.tl file',
      defaultsTo: defaultTlPath,
    )
    ..addOption(
      'output-dir',
      help: 'Root output directory for generated code',
      defaultsTo: defaultOutputDir,
    )
    ..addFlag('help', abbr: 'h', help: 'Show usage', negatable: false)
    ..addFlag('verbose', abbr: 'v', help: 'Verbose output', negatable: false);

  final results = parser.parse(arguments);

  if (results['help'] as bool) {
    print('''TDLib Dart API Generator

Usage: dart run tool/generate.dart [options]

Options:
${parser.usage}
''');
    return;
  }

  final tlPath = results['tl-path'] as String;
  final outputDir = results['output-dir'] as String;
  final verbose = results['verbose'] as bool;

  if (verbose) {
    print('TL path: $tlPath');
    print('Output dir: $outputDir');
  }

  print('Parsing $tlPath...');
  final classes = Parser(tlPath: tlPath).parse();
  print('Found ${classes.length} classes');

  print('Generating...');
  Generator(root: outputDir, classes: classes, verbose: verbose).generate();

  print('Done');
}
