import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the type of background
@immutable
sealed class BackgroundType extends TdObject {
  const BackgroundType();

  static const String constructor = 'backgroundType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [BackgroundTypeChatTheme]
  /// [BackgroundTypeFill]
  /// [BackgroundTypePattern]
  /// [BackgroundTypeWallpaper]
  static BackgroundType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case BackgroundTypeChatTheme.constructor:
        return BackgroundTypeChatTheme.fromJson(json);

      case BackgroundTypeFill.constructor:
        return BackgroundTypeFill.fromJson(json);

      case BackgroundTypePattern.constructor:
        return BackgroundTypePattern.fromJson(json);

      case BackgroundTypeWallpaper.constructor:
        return BackgroundTypeWallpaper.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A background from a chat theme based on an emoji; can be used only as a
/// chat background in channels
@immutable
final class BackgroundTypeChatTheme extends BackgroundType {
  BackgroundTypeChatTheme({required this.themeName});

  /// [themeName] Name of the emoji chat theme
  final String themeName;

  static const String constructor = 'backgroundTypeChatTheme';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'theme_name': themeName,
    '@type': constructor,
  };

  static BackgroundTypeChatTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BackgroundTypeChatTheme(
      themeName: (json['theme_name'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A filled background
@immutable
final class BackgroundTypeFill extends BackgroundType {
  BackgroundTypeFill({this.fill});

  /// [fill] The background fill
  final BackgroundFill? fill;

  static const String constructor = 'backgroundTypeFill';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'fill': fill?.toJson(),
    '@type': constructor,
  };

  static BackgroundTypeFill? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BackgroundTypeFill(
      fill: BackgroundFill.fromJson(tdMapFromJson(json['fill'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A PNG or TGV (gzipped subset of SVG with MIME type
/// "application/x-tgwallpattern") pattern to be combined with the background
/// fill chosen by the user
@immutable
final class BackgroundTypePattern extends BackgroundType {
  BackgroundTypePattern({
    this.fill,
    required this.intensity,
    required this.isInverted,
    required this.isMoving,
  });

  /// [fill] Fill of the background
  final BackgroundFill? fill;

  /// [intensity] Intensity of the pattern when it is shown above the filled
  /// background; 0-100
  final int intensity;

  /// [isInverted] True, if the background fill must be applied only to the
  /// pattern itself. All other pixels are black in this case. For dark themes
  /// only
  final bool isInverted;

  /// [isMoving] True, if the background needs to be slightly moved when device
  /// is tilted
  final bool isMoving;

  static const String constructor = 'backgroundTypePattern';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'fill': fill?.toJson(),
    'intensity': intensity,
    'is_inverted': isInverted,
    'is_moving': isMoving,
    '@type': constructor,
  };

  static BackgroundTypePattern? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BackgroundTypePattern(
      fill: BackgroundFill.fromJson(tdMapFromJson(json['fill'])),
      intensity: (json['intensity'] as int?) ?? 0,
      isInverted: (json['is_inverted'] as bool?) ?? false,
      isMoving: (json['is_moving'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A wallpaper in JPEG format
@immutable
final class BackgroundTypeWallpaper extends BackgroundType {
  BackgroundTypeWallpaper({required this.isBlurred, required this.isMoving});

  /// [isBlurred] True, if the wallpaper must be downscaled to fit in 450x450
  /// square and then box-blurred with radius 12
  final bool isBlurred;

  /// [isMoving] True, if the background needs to be slightly moved when device
  /// is tilted
  final bool isMoving;

  static const String constructor = 'backgroundTypeWallpaper';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_blurred': isBlurred,
    'is_moving': isMoving,
    '@type': constructor,
  };

  static BackgroundTypeWallpaper? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BackgroundTypeWallpaper(
      isBlurred: (json['is_blurred'] as bool?) ?? false,
      isMoving: (json['is_moving'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
