import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A photo to be sent
@immutable
final class InputPhoto extends TdObject {
  InputPhoto({
    this.photo,
    this.thumbnail,
    this.video,
    required this.addedStickerFileIds,
    required this.width,
    required this.height,
  });

  /// [photo] Photo to be sent. The photo must be at most 10 MB in size. The
  /// photo's width and height must not exceed 10000 in total. Width and height
  /// ratio must be at most 20
  final InputFile? photo;

  /// [thumbnail] Photo thumbnail; pass null to skip thumbnail uploading. The
  /// thumbnail is sent to the other party only in secret chats
  final InputThumbnail? thumbnail;

  /// [video] Video of the live photo; not supported in secret chats; pass null
  /// if the photo isn't a live photo
  final InputFile? video;

  /// [addedStickerFileIds] File identifiers of the stickers added to the photo,
  /// if applicable
  final List<int> addedStickerFileIds;

  /// [width] Photo width; may be replaced by the server
  final int width;

  /// [height] Photo height; may be replaced by the server
  final int height;

  static const String constructor = 'inputPhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'photo': photo?.toJson(),
    'thumbnail': thumbnail?.toJson(),
    'video': video?.toJson(),
    'added_sticker_file_ids': addedStickerFileIds.map((item) => item).toList(),
    'width': width,
    'height': height,
    '@type': constructor,
  };

  static InputPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPhoto(
      photo: InputFile.fromJson(tdMapFromJson(json['photo'])),
      thumbnail: InputThumbnail.fromJson(tdMapFromJson(json['thumbnail'])),
      video: InputFile.fromJson(tdMapFromJson(json['video'])),
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
