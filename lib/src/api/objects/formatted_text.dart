import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A text with some entities
@immutable
final class FormattedText extends TdObject {
  FormattedText({required this.text, required this.entities});

  /// [text] The text
  final String text;

  /// [entities] Entities contained in the text. Entities can be nested, but
  /// must not mutually intersect with each other. Pre, Code, PreCode, and
  /// DateTime entities can't contain other entities. BlockQuote entities can't
  /// contain other BlockQuote entities. Bold, Italic, Underline, Strikethrough,
  /// and Spoiler entities can contain and can be part of any other entities.
  /// All other entities can't contain each other
  final List<TextEntity> entities;

  static const String constructor = 'formattedText';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text,
    'entities': entities.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static FormattedText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FormattedText(
      text: (json['text'] as String?) ?? '',
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
