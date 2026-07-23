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
  /// [RichTextBold]
  /// [RichTextEmailAddress]
  /// [RichTextFixed]
  /// [RichTextIcon]
  /// [RichTextItalic]
  /// [RichTextMarked]
  /// [RichTextPhoneNumber]
  /// [RichTextPlain]
  /// [RichTextReference]
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

      case RichTextBold.constructor:
        return RichTextBold.fromJson(json);

      case RichTextEmailAddress.constructor:
        return RichTextEmailAddress.fromJson(json);

      case RichTextFixed.constructor:
        return RichTextFixed.fromJson(json);

      case RichTextIcon.constructor:
        return RichTextIcon.fromJson(json);

      case RichTextItalic.constructor:
        return RichTextItalic.fromJson(json);

      case RichTextMarked.constructor:
        return RichTextMarked.fromJson(json);

      case RichTextPhoneNumber.constructor:
        return RichTextPhoneNumber.fromJson(json);

      case RichTextPlain.constructor:
        return RichTextPlain.fromJson(json);

      case RichTextReference.constructor:
        return RichTextReference.fromJson(json);

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

  /// [url] An HTTP URL, opening the anchor
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

/// A rich text email link
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

/// A small image inside the text
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

/// A reference to a richTexts object on the same page
@immutable
final class RichTextReference extends RichText {
  RichTextReference({this.text, required this.anchorName, required this.url});

  /// [text] The text
  final RichText? text;

  /// [anchorName] The name of a richTextAnchor object, which is the first
  /// element of the target richTexts object
  final String anchorName;

  /// [url] An HTTP URL, opening the reference
  final String url;

  static const String constructor = 'richTextReference';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'anchor_name': anchorName,
    'url': url,
    '@type': constructor,
  };

  static RichTextReference? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextReference(
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

  /// [isCached] True, if the URL has cached instant view server-side
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
