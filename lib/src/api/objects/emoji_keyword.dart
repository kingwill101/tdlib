import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents an emoji with its keyword
@immutable
final class EmojiKeyword extends TdObject {
  EmojiKeyword({required this.emoji, required this.keyword});

  /// [emoji] The emoji
  final String emoji;

  /// [keyword] The keyword
  final String keyword;

  static const String constructor = 'emojiKeyword';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'emoji': emoji,
    'keyword': keyword,
    '@type': constructor,
  };

  static EmojiKeyword? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiKeyword(
      emoji: (json['emoji'] as String?) ?? '',
      keyword: (json['keyword'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
