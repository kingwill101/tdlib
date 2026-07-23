import 'package:code_builder/code_builder.dart' as cb;
import 'package:dart_style/dart_style.dart';
import 'generator.dart';
import 'class.dart';

class DataClassExtensionsGenerator {
  String generate(List<Class> classes) {
    final List<String> output = <String>[
      "import 'package:tdlib/td_api.dart';",
      "import 'package:collection/collection.dart';",
      '',
      "Iterable<dynamic> tdListFromJson(Object? raw) {",
      "  if (raw == null) return const <dynamic>[];",
      '',
      "  final Iterable<dynamic> items;",
      "  if (raw is List) {",
      "    items = raw;",
      "  } else if (raw is Map) {",
      "    final keys = raw.keys.toList();",
      "    final allIndices = keys.every(",
      "      (key) => int.tryParse(key.toString()) != null,",
      "    );",
      "    if (allIndices) {",
      "      keys.sort(",
      "        (a, b) => int.parse(a.toString()).compareTo(int.parse(b.toString())),",
      "      );",
      "      items = keys.map((key) => raw[key]);",
      "    } else {",
      "      items = <dynamic>[raw];",
      "    }",
      "  } else {",
      "    return const <dynamic>[];",
      "  }",
      '',
      '  return items;',
      '}',
      '',
      "Map<String, dynamic>? tdMapFromJson(Object? raw) {",
      "  if (raw == null) return null;",
      "  if (raw is Map<String, dynamic>) return raw;",
      "  if (raw is Map) {",
      "    return raw.map((key, value) => MapEntry(key.toString(), value));",
      "  }",
      "  return null;",
      "}",
      '',
    ];

    for (Class tdClass in classes) {
      final cb.Extension extension = cb.Extension((
        cb.ExtensionBuilder extensionBuilder,
      ) {
        extensionBuilder.name = '${tdClass.name}DataClassExtensions';
        extensionBuilder.on = cb.TypeReference((b) => b.symbol = tdClass.name);
        extensionBuilder.methods.add(_createEqualityOperatorMethod(tdClass));
        extensionBuilder.methods.add(_createHashCodeMethod(tdClass));
      });

      output.add(
        DartFormatter(
          languageVersion: DartFormatter.latestLanguageVersion,
        ).format('${extension.accept(cb.DartEmitter())}'),
      );
    }

    return output.join('\n');
  }

  cb.Method _createEqualityOperatorMethod(Class tdClass) {
    return cb.Method((cb.MethodBuilder methodBuilder) {
      methodBuilder.name = 'overriddenEquality';
      methodBuilder.returns = cb.refer('bool');
      methodBuilder.requiredParameters.add(
        cb.Parameter((cb.ParameterBuilder parameterBuilder) {
          parameterBuilder.type = cb.refer('Object');
          parameterBuilder.name = 'other';
        }),
      );
      methodBuilder.lambda = true;
      if (tdClass.variables.isEmpty) {
        methodBuilder.body = cb.Code(
          'identical(this, other) ||(other.runtimeType == runtimeType && other is ${tdClass.name})',
        );
      } else {
        methodBuilder.body = cb.Code(
          'identical(this, other) || (other.runtimeType == runtimeType && other is ${tdClass.name} && ${tdClass.variables.map((e) => 'const DeepCollectionEquality().equals(other.${e.name.toVariableName()}, ${e.name.toVariableName()})').join('&& ')})',
        );
      }
    });
  }

  cb.Method _createHashCodeMethod(Class tdClass) {
    return cb.Method((cb.MethodBuilder methodBuilder) {
      methodBuilder.name = 'overriddenHashCode';
      methodBuilder.returns = cb.refer('int');
      methodBuilder.type = cb.MethodType.getter;
      methodBuilder.lambda = true;
      methodBuilder.docs.add('\n');

      if (tdClass.variables.isEmpty) {
        methodBuilder.body = const cb.Code('runtimeType.hashCode');
      } else {
        methodBuilder.body = cb.Code(
          'Object.hashAll([runtimeType, ${tdClass.variables.map((e) => 'const DeepCollectionEquality().hash(${e.name.toVariableName()})').join(', ')}])',
        );
      }
    });
  }
}
