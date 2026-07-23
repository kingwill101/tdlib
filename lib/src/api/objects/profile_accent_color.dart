import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about supported accent color for user profile photo
/// background
@immutable
final class ProfileAccentColor extends TdObject {
  ProfileAccentColor({
    required this.id,
    this.lightThemeColors,
    this.darkThemeColors,
    required this.minSupergroupChatBoostLevel,
    required this.minChannelChatBoostLevel,
  });

  /// [id] Profile accent color identifier
  final int id;

  /// [lightThemeColors] Accent colors expected to be used in light themes
  final ProfileAccentColors? lightThemeColors;

  /// [darkThemeColors] Accent colors expected to be used in dark themes
  final ProfileAccentColors? darkThemeColors;

  /// [minSupergroupChatBoostLevel] The minimum chat boost level required to use
  /// the color in a supergroup chat
  final int minSupergroupChatBoostLevel;

  /// [minChannelChatBoostLevel] The minimum chat boost level required to use
  /// the color in a channel chat
  final int minChannelChatBoostLevel;

  static const String constructor = 'profileAccentColor';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'light_theme_colors': lightThemeColors?.toJson(),
    'dark_theme_colors': darkThemeColors?.toJson(),
    'min_supergroup_chat_boost_level': minSupergroupChatBoostLevel,
    'min_channel_chat_boost_level': minChannelChatBoostLevel,
    '@type': constructor,
  };

  static ProfileAccentColor? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProfileAccentColor(
      id: (json['id'] as int?) ?? 0,
      lightThemeColors: ProfileAccentColors.fromJson(
        tdMapFromJson(json['light_theme_colors']),
      ),
      darkThemeColors: ProfileAccentColors.fromJson(
        tdMapFromJson(json['dark_theme_colors']),
      ),
      minSupergroupChatBoostLevel:
          (json['min_supergroup_chat_boost_level'] as int?) ?? 0,
      minChannelChatBoostLevel:
          (json['min_channel_chat_boost_level'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
