import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a closed vector path. The path begins at the end point of the
/// last command. The coordinate system origin is in the upper-left corner
@immutable
final class ClosedVectorPath extends TdObject {
  ClosedVectorPath({required this.commands});

  /// [commands] List of vector path commands
  final List<VectorPathCommand> commands;

  static const String constructor = 'closedVectorPath';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'commands': commands.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static ClosedVectorPath? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ClosedVectorPath(
      commands: List<VectorPathCommand>.from(
        tdListFromJson(json['commands'])
            .map((item) => VectorPathCommand.fromJson(tdMapFromJson(item)))
            .whereType<VectorPathCommand>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
