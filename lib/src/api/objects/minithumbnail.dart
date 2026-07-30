import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Thumbnail image of a very poor quality and low resolution
@immutable
final class Minithumbnail extends TdObject {
  Minithumbnail({
    required this.width,
    required this.height,
    required this.data,
  });

  /// [width] Thumbnail width, usually doesn't exceed 40
  final int width;

  /// [height] Thumbnail height, usually doesn't exceed 40
  final int height;

  /// [data] The thumbnail in JPEG format
  final String data;

  static const String constructor = 'minithumbnail';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'width': width,
    'height': height,
    'data': data,
    '@type': constructor,
  };

  static Minithumbnail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Minithumbnail(
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
      data: (json['data'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
