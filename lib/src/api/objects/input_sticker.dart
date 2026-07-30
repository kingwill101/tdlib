import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A sticker to be sent
@immutable
final class InputSticker extends TdObject {
  InputSticker({
    this.sticker,
    this.thumbnail,
    required this.width,
    required this.height,
  });

  /// [sticker] Sticker to be sent
  final InputFile? sticker;

  /// [thumbnail] Sticker thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// [width] Sticker width
  final int width;

  /// [height] Sticker height
  final int height;

  static const String constructor = 'inputSticker';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sticker': sticker?.toJson(),
    'thumbnail': thumbnail?.toJson(),
    'width': width,
    'height': height,
    '@type': constructor,
  };

  static InputSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputSticker(
      sticker: InputFile.fromJson(tdMapFromJson(json['sticker'])),
      thumbnail: InputThumbnail.fromJson(tdMapFromJson(json['thumbnail'])),
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
