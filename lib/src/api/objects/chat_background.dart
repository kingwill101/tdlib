import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a background set for a specific chat
@immutable
final class ChatBackground extends TdObject {
  ChatBackground({this.background, required this.darkThemeDimming});

  /// [background] The background
  final Background? background;

  /// [darkThemeDimming] Dimming of the background in dark themes, as a
  /// percentage; 0-100. Applied only to Wallpaper and Fill types of background
  final int darkThemeDimming;

  static const String constructor = 'chatBackground';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'background': background?.toJson(),
    'dark_theme_dimming': darkThemeDimming,
    '@type': constructor,
  };

  static ChatBackground? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatBackground(
      background: Background.fromJson(tdMapFromJson(json['background'])),
      darkThemeDimming: (json['dark_theme_dimming'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
