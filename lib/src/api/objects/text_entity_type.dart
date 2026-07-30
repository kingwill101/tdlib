import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a part of the text which must be formatted differently
@immutable
sealed class TextEntityType extends TdObject {
  const TextEntityType();

  static const String constructor = 'textEntityType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [TextEntityTypeBankCardNumber]
  /// [TextEntityTypeBlockQuote]
  /// [TextEntityTypeBold]
  /// [TextEntityTypeBotCommand]
  /// [TextEntityTypeCashtag]
  /// [TextEntityTypeCode]
  /// [TextEntityTypeCustomEmoji]
  /// [TextEntityTypeDateTime]
  /// [TextEntityTypeEmailAddress]
  /// [TextEntityTypeExpandableBlockQuote]
  /// [TextEntityTypeHashtag]
  /// [TextEntityTypeItalic]
  /// [TextEntityTypeMediaTimestamp]
  /// [TextEntityTypeMention]
  /// [TextEntityTypeMentionName]
  /// [TextEntityTypePhoneNumber]
  /// [TextEntityTypePre]
  /// [TextEntityTypePreCode]
  /// [TextEntityTypeSpoiler]
  /// [TextEntityTypeStrikethrough]
  /// [TextEntityTypeTextUrl]
  /// [TextEntityTypeUnderline]
  /// [TextEntityTypeUrl]
  static TextEntityType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case TextEntityTypeBankCardNumber.constructor:
        return TextEntityTypeBankCardNumber.fromJson(json);

      case TextEntityTypeBlockQuote.constructor:
        return TextEntityTypeBlockQuote.fromJson(json);

      case TextEntityTypeBold.constructor:
        return TextEntityTypeBold.fromJson(json);

      case TextEntityTypeBotCommand.constructor:
        return TextEntityTypeBotCommand.fromJson(json);

      case TextEntityTypeCashtag.constructor:
        return TextEntityTypeCashtag.fromJson(json);

      case TextEntityTypeCode.constructor:
        return TextEntityTypeCode.fromJson(json);

      case TextEntityTypeCustomEmoji.constructor:
        return TextEntityTypeCustomEmoji.fromJson(json);

      case TextEntityTypeDateTime.constructor:
        return TextEntityTypeDateTime.fromJson(json);

      case TextEntityTypeEmailAddress.constructor:
        return TextEntityTypeEmailAddress.fromJson(json);

      case TextEntityTypeExpandableBlockQuote.constructor:
        return TextEntityTypeExpandableBlockQuote.fromJson(json);

      case TextEntityTypeHashtag.constructor:
        return TextEntityTypeHashtag.fromJson(json);

      case TextEntityTypeItalic.constructor:
        return TextEntityTypeItalic.fromJson(json);

      case TextEntityTypeMediaTimestamp.constructor:
        return TextEntityTypeMediaTimestamp.fromJson(json);

      case TextEntityTypeMention.constructor:
        return TextEntityTypeMention.fromJson(json);

      case TextEntityTypeMentionName.constructor:
        return TextEntityTypeMentionName.fromJson(json);

      case TextEntityTypePhoneNumber.constructor:
        return TextEntityTypePhoneNumber.fromJson(json);

      case TextEntityTypePre.constructor:
        return TextEntityTypePre.fromJson(json);

      case TextEntityTypePreCode.constructor:
        return TextEntityTypePreCode.fromJson(json);

      case TextEntityTypeSpoiler.constructor:
        return TextEntityTypeSpoiler.fromJson(json);

      case TextEntityTypeStrikethrough.constructor:
        return TextEntityTypeStrikethrough.fromJson(json);

      case TextEntityTypeTextUrl.constructor:
        return TextEntityTypeTextUrl.fromJson(json);

      case TextEntityTypeUnderline.constructor:
        return TextEntityTypeUnderline.fromJson(json);

      case TextEntityTypeUrl.constructor:
        return TextEntityTypeUrl.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A bank card number. The getBankCardInfo method can be used to get
/// information about the bank card
@immutable
final class TextEntityTypeBankCardNumber extends TextEntityType {
  const TextEntityTypeBankCardNumber();

  static const String constructor = 'textEntityTypeBankCardNumber';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TextEntityTypeBankCardNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeBankCardNumber();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Text that must be formatted as if inside a blockquote HTML tag; not
/// supported in secret chats
@immutable
final class TextEntityTypeBlockQuote extends TextEntityType {
  const TextEntityTypeBlockQuote();

  static const String constructor = 'textEntityTypeBlockQuote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TextEntityTypeBlockQuote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeBlockQuote();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A bold text
@immutable
final class TextEntityTypeBold extends TextEntityType {
  const TextEntityTypeBold();

  static const String constructor = 'textEntityTypeBold';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TextEntityTypeBold? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeBold();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A bot command, beginning with "/"
@immutable
final class TextEntityTypeBotCommand extends TextEntityType {
  const TextEntityTypeBotCommand();

  static const String constructor = 'textEntityTypeBotCommand';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TextEntityTypeBotCommand? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeBotCommand();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A cashtag text, beginning with "$", consisting of capital English letters
/// (e.g., "$USD"), and optionally containing a chat username at the end
@immutable
final class TextEntityTypeCashtag extends TextEntityType {
  const TextEntityTypeCashtag();

  static const String constructor = 'textEntityTypeCashtag';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TextEntityTypeCashtag? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeCashtag();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Text that must be formatted as if inside a code HTML tag
@immutable
final class TextEntityTypeCode extends TextEntityType {
  const TextEntityTypeCode();

  static const String constructor = 'textEntityTypeCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TextEntityTypeCode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeCode();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A custom emoji. The text behind a custom emoji must be an emoji. Only
/// premium users can use premium custom emoji
@immutable
final class TextEntityTypeCustomEmoji extends TextEntityType {
  TextEntityTypeCustomEmoji({required this.customEmojiId});

  /// [customEmojiId] Unique identifier of the custom emoji
  final int customEmojiId;

  static const String constructor = 'textEntityTypeCustomEmoji';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'custom_emoji_id': customEmojiId.toString(),
    '@type': constructor,
  };

  static TextEntityTypeCustomEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextEntityTypeCustomEmoji(
      customEmojiId:
          int.tryParse(
            (json['custom_emoji_id'] as dynamic)?.toString() ?? '',
          ) ??
          0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A date and time
@immutable
final class TextEntityTypeDateTime extends TextEntityType {
  TextEntityTypeDateTime({required this.unixTime, this.formattingType});

  /// [unixTime] Point in time (Unix timestamp) representing the date and time
  final int unixTime;

  /// [formattingType] Date and time formatting type; may be null if none and
  /// the original text must not be changed
  final DateTimeFormattingType? formattingType;

  static const String constructor = 'textEntityTypeDateTime';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'unix_time': unixTime,
    'formatting_type': formattingType?.toJson(),
    '@type': constructor,
  };

  static TextEntityTypeDateTime? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextEntityTypeDateTime(
      unixTime: (json['unix_time'] as int?) ?? 0,
      formattingType: DateTimeFormattingType.fromJson(
        tdMapFromJson(json['formatting_type']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An email address
@immutable
final class TextEntityTypeEmailAddress extends TextEntityType {
  const TextEntityTypeEmailAddress();

  static const String constructor = 'textEntityTypeEmailAddress';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TextEntityTypeEmailAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeEmailAddress();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Text that must be formatted as if inside a blockquote HTML tag and
/// collapsed by default to 3 lines with the ability to show full text; not
/// supported in secret chats
@immutable
final class TextEntityTypeExpandableBlockQuote extends TextEntityType {
  const TextEntityTypeExpandableBlockQuote();

  static const String constructor = 'textEntityTypeExpandableBlockQuote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TextEntityTypeExpandableBlockQuote? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeExpandableBlockQuote();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A hashtag text, beginning with "#" and optionally containing a chat
/// username at the end
@immutable
final class TextEntityTypeHashtag extends TextEntityType {
  const TextEntityTypeHashtag();

  static const String constructor = 'textEntityTypeHashtag';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TextEntityTypeHashtag? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeHashtag();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An italic text
@immutable
final class TextEntityTypeItalic extends TextEntityType {
  const TextEntityTypeItalic();

  static const String constructor = 'textEntityTypeItalic';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TextEntityTypeItalic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeItalic();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A media timestamp
@immutable
final class TextEntityTypeMediaTimestamp extends TextEntityType {
  TextEntityTypeMediaTimestamp({required this.mediaTimestamp});

  /// [mediaTimestamp] Timestamp from which a video/audio/video note/voice
  /// note/story playing must start, in seconds. The media can be in the content
  /// or the link preview of the current message, or in the same places in the
  /// replied message
  final int mediaTimestamp;

  static const String constructor = 'textEntityTypeMediaTimestamp';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'media_timestamp': mediaTimestamp,
    '@type': constructor,
  };

  static TextEntityTypeMediaTimestamp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextEntityTypeMediaTimestamp(
      mediaTimestamp: (json['media_timestamp'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A mention of a user, a supergroup, or a channel by their username
@immutable
final class TextEntityTypeMention extends TextEntityType {
  const TextEntityTypeMention();

  static const String constructor = 'textEntityTypeMention';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TextEntityTypeMention? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeMention();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A text shows instead of a raw mention of the user (e.g., when the user has
/// no username)
@immutable
final class TextEntityTypeMentionName extends TextEntityType {
  TextEntityTypeMentionName({required this.userId});

  /// [userId] Identifier of the mentioned user
  final int userId;

  static const String constructor = 'textEntityTypeMentionName';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    '@type': constructor,
  };

  static TextEntityTypeMentionName? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextEntityTypeMentionName(userId: (json['user_id'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A phone number
@immutable
final class TextEntityTypePhoneNumber extends TextEntityType {
  const TextEntityTypePhoneNumber();

  static const String constructor = 'textEntityTypePhoneNumber';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TextEntityTypePhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypePhoneNumber();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Text that must be formatted as if inside a pre HTML tag
@immutable
final class TextEntityTypePre extends TextEntityType {
  const TextEntityTypePre();

  static const String constructor = 'textEntityTypePre';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TextEntityTypePre? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypePre();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Text that must be formatted as if inside pre, and code HTML tags
@immutable
final class TextEntityTypePreCode extends TextEntityType {
  TextEntityTypePreCode({required this.language});

  /// [language] Programming language of the code; as defined by the sender
  final String language;

  static const String constructor = 'textEntityTypePreCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'language': language,
    '@type': constructor,
  };

  static TextEntityTypePreCode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextEntityTypePreCode(language: (json['language'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A spoiler text
@immutable
final class TextEntityTypeSpoiler extends TextEntityType {
  const TextEntityTypeSpoiler();

  static const String constructor = 'textEntityTypeSpoiler';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TextEntityTypeSpoiler? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeSpoiler();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A strikethrough text
@immutable
final class TextEntityTypeStrikethrough extends TextEntityType {
  const TextEntityTypeStrikethrough();

  static const String constructor = 'textEntityTypeStrikethrough';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TextEntityTypeStrikethrough? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeStrikethrough();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A text description shown instead of a raw URL
@immutable
final class TextEntityTypeTextUrl extends TextEntityType {
  TextEntityTypeTextUrl({required this.url});

  /// [url] HTTP or tg:// URL to be opened when the link is clicked
  final String url;

  static const String constructor = 'textEntityTypeTextUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    '@type': constructor,
  };

  static TextEntityTypeTextUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextEntityTypeTextUrl(url: (json['url'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An underlined text
@immutable
final class TextEntityTypeUnderline extends TextEntityType {
  const TextEntityTypeUnderline();

  static const String constructor = 'textEntityTypeUnderline';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TextEntityTypeUnderline? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeUnderline();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An HTTP URL
@immutable
final class TextEntityTypeUrl extends TextEntityType {
  const TextEntityTypeUrl();

  static const String constructor = 'textEntityTypeUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TextEntityTypeUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeUrl();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
