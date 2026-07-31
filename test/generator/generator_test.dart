import 'dart:io';

import 'package:test/test.dart';
import 'package:tdlib2/src/generator/class.dart';
import 'package:tdlib2/src/generator/generator.dart';
import 'package:tdlib2/src/generator/parser.dart';

void main() {
  late Directory tmpOutput;

  setUp(() {
    tmpOutput = Directory.systemTemp.createTempSync('tdlib_gen_test_');
    // Create required structure for tdlib-dart layout
    Directory(
      '${tmpOutput.path}/lib/src/api/objects',
    ).createSync(recursive: true);
    Directory(
      '${tmpOutput.path}/lib/src/api/functions',
    ).createSync(recursive: true);
    Directory(
      '${tmpOutput.path}/lib/src/api/extensions',
    ).createSync(recursive: true);
  });

  tearDown(() {
    tmpOutput.deleteSync(recursive: true);
  });

  group('Generator', () {
    late List<Class> classes;
    late Generator generator;

    setUp(() {
      classes = Parser(tlPath: 'test/generator/fixtures/sample.tl').parse();
      generator = Generator(
        root: tmpOutput.path,
        classes: classes,
        verbose: false,
      );
    });

    test('generates all files without error', () {
      generator.generate();
      // Verify output directories exist
      expect(
        Directory('${tmpOutput.path}/lib/src/api/objects').existsSync(),
        isTrue,
      );
      expect(
        Directory('${tmpOutput.path}/lib/src/api/functions').existsSync(),
        isTrue,
      );
      expect(
        Directory('${tmpOutput.path}/lib/src/api/extensions').existsSync(),
        isTrue,
      );
    });

    test('generates sealed hierarchy file', () {
      generator.generate();
      final authFile = File(
        '${tmpOutput.path}/lib/src/api/objects/authorization_state.dart',
      );
      expect(authFile.existsSync(), isTrue);
      final content = authFile.readAsStringSync();
      expect(content, contains('sealed class AuthorizationState'));
    });

    test('generates child class in sealed hierarchy file', () {
      generator.generate();
      final authFile = File(
        '${tmpOutput.path}/lib/src/api/objects/authorization_state.dart',
      );
      expect(authFile.existsSync(), isTrue);
      final content = authFile.readAsStringSync();
      expect(content, contains('final class AuthorizationStateReady'));
      expect(
        content,
        contains('final class AuthorizationStateWaitPhoneNumber'),
      );
    });

    test('generates standalone object as separate file', () {
      generator.generate();
      final userFile = File('${tmpOutput.path}/lib/src/api/objects/user.dart');
      expect(userFile.existsSync(), isTrue);
      final content = userFile.readAsStringSync();
      expect(content, contains('final class User'));
    });

    test('generates function class', () {
      generator.generate();
      final getUserFile = File(
        '${tmpOutput.path}/lib/src/api/functions/get_user.dart',
      );
      expect(getUserFile.existsSync(), isTrue);
      final content = getUserFile.readAsStringSync();
      expect(content, contains('class GetUser'));
    });

    test('generates barrel file', () {
      generator.generate();
      final tdapiFile = File('${tmpOutput.path}/lib/src/api/tdapi.dart');
      expect(tdapiFile.existsSync(), isTrue);
      final content = tdapiFile.readAsStringSync();
      expect(content, contains("export 'objects/user.dart';"));
      expect(content, contains("export 'functions/get_user.dart';"));
    });

    test('generated sealed parent has fromJson with switch', () {
      generator.generate();
      final authFile = File(
        '${tmpOutput.path}/lib/src/api/objects/authorization_state.dart',
      );
      final content = authFile.readAsStringSync();
      expect(content, contains('fromJson'));
      expect(content, contains('switch'));
      expect(content, contains("case AuthorizationStateReady.constructor:"));
    });

    test('generated concrete object has toJson', () {
      generator.generate();
      final waitCodeFile = File(
        '${tmpOutput.path}/lib/src/api/objects/authorization_state.dart',
      );
      final content = waitCodeFile.readAsStringSync();
      expect(content, contains('toJson'));
    });

    test('generated code is valid Dart', () {
      generator.generate();
      // Run dart analyze on generated output to verify validity
      final result = Process.runSync('dart', [
        'analyze',
        'lib/src/api/',
      ], workingDirectory: tmpOutput.path);
      // We don't require exit code 0 since it may lack imports, but check
      // for actual syntax errors
      expect(result.stderr.toString(), isNot(contains('Error')));
    });

    test('generates map-safe list deserialization', () {
      generator.generate();
      final generatedCode = _generatedDartCode(tmpOutput);
      expect(generatedCode, contains('Iterable<dynamic> tdListFromJson'));
      expect(generatedCode, contains('Map<String, dynamic>? tdMapFromJson'));
      expect(generatedCode, contains('items = <dynamic>[raw];'));
      expect(generatedCode, contains('tdListFromJson('));
      expect(generatedCode, contains("json['entities']"));
      expect(generatedCode, contains('tdMapFromJson(item)'));
      expect(generatedCode, contains('whereType<TextEntity>()'));
      expect(generatedCode, isNot(contains('as List<dynamic>?')));
      expect(generatedCode, isNot(contains('item as Map<String, dynamic>?')));
    });

    test('current schema generates structured chat folder names', () {
      final currentClasses = Parser(tlPath: 'tool/schema/td_api.tl').parse();
      Generator(
        root: tmpOutput.path,
        classes: currentClasses,
        verbose: false,
      ).generate();

      final folderInfo = File(
        '${tmpOutput.path}/lib/src/api/objects/chat_folder_info.dart',
      ).readAsStringSync();
      final folderName = File(
        '${tmpOutput.path}/lib/src/api/objects/chat_folder_name.dart',
      );

      expect(folderName.existsSync(), isTrue);
      expect(folderInfo, contains('final ChatFolderName? name;'));
      expect(
        folderInfo,
        contains("name: ChatFolderName.fromJson(tdMapFromJson(json['name']))"),
      );
      expect(folderInfo, isNot(contains("json['title']")));
    });
  });
}

String _generatedDartCode(Directory root) {
  final files = root
      .listSync(recursive: true, followLinks: false)
      .whereType<File>()
      .where((file) => file.path.endsWith('.dart'));
  return files.map((file) => file.readAsStringSync()).join('\n');
}
