import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a thumbnail
@immutable
final class Thumbnail extends TdObject {
  Thumbnail({
    this.format,
    required this.width,
    required this.height,
    this.file,
  });

  /// [format] Thumbnail format
  final ThumbnailFormat? format;

  /// [width] Thumbnail width
  final int width;

  /// [height] Thumbnail height
  final int height;

  /// [file] The thumbnail
  final File? file;

  static const String constructor = 'thumbnail';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'format': format?.toJson(),
    'width': width,
    'height': height,
    'file': file?.toJson(),
    '@type': constructor,
  };

  static Thumbnail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Thumbnail(
      format: ThumbnailFormat.fromJson(tdMapFromJson(json['format'])),
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
      file: File.fromJson(tdMapFromJson(json['file'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
