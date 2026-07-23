import 'package:test/test.dart';
import 'package:tdlib/src/generator/class.dart';
import 'package:tdlib/src/generator/group.dart';
import 'package:tdlib/src/generator/parser.dart';

void main() {
  group('Parser', () {
    late List<Class> classes;

    setUp(() {
      classes = Parser(tlPath: 'test/generator/fixtures/sample.tl').parse();
    });

    test('parses correct number of classes', () {
      expect(classes.length, equals(20));
    });

    test('identifies abstract parent classes', () {
      final parents = classes.where((c) => c.group == Group.classes);
      final parentNames = parents.map((c) => c.name).toSet();
      expect(parentNames, contains('AuthorizationState'));
      expect(parentNames, contains('MessageContent'));
      expect(parentNames, contains('UserType'));
      expect(parentNames, contains('Test'));
    });

    test('identifies concrete object types', () {
      final objects = classes.where((c) => c.group == Group.objects);
      final objectNames = objects.map((c) => c.name).toSet();
      expect(objectNames, contains('AuthorizationStateReady'));
      expect(objectNames, contains('User'));
      expect(objectNames, contains('FormattedText'));
    });

    test('identifies function types', () {
      final functions = classes.where((c) => c.group == Group.functions);
      final functionNames = functions.map((c) => c.name).toSet();
      expect(functionNames, contains('GetUser'));
      expect(functionNames, contains('SendMessage'));
      expect(functionNames, contains('DeleteMessages'));
    });

    test('correctly resolves parent-child relationships', () {
      final ready = classes.firstWhere(
        (c) => c.name == 'AuthorizationStateReady',
      );
      expect(ready.parent, equals('AuthorizationState'));

      final text = classes.firstWhere((c) => c.name == 'MessageText');
      expect(text.parent, equals('MessageContent'));

      final regular = classes.firstWhere((c) => c.name == 'UserTypeRegular');
      expect(regular.parent, equals('UserType'));
    });

    test('marks standalone objects with TdObject parent', () {
      final user = classes.firstWhere((c) => c.name == 'User');
      expect(user.parent, equals('TdObject'));

      final error = classes.firstWhere((c) => c.name == 'TdError');
      expect(error.parent, equals('TdObject'));
    });

    test('parses variable fields correctly', () {
      final getUser = classes.firstWhere((c) => c.name == 'GetUser');
      expect(getUser.variables.length, equals(1));
      expect(getUser.variables[0].name, equals('user_id'));
      expect(getUser.variables[0].type.rawType, equals('int53'));
      expect(getUser.variables[0].isNullable, isFalse);

      final message = classes.firstWhere((c) => c.name == 'MessageText');
      expect(message.variables.length, equals(1));
      expect(message.variables[0].name, equals('text'));
      expect(message.variables[0].type.rawType, equals('formattedText'));
    });

    test('handles vector types', () {
      final deleteMessages = classes.firstWhere(
        (c) => c.name == 'DeleteMessages',
      );
      final messageIds = deleteMessages.variables.firstWhere(
        (v) => v.name == 'message_ids',
      );
      expect(messageIds.type.isListType, isTrue);
      expect(messageIds.type.type, equals('List<int>'));
    });

    test('handles Bool type', () {
      final waitCode = classes.firstWhere(
        (c) => c.name == 'AuthorizationStateWaitCode',
      );
      final isRegistered = waitCode.variables.firstWhere(
        (v) => v.name == 'is_registered',
      );
      expect(isRegistered.type.isDartType, isTrue);
      expect(isRegistered.type.type, equals('bool'));
    });

    test('parses description text', () {
      final authState = classes.firstWhere(
        (c) => c.name == 'AuthorizationState',
      );
      expect(
        authState.description,
        contains('Represents the current authorization state'),
      );
    });

    test('sets return type for function classes', () {
      final getUser = classes.firstWhere((c) => c.name == 'GetUser');
      expect(getUser.returnType, equals('User'));

      final ok = classes.firstWhere((c) => c.name == 'DeleteMessages');
      expect(ok.returnType, equals('Ok'));
    });
  });
}
