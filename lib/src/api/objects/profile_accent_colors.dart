import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about supported accent colors for user profile photo
/// background in RGB format
@immutable
final class ProfileAccentColors extends TdObject {
  ProfileAccentColors({
    required this.paletteColors,
    required this.backgroundColors,
    required this.storyColors,
  });

  /// [paletteColors] The list of 1-2 colors in RGB format, describing the
  /// colors, as expected to be shown in the color palette settings
  final List<int> paletteColors;

  /// [backgroundColors] The list of 1-2 colors in RGB format, describing the
  /// colors, as expected to be used for the profile photo background
  final List<int> backgroundColors;

  /// [storyColors] The list of 2 colors in RGB format, describing the colors of
  /// the gradient to be used for the unread active story indicator around
  /// profile photo
  final List<int> storyColors;

  static const String constructor = 'profileAccentColors';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'palette_colors': paletteColors.map((item) => item).toList(),
    'background_colors': backgroundColors.map((item) => item).toList(),
    'story_colors': storyColors.map((item) => item).toList(),
    '@type': constructor,
  };

  static ProfileAccentColors? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProfileAccentColors(
      paletteColors: List<int>.from(
        tdListFromJson(
          json['palette_colors'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      backgroundColors: List<int>.from(
        tdListFromJson(
          json['background_colors'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      storyColors: List<int>.from(
        tdListFromJson(
          json['story_colors'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
