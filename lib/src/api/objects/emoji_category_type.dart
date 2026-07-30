import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of emoji category
@immutable
sealed class EmojiCategoryType extends TdObject {
  const EmojiCategoryType();

  static const String constructor = 'emojiCategoryType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [EmojiCategoryTypeChatPhoto]
  /// [EmojiCategoryTypeDefault]
  /// [EmojiCategoryTypeEmojiStatus]
  /// [EmojiCategoryTypeRegularStickers]
  static EmojiCategoryType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case EmojiCategoryTypeChatPhoto.constructor:
        return EmojiCategoryTypeChatPhoto.fromJson(json);

      case EmojiCategoryTypeDefault.constructor:
        return EmojiCategoryTypeDefault.fromJson(json);

      case EmojiCategoryTypeEmojiStatus.constructor:
        return EmojiCategoryTypeEmojiStatus.fromJson(json);

      case EmojiCategoryTypeRegularStickers.constructor:
        return EmojiCategoryTypeRegularStickers.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The category must be used for chat photo emoji selection
@immutable
final class EmojiCategoryTypeChatPhoto extends EmojiCategoryType {
  const EmojiCategoryTypeChatPhoto();

  static const String constructor = 'emojiCategoryTypeChatPhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static EmojiCategoryTypeChatPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const EmojiCategoryTypeChatPhoto();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The category must be used by default (e.g., for custom emoji or animation
/// search)
@immutable
final class EmojiCategoryTypeDefault extends EmojiCategoryType {
  const EmojiCategoryTypeDefault();

  static const String constructor = 'emojiCategoryTypeDefault';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static EmojiCategoryTypeDefault? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const EmojiCategoryTypeDefault();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The category must be used for emoji status selection
@immutable
final class EmojiCategoryTypeEmojiStatus extends EmojiCategoryType {
  const EmojiCategoryTypeEmojiStatus();

  static const String constructor = 'emojiCategoryTypeEmojiStatus';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static EmojiCategoryTypeEmojiStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const EmojiCategoryTypeEmojiStatus();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The category must be used by default for regular sticker selection. It may
/// contain greeting emoji category and premium stickers
@immutable
final class EmojiCategoryTypeRegularStickers extends EmojiCategoryType {
  const EmojiCategoryTypeRegularStickers();

  static const String constructor = 'emojiCategoryTypeRegularStickers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static EmojiCategoryTypeRegularStickers? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const EmojiCategoryTypeRegularStickers();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
