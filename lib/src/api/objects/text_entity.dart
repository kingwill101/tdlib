import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a part of the text that needs to be formatted in some unusual
/// way
@immutable
final class TextEntity extends TdObject {
  TextEntity({required this.offset, required this.length, this.type});

  /// [offset] Offset of the entity, in UTF-16 code units
  final int offset;

  /// [length] Length of the entity, in UTF-16 code units
  final int length;

  /// [type] Type of the entity
  final TextEntityType? type;

  static const String constructor = 'textEntity';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'offset': offset,
    'length': length,
    'type': type?.toJson(),
    '@type': constructor,
  };

  static TextEntity? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextEntity(
      offset: (json['offset'] as int?) ?? 0,
      length: (json['length'] as int?) ?? 0,
      type: TextEntityType.fromJson(tdMapFromJson(json['type'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
