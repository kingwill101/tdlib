import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of text entities
@immutable
final class TextEntities extends TdObject {
  TextEntities({required this.entities});

  /// [entities] List of text entities
  final List<TextEntity> entities;

  static const String constructor = 'textEntities';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'entities': entities.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static TextEntities? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextEntities(
      entities: List<TextEntity>.from(
        tdListFromJson(json['entities'])
            .map((item) => TextEntity.fromJson(tdMapFromJson(item)))
            .whereType<TextEntity>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
