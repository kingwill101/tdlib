import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a chat theme based on an emoji
@immutable
final class EmojiChatTheme extends TdObject {
  EmojiChatTheme({required this.name, this.lightSettings, this.darkSettings});

  /// [name] Theme name
  final String name;

  /// [lightSettings] Theme settings for a light chat theme
  final ThemeSettings? lightSettings;

  /// [darkSettings] Theme settings for a dark chat theme
  final ThemeSettings? darkSettings;

  static const String constructor = 'emojiChatTheme';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'name': name,
    'light_settings': lightSettings?.toJson(),
    'dark_settings': darkSettings?.toJson(),
    '@type': constructor,
  };

  static EmojiChatTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiChatTheme(
      name: (json['name'] as String?) ?? '',
      lightSettings: ThemeSettings.fromJson(
        tdMapFromJson(json['light_settings']),
      ),
      darkSettings: ThemeSettings.fromJson(
        tdMapFromJson(json['dark_settings']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
