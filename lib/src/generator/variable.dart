import 'variable_type.dart';

class Variable {
  Variable({
    required this.name,
    required this.type,
    required this.description,
    required this.isNullable,
  });

  final String name;
  final VariableType type;
  final String? description;
  final bool isNullable;
}
