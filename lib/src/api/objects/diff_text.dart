import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A text with some changes highlighted
@immutable
final class DiffText extends TdObject {
  DiffText({required this.text, required this.entities});

  /// [text] The text
  final String text;

  /// [entities] Entities describing changes in the text. Entities don't
  /// mutually intersect with each other
  final List<DiffEntity> entities;

  static const String constructor = 'diffText';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text,
    'entities': entities.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static DiffText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DiffText(
      text: (json['text'] as String?) ?? '',
      entities: List<DiffEntity>.from(
        tdListFromJson(json['entities'])
            .map((item) => DiffEntity.fromJson(tdMapFromJson(item)))
            .whereType<DiffEntity>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
