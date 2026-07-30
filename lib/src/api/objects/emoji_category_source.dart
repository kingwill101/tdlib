import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes source of stickers for an emoji category
@immutable
sealed class EmojiCategorySource extends TdObject {
  const EmojiCategorySource();

  static const String constructor = 'emojiCategorySource';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [EmojiCategorySourcePremium]
  /// [EmojiCategorySourceSearch]
  static EmojiCategorySource? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case EmojiCategorySourcePremium.constructor:
        return EmojiCategorySourcePremium.fromJson(json);

      case EmojiCategorySourceSearch.constructor:
        return EmojiCategorySourceSearch.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The category contains premium stickers that must be found by
/// getPremiumStickers
@immutable
final class EmojiCategorySourcePremium extends EmojiCategorySource {
  const EmojiCategorySourcePremium();

  static const String constructor = 'emojiCategorySourcePremium';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static EmojiCategorySourcePremium? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const EmojiCategorySourcePremium();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The category contains a list of similar emoji to search for in getStickers
/// and searchStickers for stickers, or getInlineQueryResults with the bot
/// getOption("animation_search_bot_username") for animations
@immutable
final class EmojiCategorySourceSearch extends EmojiCategorySource {
  EmojiCategorySourceSearch({required this.emojis});

  /// [emojis] List of emojis to search for
  final List<String> emojis;

  static const String constructor = 'emojiCategorySourceSearch';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'emojis': emojis.map((item) => item).toList(),
    '@type': constructor,
  };

  static EmojiCategorySourceSearch? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiCategorySourceSearch(
      emojis: List<String>.from(
        tdListFromJson(
          json['emojis'],
        ).map((item) => (item as dynamic)?.toString() ?? ''),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
