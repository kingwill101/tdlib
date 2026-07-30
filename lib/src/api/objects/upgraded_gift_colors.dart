import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about color scheme for user's name, background of
/// empty chat photo, replies to messages and link previews
@immutable
final class UpgradedGiftColors extends TdObject {
  UpgradedGiftColors({
    required this.id,
    required this.modelCustomEmojiId,
    required this.symbolCustomEmojiId,
    required this.lightThemeAccentColor,
    required this.lightThemeColors,
    required this.darkThemeAccentColor,
    required this.darkThemeColors,
  });

  /// [id] Unique identifier of the upgraded gift colors
  final int id;

  /// [modelCustomEmojiId] Custom emoji identifier of the model of the upgraded
  /// gift
  final int modelCustomEmojiId;

  /// [symbolCustomEmojiId] Custom emoji identifier of the symbol of the
  /// upgraded gift
  final int symbolCustomEmojiId;

  /// [lightThemeAccentColor] Accent color to use in light themes in RGB format
  final int lightThemeAccentColor;

  /// [lightThemeColors] The list of 1-3 colors in RGB format, describing the
  /// accent color, as expected to be shown in light themes
  final List<int> lightThemeColors;

  /// [darkThemeAccentColor] Accent color to use in dark themes in RGB format
  final int darkThemeAccentColor;

  /// [darkThemeColors] The list of 1-3 colors in RGB format, describing the
  /// accent color, as expected to be shown in dark themes
  final List<int> darkThemeColors;

  static const String constructor = 'upgradedGiftColors';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id.toString(),
    'model_custom_emoji_id': modelCustomEmojiId.toString(),
    'symbol_custom_emoji_id': symbolCustomEmojiId.toString(),
    'light_theme_accent_color': lightThemeAccentColor,
    'light_theme_colors': lightThemeColors.map((item) => item).toList(),
    'dark_theme_accent_color': darkThemeAccentColor,
    'dark_theme_colors': darkThemeColors.map((item) => item).toList(),
    '@type': constructor,
  };

  static UpgradedGiftColors? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftColors(
      id: int.tryParse((json['id'] as dynamic)?.toString() ?? '') ?? 0,
      modelCustomEmojiId:
          int.tryParse(
            (json['model_custom_emoji_id'] as dynamic)?.toString() ?? '',
          ) ??
          0,
      symbolCustomEmojiId:
          int.tryParse(
            (json['symbol_custom_emoji_id'] as dynamic)?.toString() ?? '',
          ) ??
          0,
      lightThemeAccentColor: (json['light_theme_accent_color'] as int?) ?? 0,
      lightThemeColors: List<int>.from(
        tdListFromJson(
          json['light_theme_colors'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      darkThemeAccentColor: (json['dark_theme_accent_color'] as int?) ?? 0,
      darkThemeColors: List<int>.from(
        tdListFromJson(
          json['dark_theme_colors'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
