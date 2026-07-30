import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a chat theme
@immutable
sealed class ChatTheme extends TdObject {
  const ChatTheme();

  static const String constructor = 'chatTheme';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ChatThemeEmoji]
  /// [ChatThemeGift]
  static ChatTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatThemeEmoji.constructor:
        return ChatThemeEmoji.fromJson(json);

      case ChatThemeGift.constructor:
        return ChatThemeGift.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A chat theme based on an emoji
@immutable
final class ChatThemeEmoji extends ChatTheme {
  ChatThemeEmoji({required this.name});

  /// [name] Name of the theme; full theme description is received through
  /// updateEmojiChatThemes
  final String name;

  static const String constructor = 'chatThemeEmoji';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'name': name,
    '@type': constructor,
  };

  static ChatThemeEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatThemeEmoji(name: (json['name'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A chat theme based on an upgraded gift
@immutable
final class ChatThemeGift extends ChatTheme {
  ChatThemeGift({this.giftTheme});

  /// [giftTheme] The chat theme
  final GiftChatTheme? giftTheme;

  static const String constructor = 'chatThemeGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift_theme': giftTheme?.toJson(),
    '@type': constructor,
  };

  static ChatThemeGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatThemeGift(
      giftTheme: GiftChatTheme.fromJson(tdMapFromJson(json['gift_theme'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
