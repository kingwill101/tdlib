import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a fill of a background
@immutable
sealed class BackgroundFill extends TdObject {
  const BackgroundFill();

  static const String constructor = 'backgroundFill';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [BackgroundFillFreeformGradient]
  /// [BackgroundFillGradient]
  /// [BackgroundFillSolid]
  static BackgroundFill? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case BackgroundFillFreeformGradient.constructor:
        return BackgroundFillFreeformGradient.fromJson(json);

      case BackgroundFillGradient.constructor:
        return BackgroundFillGradient.fromJson(json);

      case BackgroundFillSolid.constructor:
        return BackgroundFillSolid.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes a freeform gradient fill of a background
@immutable
final class BackgroundFillFreeformGradient extends BackgroundFill {
  BackgroundFillFreeformGradient({required this.colors});

  /// [colors] A list of 3 or 4 colors of the freeform gradient in the RGB
  /// format
  final List<int> colors;

  static const String constructor = 'backgroundFillFreeformGradient';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'colors': colors.map((item) => item).toList(),
    '@type': constructor,
  };

  static BackgroundFillFreeformGradient? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BackgroundFillFreeformGradient(
      colors: List<int>.from(
        tdListFromJson(
          json['colors'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes a gradient fill of a background
@immutable
final class BackgroundFillGradient extends BackgroundFill {
  BackgroundFillGradient({
    required this.topColor,
    required this.bottomColor,
    required this.rotationAngle,
  });

  /// [topColor] A top color of the background in the RGB format
  final int topColor;

  /// [bottomColor] A bottom color of the background in the RGB format
  final int bottomColor;

  /// [rotationAngle] Clockwise rotation angle of the gradient, in degrees;
  /// 0-359. Must always be divisible by 45
  final int rotationAngle;

  static const String constructor = 'backgroundFillGradient';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'top_color': topColor,
    'bottom_color': bottomColor,
    'rotation_angle': rotationAngle,
    '@type': constructor,
  };

  static BackgroundFillGradient? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BackgroundFillGradient(
      topColor: (json['top_color'] as int?) ?? 0,
      bottomColor: (json['bottom_color'] as int?) ?? 0,
      rotationAngle: (json['rotation_angle'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes a solid fill of a background
@immutable
final class BackgroundFillSolid extends BackgroundFill {
  BackgroundFillSolid({required this.color});

  /// [color] A color of the background in the RGB format
  final int color;

  static const String constructor = 'backgroundFillSolid';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'color': color,
    '@type': constructor,
  };

  static BackgroundFillSolid? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BackgroundFillSolid(color: (json['color'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
