import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of paid media to send
@immutable
sealed class InputPaidMediaType extends TdObject {
  const InputPaidMediaType();

  static const String constructor = 'inputPaidMediaType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [InputPaidMediaTypePhoto]
  /// [InputPaidMediaTypeVideo]
  static InputPaidMediaType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputPaidMediaTypePhoto.constructor:
        return InputPaidMediaTypePhoto.fromJson(json);

      case InputPaidMediaTypeVideo.constructor:
        return InputPaidMediaTypeVideo.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The media is a photo. The photo must be at most 10 MB in size. The photo's
/// width and height must not exceed 10000 in total. Width and height ratio
/// must be at most 20
@immutable
final class InputPaidMediaTypePhoto extends InputPaidMediaType {
  InputPaidMediaTypePhoto({this.video});

  /// [video] Video of the live photo; pass null if the photo isn't a live photo
  final InputFile? video;

  static const String constructor = 'inputPaidMediaTypePhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'video': video?.toJson(),
    '@type': constructor,
  };

  static InputPaidMediaTypePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPaidMediaTypePhoto(
      video: InputFile.fromJson(tdMapFromJson(json['video'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The media is a video
@immutable
final class InputPaidMediaTypeVideo extends InputPaidMediaType {
  InputPaidMediaTypeVideo({
    this.cover,
    required this.startTimestamp,
    required this.duration,
    required this.supportsStreaming,
  });

  /// [cover] Cover of the video; pass null to skip cover uploading
  final InputFile? cover;

  /// [startTimestamp] Timestamp from which the video playing must start, in
  /// seconds
  final int startTimestamp;

  /// [duration] Duration of the video, in seconds
  final int duration;

  /// [supportsStreaming] True, if the video is expected to be streamed
  final bool supportsStreaming;

  static const String constructor = 'inputPaidMediaTypeVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'cover': cover?.toJson(),
    'start_timestamp': startTimestamp,
    'duration': duration,
    'supports_streaming': supportsStreaming,
    '@type': constructor,
  };

  static InputPaidMediaTypeVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPaidMediaTypeVideo(
      cover: InputFile.fromJson(tdMapFromJson(json['cover'])),
      startTimestamp: (json['start_timestamp'] as int?) ?? 0,
      duration: (json['duration'] as int?) ?? 0,
      supportsStreaming: (json['supports_streaming'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
