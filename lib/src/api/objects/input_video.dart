import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A video to be sent
@immutable
final class InputVideo extends TdObject {
  InputVideo({
    this.video,
    this.thumbnail,
    this.cover,
    required this.startTimestamp,
    required this.addedStickerFileIds,
    required this.duration,
    required this.width,
    required this.height,
    required this.supportsStreaming,
  });

  /// [video] Video file to be sent. The video is expected to be re-encoded to
  /// MPEG4 format with H.264 codec by the sender
  final InputFile? video;

  /// [thumbnail] Video thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// [cover] Cover of the video; pass null to skip cover uploading; not
  /// supported in secret chats and for self-destructing messages
  final InputFile? cover;

  /// [startTimestamp] Timestamp from which the video playing must start, in
  /// seconds
  final int startTimestamp;

  /// [addedStickerFileIds] File identifiers of the stickers added to the video,
  /// if applicable
  final List<int> addedStickerFileIds;

  /// [duration] Duration of the video, in seconds
  final int duration;

  /// [width] Video width
  final int width;

  /// [height] Video height
  final int height;

  /// [supportsStreaming] True, if the video is expected to be streamed
  final bool supportsStreaming;

  static const String constructor = 'inputVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'video': video?.toJson(),
    'thumbnail': thumbnail?.toJson(),
    'cover': cover?.toJson(),
    'start_timestamp': startTimestamp,
    'added_sticker_file_ids': addedStickerFileIds.map((item) => item).toList(),
    'duration': duration,
    'width': width,
    'height': height,
    'supports_streaming': supportsStreaming,
    '@type': constructor,
  };

  static InputVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputVideo(
      video: InputFile.fromJson(tdMapFromJson(json['video'])),
      thumbnail: InputThumbnail.fromJson(tdMapFromJson(json['thumbnail'])),
      cover: InputFile.fromJson(tdMapFromJson(json['cover'])),
      startTimestamp: (json['start_timestamp'] as int?) ?? 0,
      addedStickerFileIds: List<int>.from(
        tdListFromJson(
          json['added_sticker_file_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      duration: (json['duration'] as int?) ?? 0,
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
      supportsStreaming: (json['supports_streaming'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
