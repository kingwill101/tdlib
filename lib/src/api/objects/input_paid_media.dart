import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a paid media to be sent
@immutable
final class InputPaidMedia extends TdObject {
  InputPaidMedia({
    this.type,
    this.media,
    this.thumbnail,
    required this.addedStickerFileIds,
    required this.width,
    required this.height,
  });

  /// [type] Type of the media
  final InputPaidMediaType? type;

  /// [media] Photo or video to be sent
  final InputFile? media;

  /// [thumbnail] Media thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// [addedStickerFileIds] File identifiers of the stickers added to the media,
  /// if applicable
  final List<int> addedStickerFileIds;

  /// [width] Media width
  final int width;

  /// [height] Media height
  final int height;

  static const String constructor = 'inputPaidMedia';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'type': type?.toJson(),
    'media': media?.toJson(),
    'thumbnail': thumbnail?.toJson(),
    'added_sticker_file_ids': addedStickerFileIds.map((item) => item).toList(),
    'width': width,
    'height': height,
    '@type': constructor,
  };

  static InputPaidMedia? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPaidMedia(
      type: InputPaidMediaType.fromJson(tdMapFromJson(json['type'])),
      media: InputFile.fromJson(tdMapFromJson(json['media'])),
      thumbnail: InputThumbnail.fromJson(tdMapFromJson(json['thumbnail'])),
      addedStickerFileIds: List<int>.from(
        tdListFromJson(
          json['added_sticker_file_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
