import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the type of inline keyboard button
@immutable
sealed class InlineKeyboardButtonType extends TdObject {
  const InlineKeyboardButtonType();

  static const String constructor = 'inlineKeyboardButtonType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [InlineKeyboardButtonTypeBuy]
  /// [InlineKeyboardButtonTypeCallback]
  /// [InlineKeyboardButtonTypeCallbackGame]
  /// [InlineKeyboardButtonTypeCallbackWithPassword]
  /// [InlineKeyboardButtonTypeCopyText]
  /// [InlineKeyboardButtonTypeLoginUrl]
  /// [InlineKeyboardButtonTypeSwitchInline]
  /// [InlineKeyboardButtonTypeUrl]
  /// [InlineKeyboardButtonTypeUser]
  /// [InlineKeyboardButtonTypeWebApp]
  static InlineKeyboardButtonType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InlineKeyboardButtonTypeBuy.constructor:
        return InlineKeyboardButtonTypeBuy.fromJson(json);

      case InlineKeyboardButtonTypeCallback.constructor:
        return InlineKeyboardButtonTypeCallback.fromJson(json);

      case InlineKeyboardButtonTypeCallbackGame.constructor:
        return InlineKeyboardButtonTypeCallbackGame.fromJson(json);

      case InlineKeyboardButtonTypeCallbackWithPassword.constructor:
        return InlineKeyboardButtonTypeCallbackWithPassword.fromJson(json);

      case InlineKeyboardButtonTypeCopyText.constructor:
        return InlineKeyboardButtonTypeCopyText.fromJson(json);

      case InlineKeyboardButtonTypeLoginUrl.constructor:
        return InlineKeyboardButtonTypeLoginUrl.fromJson(json);

      case InlineKeyboardButtonTypeSwitchInline.constructor:
        return InlineKeyboardButtonTypeSwitchInline.fromJson(json);

      case InlineKeyboardButtonTypeUrl.constructor:
        return InlineKeyboardButtonTypeUrl.fromJson(json);

      case InlineKeyboardButtonTypeUser.constructor:
        return InlineKeyboardButtonTypeUser.fromJson(json);

      case InlineKeyboardButtonTypeWebApp.constructor:
        return InlineKeyboardButtonTypeWebApp.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A button to buy something. This button must be in the first column and row
/// of the keyboard and can be attached only to a message with content of the
/// type messageInvoice
@immutable
final class InlineKeyboardButtonTypeBuy extends InlineKeyboardButtonType {
  const InlineKeyboardButtonTypeBuy();

  static const String constructor = 'inlineKeyboardButtonTypeBuy';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static InlineKeyboardButtonTypeBuy? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InlineKeyboardButtonTypeBuy();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A button that sends a callback query to a bot
@immutable
final class InlineKeyboardButtonTypeCallback extends InlineKeyboardButtonType {
  InlineKeyboardButtonTypeCallback({required this.data});

  /// [data] Data to be sent to the bot via a callback query
  final String data;

  static const String constructor = 'inlineKeyboardButtonTypeCallback';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'data': data,
    '@type': constructor,
  };

  static InlineKeyboardButtonTypeCallback? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButtonTypeCallback(
      data: (json['data'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A button with a game that sends a callback query to a bot. This button
/// must be in the first column and row of the keyboard and can be attached
/// only to a message with content of the type messageGame
@immutable
final class InlineKeyboardButtonTypeCallbackGame
    extends InlineKeyboardButtonType {
  const InlineKeyboardButtonTypeCallbackGame();

  static const String constructor = 'inlineKeyboardButtonTypeCallbackGame';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static InlineKeyboardButtonTypeCallbackGame? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const InlineKeyboardButtonTypeCallbackGame();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A button that asks for the 2-step verification password of the current
/// user and then sends a callback query to a bot
@immutable
final class InlineKeyboardButtonTypeCallbackWithPassword
    extends InlineKeyboardButtonType {
  InlineKeyboardButtonTypeCallbackWithPassword({required this.data});

  /// [data] Data to be sent to the bot via a callback query
  final String data;

  static const String constructor =
      'inlineKeyboardButtonTypeCallbackWithPassword';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'data': data,
    '@type': constructor,
  };

  static InlineKeyboardButtonTypeCallbackWithPassword? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButtonTypeCallbackWithPassword(
      data: (json['data'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A button that copies specified text to clipboard
@immutable
final class InlineKeyboardButtonTypeCopyText extends InlineKeyboardButtonType {
  InlineKeyboardButtonTypeCopyText({required this.text});

  /// [text] The text to copy to clipboard
  final String text;

  static const String constructor = 'inlineKeyboardButtonTypeCopyText';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text,
    '@type': constructor,
  };

  static InlineKeyboardButtonTypeCopyText? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButtonTypeCopyText(
      text: (json['text'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A button that opens a specified URL and automatically authorize the
/// current user by calling getLoginUrlInfo
@immutable
final class InlineKeyboardButtonTypeLoginUrl extends InlineKeyboardButtonType {
  InlineKeyboardButtonTypeLoginUrl({
    required this.url,
    required this.id,
    required this.forwardText,
  });

  /// [url] An HTTP URL to pass to getLoginUrlInfo
  final String url;

  /// [id] Unique button identifier
  final int id;

  /// [forwardText] If non-empty, new text of the button in forwarded messages
  final String forwardText;

  static const String constructor = 'inlineKeyboardButtonTypeLoginUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    'id': id,
    'forward_text': forwardText,
    '@type': constructor,
  };

  static InlineKeyboardButtonTypeLoginUrl? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButtonTypeLoginUrl(
      url: (json['url'] as String?) ?? '',
      id: (json['id'] as int?) ?? 0,
      forwardText: (json['forward_text'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A button that forces an inline query to the bot to be inserted in the
/// input field
@immutable
final class InlineKeyboardButtonTypeSwitchInline
    extends InlineKeyboardButtonType {
  InlineKeyboardButtonTypeSwitchInline({required this.query, this.targetChat});

  /// [query] Inline query to be sent to the bot
  final String query;

  /// [targetChat] Target chat from which to send the inline query
  final TargetChat? targetChat;

  static const String constructor = 'inlineKeyboardButtonTypeSwitchInline';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'query': query,
    'target_chat': targetChat?.toJson(),
    '@type': constructor,
  };

  static InlineKeyboardButtonTypeSwitchInline? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButtonTypeSwitchInline(
      query: (json['query'] as String?) ?? '',
      targetChat: TargetChat.fromJson(tdMapFromJson(json['target_chat'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A button that opens a specified URL
@immutable
final class InlineKeyboardButtonTypeUrl extends InlineKeyboardButtonType {
  InlineKeyboardButtonTypeUrl({required this.url});

  /// [url] HTTP or tg:// URL to open. If the link is of the type
  /// internalLinkTypeWebApp, then the button must be marked as a Web App button
  final String url;

  static const String constructor = 'inlineKeyboardButtonTypeUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    '@type': constructor,
  };

  static InlineKeyboardButtonTypeUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButtonTypeUrl(url: (json['url'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A button with a user reference to be handled in the same way as
/// textEntityTypeMentionName entities
@immutable
final class InlineKeyboardButtonTypeUser extends InlineKeyboardButtonType {
  InlineKeyboardButtonTypeUser({required this.userId});

  /// [userId] User identifier
  final int userId;

  static const String constructor = 'inlineKeyboardButtonTypeUser';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    '@type': constructor,
  };

  static InlineKeyboardButtonTypeUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButtonTypeUser(userId: (json['user_id'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A button that opens a Web App by calling openWebApp
@immutable
final class InlineKeyboardButtonTypeWebApp extends InlineKeyboardButtonType {
  InlineKeyboardButtonTypeWebApp({required this.url});

  /// [url] An HTTP URL to pass to openWebApp
  final String url;

  static const String constructor = 'inlineKeyboardButtonTypeWebApp';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    '@type': constructor,
  };

  static InlineKeyboardButtonTypeWebApp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButtonTypeWebApp(url: (json['url'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
