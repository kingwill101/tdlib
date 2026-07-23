import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of emojis with their keywords
@immutable
final class EmojiKeywords extends TdObject {
  EmojiKeywords({required this.emojiKeywords});

  /// [emojiKeywords] List of emojis with their keywords
  final List<EmojiKeyword> emojiKeywords;

  static const String constructor = 'emojiKeywords';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'emoji_keywords': emojiKeywords.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static EmojiKeywords? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiKeywords(
      emojiKeywords: List<EmojiKeyword>.from(
        tdListFromJson(json['emoji_keywords'])
            .map((item) => EmojiKeyword.fromJson(tdMapFromJson(item)))
            .whereType<EmojiKeyword>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
