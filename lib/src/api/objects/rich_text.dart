import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a formatted text object
@immutable
sealed class RichText extends TdObject {
  const RichText();

  static const String constructor = 'richText';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [RichTextAnchor]
  /// [RichTextAnchorLink]
  /// [RichTextBankCardNumber]
  /// [RichTextBold]
  /// [RichTextBotCommand]
  /// [RichTextCashtag]
  /// [RichTextCustomEmoji]
  /// [RichTextDateTime]
  /// [RichTextDiff]
  /// [RichTextEmailAddress]
  /// [RichTextFixed]
  /// [RichTextHashtag]
  /// [RichTextIcon]
  /// [RichTextItalic]
  /// [RichTextMarked]
  /// [RichTextMathematicalExpression]
  /// [RichTextMention]
  /// [RichTextMentionName]
  /// [RichTextPhoneNumber]
  /// [RichTextPlain]
  /// [RichTextReference]
  /// [RichTextReferenceLink]
  /// [RichTextSpoiler]
  /// [RichTextStrikethrough]
  /// [RichTextSubscript]
  /// [RichTextSuperscript]
  /// [RichTextUnderline]
  /// [RichTextUrl]
  /// [RichTexts]
  static RichText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case RichTextAnchor.constructor:
        return RichTextAnchor.fromJson(json);

      case RichTextAnchorLink.constructor:
        return RichTextAnchorLink.fromJson(json);

      case RichTextBankCardNumber.constructor:
        return RichTextBankCardNumber.fromJson(json);

      case RichTextBold.constructor:
        return RichTextBold.fromJson(json);

      case RichTextBotCommand.constructor:
        return RichTextBotCommand.fromJson(json);

      case RichTextCashtag.constructor:
        return RichTextCashtag.fromJson(json);

      case RichTextCustomEmoji.constructor:
        return RichTextCustomEmoji.fromJson(json);

      case RichTextDateTime.constructor:
        return RichTextDateTime.fromJson(json);

      case RichTextDiff.constructor:
        return RichTextDiff.fromJson(json);

      case RichTextEmailAddress.constructor:
        return RichTextEmailAddress.fromJson(json);

      case RichTextFixed.constructor:
        return RichTextFixed.fromJson(json);

      case RichTextHashtag.constructor:
        return RichTextHashtag.fromJson(json);

      case RichTextIcon.constructor:
        return RichTextIcon.fromJson(json);

      case RichTextItalic.constructor:
        return RichTextItalic.fromJson(json);

      case RichTextMarked.constructor:
        return RichTextMarked.fromJson(json);

      case RichTextMathematicalExpression.constructor:
        return RichTextMathematicalExpression.fromJson(json);

      case RichTextMention.constructor:
        return RichTextMention.fromJson(json);

      case RichTextMentionName.constructor:
        return RichTextMentionName.fromJson(json);

      case RichTextPhoneNumber.constructor:
        return RichTextPhoneNumber.fromJson(json);

      case RichTextPlain.constructor:
        return RichTextPlain.fromJson(json);

      case RichTextReference.constructor:
        return RichTextReference.fromJson(json);

      case RichTextReferenceLink.constructor:
        return RichTextReferenceLink.fromJson(json);

      case RichTextSpoiler.constructor:
        return RichTextSpoiler.fromJson(json);

      case RichTextStrikethrough.constructor:
        return RichTextStrikethrough.fromJson(json);

      case RichTextSubscript.constructor:
        return RichTextSubscript.fromJson(json);

      case RichTextSuperscript.constructor:
        return RichTextSuperscript.fromJson(json);

      case RichTextUnderline.constructor:
        return RichTextUnderline.fromJson(json);

      case RichTextUrl.constructor:
        return RichTextUrl.fromJson(json);

      case RichTexts.constructor:
        return RichTexts.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An anchor
@immutable
final class RichTextAnchor extends RichText {
  RichTextAnchor({required this.name});

  /// [name] Anchor name
  final String name;

  static const String constructor = 'richTextAnchor';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'name': name,
    '@type': constructor,
  };

  static RichTextAnchor? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextAnchor(name: (json['name'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A link to an anchor on the same page
@immutable
final class RichTextAnchorLink extends RichText {
  RichTextAnchorLink({this.text, required this.anchorName, required this.url});

  /// [text] The link text
  final RichText? text;

  /// [anchorName] The anchor name. If the name is empty, the link must bring
  /// back to top
  final String anchorName;

  /// [url] An HTTP URL that opens the anchor
  final String url;

  static const String constructor = 'richTextAnchorLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'anchor_name': anchorName,
    'url': url,
    '@type': constructor,
  };

  static RichTextAnchorLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextAnchorLink(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
      anchorName: (json['anchor_name'] as String?) ?? '',
      url: (json['url'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A bank card number
@immutable
final class RichTextBankCardNumber extends RichText {
  RichTextBankCardNumber({this.text, required this.bankCardNumber});

  /// [text] Text
  final RichText? text;

  /// [bankCardNumber] The number of the bank card
  final String bankCardNumber;

  static const String constructor = 'richTextBankCardNumber';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'bank_card_number': bankCardNumber,
    '@type': constructor,
  };

  static RichTextBankCardNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextBankCardNumber(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
      bankCardNumber: (json['bank_card_number'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A bold rich text
@immutable
final class RichTextBold extends RichText {
  RichTextBold({this.text});

  /// [text] Text
  final RichText? text;

  static const String constructor = 'richTextBold';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    '@type': constructor,
  };

  static RichTextBold? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextBold(text: RichText.fromJson(tdMapFromJson(json['text'])));
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A bot command
@immutable
final class RichTextBotCommand extends RichText {
  RichTextBotCommand({this.text, required this.botCommand});

  /// [text] Text
  final RichText? text;

  /// [botCommand] The bot command
  final String botCommand;

  static const String constructor = 'richTextBotCommand';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'bot_command': botCommand,
    '@type': constructor,
  };

  static RichTextBotCommand? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextBotCommand(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
      botCommand: (json['bot_command'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A cashtag
@immutable
final class RichTextCashtag extends RichText {
  RichTextCashtag({this.text, required this.cashtag});

  /// [text] Text
  final RichText? text;

  /// [cashtag] The cashtag
  final String cashtag;

  static const String constructor = 'richTextCashtag';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'cashtag': cashtag,
    '@type': constructor,
  };

  static RichTextCashtag? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextCashtag(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
      cashtag: (json['cashtag'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A custom emoji
@immutable
final class RichTextCustomEmoji extends RichText {
  RichTextCustomEmoji({
    required this.customEmojiId,
    required this.alternativeText,
  });

  /// [customEmojiId] Unique identifier of the custom emoji
  final int customEmojiId;

  /// [alternativeText] Alternative text for the custom emoji
  final String alternativeText;

  static const String constructor = 'richTextCustomEmoji';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'custom_emoji_id': customEmojiId.toString(),
    'alternative_text': alternativeText,
    '@type': constructor,
  };

  static RichTextCustomEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextCustomEmoji(
      customEmojiId:
          int.tryParse(
            (json['custom_emoji_id'] as dynamic)?.toString() ?? '',
          ) ??
          0,
      alternativeText: (json['alternative_text'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A date and time
@immutable
final class RichTextDateTime extends RichText {
  RichTextDateTime({this.text, required this.unixTime, this.formattingType});

  /// [text] Original text
  final RichText? text;

  /// [unixTime] Point in time (Unix timestamp) representing the date and time
  final int unixTime;

  /// [formattingType] Date and time formatting type; may be null if none and
  /// the original text must not be changed
  final DateTimeFormattingType? formattingType;

  static const String constructor = 'richTextDateTime';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'unix_time': unixTime,
    'formatting_type': formattingType?.toJson(),
    '@type': constructor,
  };

  static RichTextDateTime? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextDateTime(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
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

/// A rich text replacing another rich text; not supported in inputRichMessage
@immutable
final class RichTextDiff extends RichText {
  RichTextDiff({this.text, this.oldText});

  /// [text] Text
  final RichText? text;

  /// [oldText] The old text
  final RichText? oldText;

  static const String constructor = 'richTextDiff';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'old_text': oldText?.toJson(),
    '@type': constructor,
  };

  static RichTextDiff? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextDiff(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
      oldText: RichText.fromJson(tdMapFromJson(json['old_text'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A rich text email address
@immutable
final class RichTextEmailAddress extends RichText {
  RichTextEmailAddress({this.text, required this.emailAddress});

  /// [text] Text
  final RichText? text;

  /// [emailAddress] Email address
  final String emailAddress;

  static const String constructor = 'richTextEmailAddress';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'email_address': emailAddress,
    '@type': constructor,
  };

  static RichTextEmailAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextEmailAddress(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
      emailAddress: (json['email_address'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A fixed-width rich text
@immutable
final class RichTextFixed extends RichText {
  RichTextFixed({this.text});

  /// [text] Text
  final RichText? text;

  static const String constructor = 'richTextFixed';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    '@type': constructor,
  };

  static RichTextFixed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextFixed(text: RichText.fromJson(tdMapFromJson(json['text'])));
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A hashtag
@immutable
final class RichTextHashtag extends RichText {
  RichTextHashtag({this.text, required this.hashtag});

  /// [text] Text
  final RichText? text;

  /// [hashtag] The hashtag
  final String hashtag;

  static const String constructor = 'richTextHashtag';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'hashtag': hashtag,
    '@type': constructor,
  };

  static RichTextHashtag? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextHashtag(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
      hashtag: (json['hashtag'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A small image inside the text; instant view only
@immutable
final class RichTextIcon extends RichText {
  RichTextIcon({this.document, required this.width, required this.height});

  /// [document] The image represented as a document. The image can be in GIF,
  /// JPEG or PNG format
  final Document? document;

  /// [width] Width of a bounding box in which the image must be shown; 0 if
  /// unknown
  final int width;

  /// [height] Height of a bounding box in which the image must be shown; 0 if
  /// unknown
  final int height;

  static const String constructor = 'richTextIcon';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'document': document?.toJson(),
    'width': width,
    'height': height,
    '@type': constructor,
  };

  static RichTextIcon? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextIcon(
      document: Document.fromJson(tdMapFromJson(json['document'])),
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An italicized rich text
@immutable
final class RichTextItalic extends RichText {
  RichTextItalic({this.text});

  /// [text] Text
  final RichText? text;

  static const String constructor = 'richTextItalic';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    '@type': constructor,
  };

  static RichTextItalic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextItalic(text: RichText.fromJson(tdMapFromJson(json['text'])));
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A marked rich text
@immutable
final class RichTextMarked extends RichText {
  RichTextMarked({this.text});

  /// [text] Text
  final RichText? text;

  static const String constructor = 'richTextMarked';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    '@type': constructor,
  };

  static RichTextMarked? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextMarked(text: RichText.fromJson(tdMapFromJson(json['text'])));
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A mathematical expression
@immutable
final class RichTextMathematicalExpression extends RichText {
  RichTextMathematicalExpression({required this.expression});

  /// [expression] The expression in LaTeX format
  final String expression;

  static const String constructor = 'richTextMathematicalExpression';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'expression': expression,
    '@type': constructor,
  };

  static RichTextMathematicalExpression? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextMathematicalExpression(
      expression: (json['expression'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A mention of a Telegram user or chat by a username
@immutable
final class RichTextMention extends RichText {
  RichTextMention({this.text, required this.username});

  /// [text] Text
  final RichText? text;

  /// [username] The username
  final String username;

  static const String constructor = 'richTextMention';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'username': username,
    '@type': constructor,
  };

  static RichTextMention? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextMention(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
      username: (json['username'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A rich text that serves as a mention of a user
@immutable
final class RichTextMentionName extends RichText {
  RichTextMentionName({this.text, required this.userId});

  /// [text] Text
  final RichText? text;

  /// [userId] Identifier of the mentioned user
  final int userId;

  static const String constructor = 'richTextMentionName';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'user_id': userId,
    '@type': constructor,
  };

  static RichTextMentionName? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextMentionName(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
      userId: (json['user_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A rich text phone number
@immutable
final class RichTextPhoneNumber extends RichText {
  RichTextPhoneNumber({this.text, required this.phoneNumber});

  /// [text] Text
  final RichText? text;

  /// [phoneNumber] Phone number
  final String phoneNumber;

  static const String constructor = 'richTextPhoneNumber';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'phone_number': phoneNumber,
    '@type': constructor,
  };

  static RichTextPhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextPhoneNumber(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
      phoneNumber: (json['phone_number'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A plain text
@immutable
final class RichTextPlain extends RichText {
  RichTextPlain({required this.text});

  /// [text] Text
  final String text;

  static const String constructor = 'richTextPlain';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text,
    '@type': constructor,
  };

  static RichTextPlain? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextPlain(text: (json['text'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A reference
@immutable
final class RichTextReference extends RichText {
  RichTextReference({required this.name, this.text});

  /// [name] Reference name
  final String name;

  /// [text] Text of the reference
  final RichText? text;

  static const String constructor = 'richTextReference';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'name': name,
    'text': text?.toJson(),
    '@type': constructor,
  };

  static RichTextReference? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextReference(
      name: (json['name'] as String?) ?? '',
      text: RichText.fromJson(tdMapFromJson(json['text'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A link to a reference on the same page
@immutable
final class RichTextReferenceLink extends RichText {
  RichTextReferenceLink({
    this.text,
    required this.referenceName,
    required this.url,
  });

  /// [text] The link text
  final RichText? text;

  /// [referenceName] The reference name
  final String referenceName;

  /// [url] An HTTP URL that opens the reference
  final String url;

  static const String constructor = 'richTextReferenceLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'reference_name': referenceName,
    'url': url,
    '@type': constructor,
  };

  static RichTextReferenceLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextReferenceLink(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
      referenceName: (json['reference_name'] as String?) ?? '',
      url: (json['url'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A spoilered rich text
@immutable
final class RichTextSpoiler extends RichText {
  RichTextSpoiler({this.text});

  /// [text] Text
  final RichText? text;

  static const String constructor = 'richTextSpoiler';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    '@type': constructor,
  };

  static RichTextSpoiler? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextSpoiler(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A strikethrough rich text
@immutable
final class RichTextStrikethrough extends RichText {
  RichTextStrikethrough({this.text});

  /// [text] Text
  final RichText? text;

  static const String constructor = 'richTextStrikethrough';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    '@type': constructor,
  };

  static RichTextStrikethrough? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextStrikethrough(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A subscript rich text
@immutable
final class RichTextSubscript extends RichText {
  RichTextSubscript({this.text});

  /// [text] Text
  final RichText? text;

  static const String constructor = 'richTextSubscript';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    '@type': constructor,
  };

  static RichTextSubscript? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextSubscript(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A superscript rich text
@immutable
final class RichTextSuperscript extends RichText {
  RichTextSuperscript({this.text});

  /// [text] Text
  final RichText? text;

  static const String constructor = 'richTextSuperscript';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    '@type': constructor,
  };

  static RichTextSuperscript? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextSuperscript(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An underlined rich text
@immutable
final class RichTextUnderline extends RichText {
  RichTextUnderline({this.text});

  /// [text] Text
  final RichText? text;

  static const String constructor = 'richTextUnderline';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    '@type': constructor,
  };

  static RichTextUnderline? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextUnderline(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A rich text URL link
@immutable
final class RichTextUrl extends RichText {
  RichTextUrl({this.text, required this.url, required this.isCached});

  /// [text] Text
  final RichText? text;

  /// [url] URL
  final String url;

  /// [isCached] True, if the URL has cached instant view server-side; instant
  /// view only
  final bool isCached;

  static const String constructor = 'richTextUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'url': url,
    'is_cached': isCached,
    '@type': constructor,
  };

  static RichTextUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextUrl(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
      url: (json['url'] as String?) ?? '',
      isCached: (json['is_cached'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A concatenation of rich texts
@immutable
final class RichTexts extends RichText {
  RichTexts({required this.texts});

  /// [texts] Texts
  final List<RichText> texts;

  static const String constructor = 'richTexts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'texts': texts.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static RichTexts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTexts(
      texts: List<RichText>.from(
        tdListFromJson(json['texts'])
            .map((item) => RichText.fromJson(tdMapFromJson(item)))
            .whereType<RichText>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
