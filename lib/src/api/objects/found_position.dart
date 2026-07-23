import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains 0-based match position
@immutable
final class FoundPosition extends TdObject {
  FoundPosition({required this.position});

  /// [position] The position of the match
  final int position;

  static const String constructor = 'foundPosition';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'position': position,
    '@type': constructor,
  };

  static FoundPosition? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FoundPosition(position: (json['position'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
