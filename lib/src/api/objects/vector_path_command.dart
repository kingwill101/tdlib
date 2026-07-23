import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a vector path command
@immutable
sealed class VectorPathCommand extends TdObject {
  const VectorPathCommand();

  static const String constructor = 'vectorPathCommand';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [VectorPathCommandCubicBezierCurve]
  /// [VectorPathCommandLine]
  static VectorPathCommand? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case VectorPathCommandCubicBezierCurve.constructor:
        return VectorPathCommandCubicBezierCurve.fromJson(json);

      case VectorPathCommandLine.constructor:
        return VectorPathCommandLine.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A cubic B
@immutable
final class VectorPathCommandCubicBezierCurve extends VectorPathCommand {
  VectorPathCommandCubicBezierCurve({
    this.startControlPoint,
    this.endControlPoint,
    this.endPoint,
  });

  final Point? startControlPoint;

  final Point? endControlPoint;

  final Point? endPoint;

  static const String constructor = 'vectorPathCommandCubicBezierCurve';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'start_control_point': startControlPoint?.toJson(),
    'end_control_point': endControlPoint?.toJson(),
    'end_point': endPoint?.toJson(),
    '@type': constructor,
  };

  static VectorPathCommandCubicBezierCurve? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return VectorPathCommandCubicBezierCurve(
      startControlPoint: Point.fromJson(
        tdMapFromJson(json['start_control_point']),
      ),
      endControlPoint: Point.fromJson(tdMapFromJson(json['end_control_point'])),
      endPoint: Point.fromJson(tdMapFromJson(json['end_point'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A straight line to a given point
@immutable
final class VectorPathCommandLine extends VectorPathCommand {
  VectorPathCommandLine({this.endPoint});

  /// [endPoint] The end point of the straight line
  final Point? endPoint;

  static const String constructor = 'vectorPathCommandLine';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'end_point': endPoint?.toJson(),
    '@type': constructor,
  };

  static VectorPathCommandLine? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return VectorPathCommandLine(
      endPoint: Point.fromJson(tdMapFromJson(json['end_point'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
