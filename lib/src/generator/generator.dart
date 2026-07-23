import 'dart:io';

import 'package:collection/collection.dart';
import 'package:code_builder/code_builder.dart' as cb;
import 'package:dart_style/dart_style.dart';
import 'class.dart';
import 'data_class_extensions_generator.dart';
import 'group.dart';
import 'string_extensions.dart';
import 'variable.dart';
import 'variable_type.dart';

class Generator {
  Generator({required this.root, required this.classes, this.verbose = false});

  static const List<String> illegalNames = <String>[
    'new',
    'object',
    'null',
    'boolean',
    'string',
    'default',
  ];

  final String root;
  final bool verbose;
  late String tdApiDir = '$root/lib/src/api';
  late File tdApiFile = File('$tdApiDir/tdapi.dart');
  late File extensionsFile = File('$tdApiDir/extensions/extensions.dart');
  late File dataClassExtensionsFile = File(
    '$tdApiDir/extensions/data_class_extensions.dart',
  );
  late File convertExtensionFile = File(
    '$tdApiDir/extensions/convert_extensions.dart',
  );
  late Directory rootDir = Directory(root);
  late Directory functionsDir = Directory('$tdApiDir/functions');
  late Directory objectsDir = Directory('$tdApiDir/objects');

  final List<Class> classes;

  cb.Allocator _allocator = cb.Allocator();

  List<String> get outputPaths {
    final hierarchies = _buildHierarchies();
    final childrenNames = _childrenInHierarchies();
    final paths = <String>{
      'lib/src/api/tdapi.dart',
      'lib/src/api/extensions/extensions.dart',
      'lib/src/api/extensions/convert_extensions.dart',
      'lib/src/api/extensions/data_class_extensions.dart',
    };

    for (final parent in hierarchies.keys) {
      paths.add('lib/src/api/objects/${snakeCase(parent.name)}.dart');
    }
    for (final tdClass in classes) {
      if (tdClass.group == Group.functions) {
        paths.add('lib/src/api/functions/${snakeCase(tdClass.name)}.dart');
      } else if (tdClass.group == Group.objects &&
          !childrenNames.contains(tdClass.name)) {
        paths.add('lib/src/api/objects/${snakeCase(tdClass.name)}.dart');
      }
    }

    return paths.toList()..sort();
  }

  /// Builds a map of sealed parent types to their concrete children.
  Map<Class, List<Class>> _buildHierarchies() {
    final hierarchies = <Class, List<Class>>{};
    for (final c in classes.where((c) => c.group == Group.classes)) {
      final children = classes
          .where((ch) => ch.parent == c.name)
          .sortedBy((e) => e.name);
      if (children.isNotEmpty) {
        hierarchies[c] = children;
      }
    }
    return hierarchies;
  }

  /// Returns the set of all child class names that belong to sealed hierarchies.
  Set<String> _childrenInHierarchies() {
    final names = <String>{};
    for (final entry in _buildHierarchies().entries) {
      names.addAll(entry.value.map((c) => c.name));
    }
    return names;
  }

  void generate() {
    if (!rootDir.existsSync()) {
      throw "Root directory [$root] not exist";
    }
    if (verbose) print("Root directory: $root");

    if (functionsDir.existsSync()) functionsDir.deleteSync(recursive: true);
    functionsDir.createSync(recursive: true);

    if (objectsDir.existsSync()) objectsDir.deleteSync(recursive: true);
    objectsDir.createSync(recursive: true);

    final hierarchies = _buildHierarchies();
    final childrenNames = _childrenInHierarchies();

    // Group classes by output kind
    final standaloneObjects = <Class>[];
    final functionClasses = <Class>[];

    for (final c in classes) {
      if (c.group == Group.functions) {
        functionClasses.add(c);
      } else if (c.group == Group.objects && !childrenNames.contains(c.name)) {
        standaloneObjects.add(c);
      }
    }

    // 1. Generate sealed hierarchy files
    for (final entry in hierarchies.entries) {
      _writeSealedHierarchy(entry.key, entry.value);
    }

    // 2. Generate standalone object files
    for (final c in standaloneObjects) {
      _writeSingleFile(c);
    }

    // 3. Generate function files
    for (final c in functionClasses) {
      _writeSingleFile(c);
    }

    // 4. Generate tdapi.dart barrel
    _writeBarrelFile(hierarchies);

    // 5. Generate extensions.dart (copyWith, map, maybeMap)
    _writeExtensionsFile(hierarchies, childrenNames);

    // 6. Generate convert_extensions.dart
    _writeConvertExtensionsFile(childrenNames);

    // 7. Generate data_class_extensions.dart
    _writeDataClassExtensionsFile();

    if (verbose) {
      print('Sealed hierarchies: ${hierarchies.length}');
      print('Standalone objects: ${standaloneObjects.length}');
      print('Functions: ${functionClasses.length}');
    }
  }

  // ---------------------------------------------------------------------------
  // File writing
  // ---------------------------------------------------------------------------

  void _writeFile(String path, String content) {
    final file = File(path);
    file.createSync(recursive: true);
    file.writeAsStringSync(
      DartFormatter(
        languageVersion: DartFormatter.latestLanguageVersion,
      ).format(content),
      mode: FileMode.write,
    );
  }

  List<cb.Directive> _commonDirectives() => [
    cb.Directive.import('package:meta/meta.dart'),
    cb.Directive.import('../extensions/data_class_extensions.dart'),
    cb.Directive.import('../tdapi.dart'),
  ];

  void _writeSingleFile(Class c) {
    final lib = cb.LibraryBuilder();
    lib.directives.addAll(_commonDirectives());
    lib.body.add(_createConcreteClass(c));
    final emitter = cb.DartEmitter(allocator: _allocator);
    final content = lib.build().accept(emitter).toString();
    final path = '${getPathOf(c)}/${snakeCase(c.name)}.dart';
    _writeFile(path, content);
    _allocator = cb.Allocator();
  }

  void _writeSealedHierarchy(Class parent, List<Class> children) {
    final lib = cb.LibraryBuilder();
    lib.directives.addAll(_commonDirectives());
    // Sealed parent
    lib.body.add(_createSealedParentClass(parent, children));
    // All children
    for (final child in children) {
      lib.body.add(_createConcreteClass(child, sealedParent: parent));
    }
    final emitter = cb.DartEmitter(allocator: _allocator);
    var content = lib.build().accept(emitter).toString();
    // Replace `abstract class` with `sealed class` for the parent type
    content = content.replaceFirst(
      'abstract class ${parent.name}',
      'sealed class ${parent.name}',
    );
    final path = '${objectsDir.path}/${snakeCase(parent.name)}.dart';
    _writeFile(path, content);
    _allocator = cb.Allocator();
  }

  // ---------------------------------------------------------------------------
  // Barrel / extensions / convert / data_class
  // ---------------------------------------------------------------------------

  void _writeBarrelFile(Map<Class, List<Class>> hierarchies) {
    final lines = <String>["export 'function.dart';", "export 'object.dart';"];

    // Sealed hierarchy files
    for (final parent in hierarchies.keys) {
      lines.add("export 'objects/${snakeCase(parent.name)}.dart';");
    }

    // Standalone objects
    final childrenNames = _childrenInHierarchies();
    for (final c in classes) {
      if (c.group == Group.objects && !childrenNames.contains(c.name)) {
        lines.add("export 'objects/${snakeCase(c.name)}.dart';");
      }
    }

    // Functions
    for (final c in classes.where((c) => c.group == Group.functions)) {
      lines.add("export 'functions/${snakeCase(c.name)}.dart';");
    }

    lines.sort();

    if (tdApiFile.existsSync()) tdApiFile.deleteSync(recursive: true);
    tdApiFile.createSync(recursive: true);
    tdApiFile.writeAsStringSync(lines.join('\n'));
  }

  void _writeExtensionsFile(
    Map<Class, List<Class>> hierarchies,
    Set<String> childrenNames,
  ) {
    if (extensionsFile.existsSync()) extensionsFile.deleteSync(recursive: true);
    extensionsFile.createSync(recursive: true);

    final lines = <String>["import 'package:tdlib/td_api.dart';"];

    // Extensions for sealed parents (map, maybeMap)
    for (final entry in hierarchies.entries) {
      final parent = entry.key;
      final children = entry.value;
      final ext = cb.Extension((b) {
        b.name = '${parent.name}Extensions';
        b.on = cb.TypeReference((t) => t.symbol = parent.name);
        b.methods.add(_createMapMethod(parent, children));
        b.methods.add(_createMaybeMapMethod(parent, children));
      });
      lines.add(_formatExtension(ext));
    }

    // Extensions for all concrete classes (copyWith)
    for (final c in classes) {
      if (c.variables.isEmpty) continue;
      final ext = cb.Extension((b) {
        b.name = '${c.name}Extensions';
        b.on = cb.TypeReference((t) => t.symbol = c.name);
        b.methods.add(_createCopyMethod(c));
      });
      lines.add(_formatExtension(ext));
    }

    extensionsFile.writeAsStringSync(lines.join('\n'));
  }

  String _formatExtension(cb.Extension ext) {
    return DartFormatter(
      languageVersion: DartFormatter.latestLanguageVersion,
    ).format('${ext.accept(cb.DartEmitter())}');
  }

  void _writeConvertExtensionsFile(Set<String> childrenNames) {
    if (convertExtensionFile.existsSync()) {
      convertExtensionFile.deleteSync(recursive: true);
    }
    convertExtensionFile.createSync(recursive: true);

    final lines = <String>[
      "import 'package:tdlib/td_api.dart';",
      '',
      'extension ConvertExtensions on Map<String, dynamic> {',
      'TdObject? toTdObject() {',
      "final String type = this['@type'] as String;",
      'switch (type) {',
    ];

    final cases = <String>[];

    // Include all non-function types that have fromJson
    for (final c in classes) {
      if (c.group != Group.functions && c.group != Group.classes) {
        cases.add("case '${c.constructor}': return ${c.name}.fromJson(this);");
      }
    }

    cases.sort();
    lines.addAll(cases);
    lines.add('default: return null;');
    lines.add('} } }');

    convertExtensionFile.writeAsStringSync(lines.join('\n'));
  }

  void _writeDataClassExtensionsFile() {
    if (dataClassExtensionsFile.existsSync()) {
      dataClassExtensionsFile.deleteSync(recursive: true);
    }
    dataClassExtensionsFile.createSync(recursive: true);

    dataClassExtensionsFile.writeAsStringSync(
      DataClassExtensionsGenerator().generate(classes),
    );
  }

  // ---------------------------------------------------------------------------
  // Class builders
  // ---------------------------------------------------------------------------

  /// Creates a sealed parent class (e.g. `sealed class AuthorizationState`).
  cb.Class _createSealedParentClass(Class c, List<Class> children) {
    return cb.Class((b) {
      _addCommonImports(b, c);
      b.name = c.name;
      b.extend = cb.refer(c.parent);
      b.abstract = true;
      b.annotations.add(const cb.CodeExpression(cb.Code('immutable')));

      // const constructor
      b.constructors.add(
        cb.Constructor((cons) {
          cons.constant = true;
        }),
      );

      // constructor field
      b.fields.add(
        cb.Field((f) {
          f.static = true;
          f.modifier = cb.FieldModifier.constant;
          f.name = 'constructor';
          f.type = const cb.Reference('String');
          f.assignment = cb.Code("'${c.constructor}'");
        }),
      );

      // getConstructor()
      b.methods.add(
        cb.Method((m) {
          m.name = 'getConstructor';
          m.returns = const cb.Reference('String');
          m.lambda = true;
          m.annotations.add(const cb.Reference('override'));
          m.body = const cb.Code('constructor');
        }),
      );

      // fromJson (with exhaustive switch)
      b.methods.add(_createSealedFromJson(c, children));

      // equality
      b.methods.add(
        cb.Method((m) {
          m.annotations.add(const cb.Reference('override'));
          m.name = 'operator ==';
          m.returns = cb.refer('bool');
          m.lambda = true;
          m.requiredParameters.add(
            cb.Parameter((p) {
              p.type = cb.refer('Object');
              p.name = 'other';
            }),
          );
          m.body = const cb.Code('overriddenEquality(other)');
        }),
      );

      // hashCode
      b.methods.add(
        cb.Method((m) {
          m.annotations.add(const cb.Reference('override'));
          m.name = 'hashCode';
          m.returns = cb.refer('int');
          m.lambda = true;
          m.type = cb.MethodType.getter;
          m.body = const cb.Code('overriddenHashCode');
        }),
      );
    });
  }

  /// Creates a concrete class (final) — for objects, functions, or children
  /// in sealed hierarchies.
  cb.Class _createConcreteClass(Class c, {Class? sealedParent}) {
    return cb.Class((b) {
      _addCommonImports(b, c);
      b.name = c.name;
      b.modifier = cb.ClassModifier.final$;

      if (sealedParent != null) {
        // Child in a sealed hierarchy
        b.extend = cb.refer(sealedParent.name);
      } else {
        b.extend = cb.refer(c.parent);
      }

      b.annotations.add(const cb.CodeExpression(cb.Code('immutable')));

      // Constructor
      b.constructors.add(
        cb.Constructor((cons) {
          cons.constant = c.variables.isEmpty;
          final params = c.variables.map((v) {
            return cb.Parameter((p) {
              p.required = !_isFieldNullable(v);
              p.named = true;
              p.name = v.name.toVariableName();
              p.toThis = true;
            });
          }).toList();
          cons.optionalParameters.addAll(params);
        }),
      );

      // Fields
      b.fields.addAll(
        c.variables.map((v) {
          return cb.Field((f) {
            f.name = v.name.toVariableName();
            f.type = cb.Reference(
              '${v.type} ${_isFieldNullable(v) ? '?' : ''}',
            );
            f.modifier = cb.FieldModifier.final$;
            f.docs.addAll(v.resolveFieldDoc());
          });
        }),
      );

      // constructor field
      b.fields.add(
        cb.Field((f) {
          f.static = true;
          f.modifier = cb.FieldModifier.constant;
          f.name = 'constructor';
          f.type = const cb.Reference('String');
          f.assignment = cb.Code("'${c.constructor}'");
        }),
      );

      // getConstructor()
      b.methods.add(
        cb.Method((m) {
          m.name = 'getConstructor';
          m.returns = const cb.Reference('String');
          m.lambda = true;
          m.annotations.add(const cb.Reference('override'));
          m.body = const cb.Code('constructor');
        }),
      );

      // toJson (not for sealed parents, but for concrete classes)
      if (c.group != Group.classes) {
        b.methods.add(_createToJsonMethod(c));
      }

      // fromJson
      if (c.group != Group.functions && c.group != Group.classes) {
        b.methods.add(_createConcreteFromJson(c));
      }

      // equality
      b.methods.add(
        cb.Method((m) {
          m.annotations.add(const cb.Reference('override'));
          m.name = 'operator ==';
          m.returns = cb.refer('bool');
          m.lambda = true;
          m.requiredParameters.add(
            cb.Parameter((p) {
              p.type = cb.refer('Object');
              p.name = 'other';
            }),
          );
          m.body = const cb.Code('overriddenEquality(other)');
        }),
      );

      // hashCode
      b.methods.add(
        cb.Method((m) {
          m.annotations.add(const cb.Reference('override'));
          m.name = 'hashCode';
          m.returns = cb.refer('int');
          m.lambda = true;
          m.type = cb.MethodType.getter;
          m.body = const cb.Code('overriddenHashCode');
        }),
      );
    });
  }

  void _addCommonImports(cb.ClassBuilder b, Class c) {
    b.docs.addAll(c.description.resolveDoc());

    if (c.group == Group.functions) {
      b.docs.add('/// Returns [${c.returnType}]');
    }
  }

  // ---------------------------------------------------------------------------
  // fromJson builders
  // ---------------------------------------------------------------------------

  cb.Method _createSealedFromJson(Class parent, List<Class> children) {
    return cb.Method((m) {
      m.name = 'fromJson';
      m.static = true;
      m.requiredParameters.add(
        cb.Parameter((p) {
          p.name = '? json';
          p.type = cb.TypeReference(
            (t) => t
              ..symbol = 'Map'
              ..types.addAll([cb.refer('String'), cb.refer('dynamic')]),
          );
        }),
      );
      m.returns = cb.Reference('${parent.name}?');

      m.docs.add('/// Inherited by:');
      for (final child in children) {
        m.docs.add('/// [${child.name}]');
      }

      m.body = cb.Block((b) {
        b.statements.add(
          const cb.Code('''
if (json == null) {
  return null;
}

switch (json['@type']) {
'''),
        );
        for (final child in children) {
          b.statements.add(
            cb.Code('''
case ${child.name}.constructor:
  return ${child.name}.fromJson(json);
'''),
          );
        }
        b.statements.add(
          const cb.Code('''
default:
  return null;
}
'''),
        );
      });
    });
  }

  cb.Method _createConcreteFromJson(Class c) {
    return cb.Method((m) {
      m.name = 'fromJson';
      m.static = true;
      m.requiredParameters.add(
        cb.Parameter((p) {
          p.name = '? json';
          p.type = cb.TypeReference(
            (t) => t
              ..symbol = 'Map'
              ..types.addAll([cb.refer('String'), cb.refer('dynamic')]),
          );
        }),
      );
      m.returns = cb.Reference('${c.name}?');

      m.body = cb.Block((b) {
        b.statements.add(
          const cb.Code('''
if (json == null) {
  return null;
}
'''),
        );

        if (c.variables.isEmpty) {
          final isConst = !_canBeReturnByFunction(c.name);
          final prefix = isConst ? 'const ' : '';
          b.statements.add(cb.Code('return $prefix${c.name}();'));
        } else {
          final initializers = Map.fromEntries(
            c.variables.map(
              (v) => MapEntry(
                v.name.toVariableName(),
                cb.refer(_createInitializer(v)),
              ),
            ),
          );
          b.statements.add(
            cb
                .refer(c.name)
                .newInstance(<cb.Expression>[], initializers)
                .returned
                .statement,
          );
        }
      });
    });
  }

  // ---------------------------------------------------------------------------
  // toJson builder
  // ---------------------------------------------------------------------------

  cb.Method _createToJsonMethod(Class c) {
    return cb.Method((m) {
      m.name = 'toJson';
      m.returns = cb.TypeReference(
        (t) => t
          ..symbol = 'Map'
          ..types.addAll([cb.refer('String'), cb.refer('dynamic')]),
      );
      m.lambda = true;
      m.annotations.add(const cb.Reference('override'));

      final values = Map<Object, Object>.fromEntries(
        c.variables.map(
          (v) => MapEntry(v.name, cb.refer(_createVariableToJson(c.group, v))),
        ),
      );
      values['@type'] = cb.refer('constructor');

      final jsonExpr = cb.literalMap(
        values,
        cb.refer('String'),
        cb.refer('dynamic'),
      );
      m.body = _exprToCode(jsonExpr);
    });
  }

  // ---------------------------------------------------------------------------
  // Extension method builders (copyWith, map, maybeMap)
  // ---------------------------------------------------------------------------

  cb.Method _createCopyMethod(Class tdClass) {
    return cb.Method((m) {
      m.name = 'copyWith';
      m.returns = cb.refer(tdClass.name);
      m.optionalParameters.addAll(
        tdClass.variables.map(
          (v) => cb.Parameter((p) {
            p.named = true;
            p.name = v.name.toVariableName();
            p.type = cb.Reference('${v.type}?');
          }),
        ),
      );
      m.lambda = true;
      final copyExpr = cb
          .refer(tdClass.name)
          .newInstance(
            <cb.Expression>[],
            Map.fromEntries(
              tdClass.variables.map(
                (v) => MapEntry(
                  v.name.toVariableName(),
                  cb.refer(
                    '${v.name.toVariableName()} ?? this.${v.name.toVariableName()}',
                  ),
                ),
              ),
            ),
          );
      m.body = _exprToCode(copyExpr);
    });
  }

  cb.Method _createMapMethod(Class tdClass, List<Class> inheritors) {
    return cb.Method((m) {
      String createParamName(String name) {
        String result = name.replaceFirst(tdClass.name, '').lowerFirstChar();
        if (illegalNames.contains(result)) result = '\$$result';
        return result;
      }

      m.name = 'map<TResult extends Object?>';
      m.returns = cb.refer('TResult');
      m.optionalParameters.addAll(
        inheritors.map(
          (child) => cb.Parameter((p) {
            p.named = true;
            p.required = true;
            p.name = createParamName(child.name);
            p.type = cb.Reference('TResult Function(${child.name} value)');
          }),
        ),
      );
      m.body = cb.Block((b) {
        b.statements.add(const cb.Code('switch(getConstructor()) {'));
        for (final child in inheritors) {
          b.statements.addAll([
            cb.Code('case ${child.name}.constructor:'),
            cb.Code(
              'return ${createParamName(child.name)}.call(this as ${child.name});',
            ),
          ]);
        }
        b.statements.add(const cb.Code('}'));
        b.statements.add(
          cb.Code("throw StateError('not handled type $runtimeType');"),
        );
      });
    });
  }

  cb.Method _createMaybeMapMethod(Class tdClass, List<Class> inheritors) {
    return cb.Method((m) {
      String createParamName(String name) {
        String result = name.replaceFirst(tdClass.name, '').lowerFirstChar();
        if (illegalNames.contains(result)) result = '\$$result';
        return result;
      }

      m.name = 'maybeMap<TResult extends Object?>';
      m.returns = cb.refer('TResult');
      m.optionalParameters.addAll(
        inheritors.map(
          (child) => cb.Parameter((p) {
            p.named = true;
            p.name = createParamName(child.name);
            p.type = cb.Reference('TResult Function(${child.name} value)?');
          }),
        ),
      );
      m.optionalParameters.add(
        cb.Parameter((p) {
          p.named = true;
          p.required = true;
          p.name = 'orElse';
          p.type = const cb.Reference('TResult Function()');
        }),
      );
      m.body = cb.Block((b) {
        b.statements.add(const cb.Code('switch(getConstructor()) {'));
        for (final child in inheritors) {
          final funcName = createParamName(child.name);
          b.statements.addAll([
            cb.Code('case ${child.name}.constructor:'),
            cb.Code('if ($funcName != null) {'),
            cb.Code('return $funcName.call(this as ${child.name});'),
            const cb.Code('}'),
            const cb.Code('break;'),
          ]);
        }
        b.statements.add(const cb.Code('}'));
        b.statements.add(const cb.Code('return orElse.call();'));
      });
    });
  }

  // ---------------------------------------------------------------------------
  // Null-safety helper
  // ---------------------------------------------------------------------------

  /// A field should be nullable in the Dart class when:
  /// - The TL schema marks it nullable, OR
  /// - It's a sub-object type (not primitive, not list), because its fromJson
  ///   may return null (unknown @type, missing JSON key, etc.)
  bool _isFieldNullable(Variable v) {
    if (v.isNullable) return true;
    return !v.type.isDartType && !v.type.isListType;
  }

  // ---------------------------------------------------------------------------
  // Variable serialization helpers
  // ---------------------------------------------------------------------------

  bool _canBeReturnByFunction(String className) {
    if (className == 'TdError') return true;
    return classes
        .where((e) => e.group == Group.functions)
        .any((e) => e.returnType == className);
  }

  String _createInitializer(Variable variable, [String? overrideJsonKey]) {
    if (variable.type.isDartType) {
      if (overrideJsonKey != null) {
        // In list context, int values may come as strings from TDLib JSON
        if (variable.type.rawType.startsWith('int')) {
          return "int.tryParse(($overrideJsonKey as dynamic)?.toString() ?? '') ?? 0";
        }
        if (variable.type.rawType == 'double') {
          return "double.tryParse(($overrideJsonKey as dynamic)?.toString() ?? '') ?? 0.0";
        }
        if (variable.type.rawType == 'Bool') {
          return '($overrideJsonKey is bool ? $overrideJsonKey : false)';
        }
        if (variable.type.rawType == 'String' ||
            variable.type.rawType == 'string') {
          return "($overrideJsonKey as dynamic)?.toString() ?? ''";
        }
        return overrideJsonKey;
      }
      if (variable.type.rawType == 'int64') {
        return "int.tryParse((json['${variable.name}'] as dynamic)?.toString() ?? '') ?? 0";
      }
      switch (variable.type.rawType) {
        case 'int32':
        case 'int53':
        case 'int64':
          return "(json['${variable.name}'] as int?)${variable.isNullable ? '' : ' ?? 0'}";
        case 'double':
          if (variable.isNullable) {
            return "(json['${variable.name}'] as num?)?.toDouble()";
          }
          return "((json['${variable.name}'] as num?) ?? 0.0).toDouble()";
        case 'Bool':
          return "(json['${variable.name}'] as bool?)${variable.isNullable ? '' : ' ?? false'}";
        case 'bytes':
        case 'String':
        case 'string':
          return "(json['${variable.name}'] as String?)${variable.isNullable ? '' : " ?? ''"}";
      }
      return "json['${variable.name}']";
    } else if (variable.type.isListType) {
      final genericType = variable.type.type.substring(
        variable.type.type.indexOf('<') + 1,
        variable.type.type.lastIndexOf('>'),
      );
      final genericVariable = Variable(
        name: genericType,
        type: VariableType.fromRawType(rawType: genericType),
        description: '',
        isNullable: false,
      );
      final mapped =
          "tdListFromJson(json['${variable.name}']).map((item) => ${_createInitializer(genericVariable, 'item')})";
      if (genericVariable.type.isDartType) {
        return 'List<$genericType>.from($mapped)';
      }
      return 'List<$genericType>.from($mapped.whereType<$genericType>())';
    }
    if (overrideJsonKey != null) {
      return '${variable.type}.fromJson(tdMapFromJson($overrideJsonKey))';
    }
    return '${variable.type}.fromJson(tdMapFromJson(json[\'${variable.name}\']))';
  }

  String _createVariableToJson(
    Group group,
    Variable variable, [
    String? overrideVariableName,
  ]) {
    if (variable.type.isDartType) {
      if (overrideVariableName != null) return overrideVariableName;
      if (group != Group.functions && variable.type.rawType == 'int64') {
        return '${variable.name.toVariableName()}.toString()';
      }
      return variable.name.toVariableName();
    } else if (variable.type.isListType) {
      final genericType = variable.type.type.substring(
        variable.type.type.indexOf('<') + 1,
        variable.type.type.lastIndexOf('>'),
      );
      final genericVariable = Variable(
        name: genericType,
        type: VariableType.fromRawType(rawType: genericType),
        description: '',
        isNullable: false,
      );
      return "${overrideVariableName ?? variable.name.toVariableName()}${variable.isNullable ? '?' : ''}.map((item) => ${_createVariableToJson(group, genericVariable, 'item')}).toList()";
    }
    if (overrideVariableName != null) return '$overrideVariableName.toJson()';
    return "${variable.name.toVariableName()}${_isFieldNullable(variable) ? '?' : ''}.toJson()";
  }

  // ---------------------------------------------------------------------------
  // Path / naming helpers
  // ---------------------------------------------------------------------------

  String getPathOf(Class value) {
    if (value.group == Group.functions) return functionsDir.path;
    return objectsDir.path;
  }

  String snakeCase(String string) {
    string = string.replaceAllMapped(
      RegExp(r'(.)([A-Z][a-z]+)'),
      (m) => m.groups(List.generate(m.groupCount, (i) => i + 1)).join('_'),
    );
    string = string.replaceAllMapped(
      RegExp(r'([a-z0-9])([A-Z])'),
      (m) => m.groups(List.generate(m.groupCount, (i) => i + 1)).join('_'),
    );
    return string.toLowerCase();
  }

  // ---------------------------------------------------------------------------
  // Expression → Code helper
  // ---------------------------------------------------------------------------

  cb.Code _exprToCode(cb.Expression expression) {
    final emitter = cb.DartEmitter(allocator: cb.Allocator());
    return cb.Code(expression.accept(emitter).toString());
  }
}

extension StringExtension on String {
  String toVariableName() => camelCase().lowerFirstChar();

  List<String> resolveDoc() {
    final lines = <String>[];
    final split = this.split(' ');
    String currentLine = '///';

    for (final word in split) {
      final tempLine = '$currentLine $word';
      if (tempLine.length > 78) {
        lines.add(currentLine);
        currentLine = '/// $word';
      } else {
        currentLine = tempLine;
      }
    }
    if (currentLine != '///') {
      lines.add(currentLine);
    }
    return lines;
  }
}

extension _VariableExtension on Variable {
  List<String> resolveFieldDoc() {
    return description
            ?.replaceFirst(name, '[${name.toVariableName()}]')
            .resolveDoc() ??
        [];
  }
}
