import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about supported accent color for user/chat name,
/// background of empty chat photo, replies to messages and link previews
@immutable
final class AccentColor extends TdObject {
  AccentColor({
    required this.id,
    required this.builtInAccentColorId,
    required this.lightThemeColors,
    required this.darkThemeColors,
    required this.minChannelChatBoostLevel,
  });

  /// [id] Accent color identifier
  final int id;

  /// [builtInAccentColorId] Identifier of a built-in color to use in places,
  /// where only one color is needed; 0-6
  final int builtInAccentColorId;

  /// [lightThemeColors] The list of 1-3 colors in RGB format, describing the
  /// accent color, as expected to be shown in light themes
  final List<int> lightThemeColors;

  /// [darkThemeColors] The list of 1-3 colors in RGB format, describing the
  /// accent color, as expected to be shown in dark themes
  final List<int> darkThemeColors;

  /// [minChannelChatBoostLevel] The minimum chat boost level required to use
  /// the color in a channel chat
  final int minChannelChatBoostLevel;

  static const String constructor = 'accentColor';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'built_in_accent_color_id': builtInAccentColorId,
    'light_theme_colors': lightThemeColors.map((item) => item).toList(),
    'dark_theme_colors': darkThemeColors.map((item) => item).toList(),
    'min_channel_chat_boost_level': minChannelChatBoostLevel,
    '@type': constructor,
  };

  static AccentColor? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AccentColor(
      id: (json['id'] as int?) ?? 0,
      builtInAccentColorId: (json['built_in_accent_color_id'] as int?) ?? 0,
      lightThemeColors: List<int>.from(
        tdListFromJson(
          json['light_theme_colors'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      darkThemeColors: List<int>.from(
        tdListFromJson(
          json['dark_theme_colors'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      minChannelChatBoostLevel:
          (json['min_channel_chat_boost_level'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
