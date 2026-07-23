import 'group.dart';
import 'variable.dart';

class Class {
  Class({
    required this.name,
    required this.parent,
    required this.group,
    required this.returnType,
    required this.constructor,
    required this.variables,
    required this.description,
  });

  final String name;
  final String description;
  final String parent;
  final String? returnType;
  final Group group;
  final List<Variable> variables;
  final String constructor;
}

extension ClassExtensions on Class {
  bool isAbstract() => group == Group.classes;
}
