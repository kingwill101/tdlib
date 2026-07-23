import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a chat theme to set
@immutable
sealed class InputChatTheme extends TdObject {
  const InputChatTheme();

  static const String constructor = 'inputChatTheme';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [InputChatThemeEmoji]
  /// [InputChatThemeGift]
  static InputChatTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputChatThemeEmoji.constructor:
        return InputChatThemeEmoji.fromJson(json);

      case InputChatThemeGift.constructor:
        return InputChatThemeGift.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A theme based on an emoji
@immutable
final class InputChatThemeEmoji extends InputChatTheme {
  InputChatThemeEmoji({required this.name});

  /// [name] Name of the theme
  final String name;

  static const String constructor = 'inputChatThemeEmoji';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'name': name,
    '@type': constructor,
  };

  static InputChatThemeEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputChatThemeEmoji(name: (json['name'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A theme based on an upgraded gift
@immutable
final class InputChatThemeGift extends InputChatTheme {
  InputChatThemeGift({required this.name});

  /// [name] Name of the upgraded gift. A gift can be used only in one chat in a
  /// time. When the same gift is used in another chat, theme in the previous
  /// chat is reset to default
  final String name;

  static const String constructor = 'inputChatThemeGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'name': name,
    '@type': constructor,
  };

  static InputChatThemeGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputChatThemeGift(name: (json['name'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
