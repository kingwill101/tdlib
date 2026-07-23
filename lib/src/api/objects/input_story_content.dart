import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The content of a story to post
@immutable
sealed class InputStoryContent extends TdObject {
  const InputStoryContent();

  static const String constructor = 'inputStoryContent';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [InputStoryContentPhoto]
  /// [InputStoryContentVideo]
  static InputStoryContent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputStoryContentPhoto.constructor:
        return InputStoryContentPhoto.fromJson(json);

      case InputStoryContentVideo.constructor:
        return InputStoryContentVideo.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A photo story
@immutable
final class InputStoryContentPhoto extends InputStoryContent {
  InputStoryContentPhoto({this.photo, required this.addedStickerFileIds});

  /// [photo] Photo to send. The photo must be at most 10 MB in size. The photo
  /// size must be 1080x1920
  final InputFile? photo;

  /// [addedStickerFileIds] File identifiers of the stickers added to the photo,
  /// if applicable
  final List<int> addedStickerFileIds;

  static const String constructor = 'inputStoryContentPhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'photo': photo?.toJson(),
    'added_sticker_file_ids': addedStickerFileIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static InputStoryContentPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputStoryContentPhoto(
      photo: InputFile.fromJson(tdMapFromJson(json['photo'])),
      addedStickerFileIds: List<int>.from(
        tdListFromJson(
          json['added_sticker_file_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A video story
@immutable
final class InputStoryContentVideo extends InputStoryContent {
  InputStoryContentVideo({
    this.video,
    required this.addedStickerFileIds,
    required this.duration,
    required this.coverFrameTimestamp,
    required this.isAnimation,
  });

  /// [video] Video to be sent. The video size must be 720x1280. The video must
  /// be streamable and stored in MPEG4 format, after encoding with H.265 codec
  /// and key frames added each second
  final InputFile? video;

  /// [addedStickerFileIds] File identifiers of the stickers added to the video,
  /// if applicable
  final List<int> addedStickerFileIds;

  /// [duration] Precise duration of the video, in seconds; 0-60
  final double duration;

  /// [coverFrameTimestamp] Timestamp of the frame, which will be used as video
  /// thumbnail
  final double coverFrameTimestamp;

  /// [isAnimation] True, if the video has no sound
  final bool isAnimation;

  static const String constructor = 'inputStoryContentVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'video': video?.toJson(),
    'added_sticker_file_ids': addedStickerFileIds.map((item) => item).toList(),
    'duration': duration,
    'cover_frame_timestamp': coverFrameTimestamp,
    'is_animation': isAnimation,
    '@type': constructor,
  };

  static InputStoryContentVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputStoryContentVideo(
      video: InputFile.fromJson(tdMapFromJson(json['video'])),
      addedStickerFileIds: List<int>.from(
        tdListFromJson(
          json['added_sticker_file_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      duration: ((json['duration'] as num?) ?? 0.0).toDouble(),
      coverFrameTimestamp: ((json['cover_frame_timestamp'] as num?) ?? 0.0)
          .toDouble(),
      isAnimation: (json['is_animation'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
