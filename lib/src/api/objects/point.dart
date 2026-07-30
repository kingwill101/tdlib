import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A point on a Cartesian plane
@immutable
final class Point extends TdObject {
  Point({required this.x, required this.y});

  /// [x] The point's first coordinate
  final double x;

  /// [y] The point's second coordinate
  final double y;

  static const String constructor = 'point';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'x': x,
    'y': y,
    '@type': constructor,
  };

  static Point? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Point(
      x: ((json['x'] as num?) ?? 0.0).toDouble(),
      y: ((json['y'] as num?) ?? 0.0).toDouble(),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
