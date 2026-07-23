import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains the content of a story
@immutable
sealed class StoryContent extends TdObject {
  const StoryContent();

  static const String constructor = 'storyContent';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [StoryContentLive]
  /// [StoryContentPhoto]
  /// [StoryContentUnsupported]
  /// [StoryContentVideo]
  static StoryContent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StoryContentLive.constructor:
        return StoryContentLive.fromJson(json);

      case StoryContentPhoto.constructor:
        return StoryContentPhoto.fromJson(json);

      case StoryContentUnsupported.constructor:
        return StoryContentUnsupported.fromJson(json);

      case StoryContentVideo.constructor:
        return StoryContentVideo.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A live story
@immutable
final class StoryContentLive extends StoryContent {
  StoryContentLive({required this.groupCallId, required this.isRtmpStream});

  /// [groupCallId] Identifier of the corresponding group call. The group call
  /// can be received through the method getGroupCall
  final int groupCallId;

  /// [isRtmpStream] True, if the call is an RTMP stream instead of an ordinary
  /// group call
  final bool isRtmpStream;

  static const String constructor = 'storyContentLive';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call_id': groupCallId,
    'is_rtmp_stream': isRtmpStream,
    '@type': constructor,
  };

  static StoryContentLive? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryContentLive(
      groupCallId: (json['group_call_id'] as int?) ?? 0,
      isRtmpStream: (json['is_rtmp_stream'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A photo story
@immutable
final class StoryContentPhoto extends StoryContent {
  StoryContentPhoto({this.photo});

  /// [photo] The photo
  final Photo? photo;

  static const String constructor = 'storyContentPhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'photo': photo?.toJson(),
    '@type': constructor,
  };

  static StoryContentPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryContentPhoto(
      photo: Photo.fromJson(tdMapFromJson(json['photo'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A story content that is not supported in the current TDLib version
@immutable
final class StoryContentUnsupported extends StoryContent {
  const StoryContentUnsupported();

  static const String constructor = 'storyContentUnsupported';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static StoryContentUnsupported? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StoryContentUnsupported();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A video story
@immutable
final class StoryContentVideo extends StoryContent {
  StoryContentVideo({this.video, this.alternativeVideo});

  /// [video] The video in MPEG4 format
  final StoryVideo? video;

  /// [alternativeVideo] Alternative version of the video in MPEG4 format,
  /// encoded with H.264 codec; may be null
  final StoryVideo? alternativeVideo;

  static const String constructor = 'storyContentVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'video': video?.toJson(),
    'alternative_video': alternativeVideo?.toJson(),
    '@type': constructor,
  };

  static StoryContentVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryContentVideo(
      video: StoryVideo.fromJson(tdMapFromJson(json['video'])),
      alternativeVideo: StoryVideo.fromJson(
        tdMapFromJson(json['alternative_video']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
