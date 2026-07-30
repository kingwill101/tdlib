import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of custom emoji identifiers for emoji statuses
@immutable
final class EmojiStatusCustomEmojis extends TdObject {
  EmojiStatusCustomEmojis({required this.customEmojiIds});

  /// [customEmojiIds] The list of custom emoji identifiers
  final List<int> customEmojiIds;

  static const String constructor = 'emojiStatusCustomEmojis';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'custom_emoji_ids': customEmojiIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static EmojiStatusCustomEmojis? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiStatusCustomEmojis(
      customEmojiIds: List<int>.from(
        tdListFromJson(
          json['custom_emoji_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
