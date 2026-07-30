import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an image in JPEG format
@immutable
final class PhotoSize extends TdObject {
  PhotoSize({
    required this.type,
    this.photo,
    required this.width,
    required this.height,
    required this.progressiveSizes,
  });

  /// [type] Image type (see https://core.telegram.org/constructor/photoSize)
  final String type;

  /// [photo] Information about the image file
  final File? photo;

  /// [width] Image width
  final int width;

  /// [height] Image height
  final int height;

  /// [progressiveSizes] Sizes of progressive JPEG file prefixes, which can be
  /// used to preliminarily show the image; in bytes
  final List<int> progressiveSizes;

  static const String constructor = 'photoSize';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'type': type,
    'photo': photo?.toJson(),
    'width': width,
    'height': height,
    'progressive_sizes': progressiveSizes.map((item) => item).toList(),
    '@type': constructor,
  };

  static PhotoSize? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PhotoSize(
      type: (json['type'] as String?) ?? '',
      photo: File.fromJson(tdMapFromJson(json['photo'])),
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
      progressiveSizes: List<int>.from(
        tdListFromJson(
          json['progressive_sizes'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
