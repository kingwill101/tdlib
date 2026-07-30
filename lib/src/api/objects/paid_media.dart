import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a paid media
@immutable
sealed class PaidMedia extends TdObject {
  const PaidMedia();

  static const String constructor = 'paidMedia';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [PaidMediaPhoto]
  /// [PaidMediaPreview]
  /// [PaidMediaUnsupported]
  /// [PaidMediaVideo]
  static PaidMedia? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PaidMediaPhoto.constructor:
        return PaidMediaPhoto.fromJson(json);

      case PaidMediaPreview.constructor:
        return PaidMediaPreview.fromJson(json);

      case PaidMediaUnsupported.constructor:
        return PaidMediaUnsupported.fromJson(json);

      case PaidMediaVideo.constructor:
        return PaidMediaVideo.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The media is a photo
@immutable
final class PaidMediaPhoto extends PaidMedia {
  PaidMediaPhoto({this.photo, this.video});

  /// [photo] The photo
  final Photo? photo;

  /// [video] The video representing the live photo; may be null if the photo is
  /// static
  final Video? video;

  static const String constructor = 'paidMediaPhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'photo': photo?.toJson(),
    'video': video?.toJson(),
    '@type': constructor,
  };

  static PaidMediaPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaidMediaPhoto(
      photo: Photo.fromJson(tdMapFromJson(json['photo'])),
      video: Video.fromJson(tdMapFromJson(json['video'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The media is hidden until the invoice is paid
@immutable
final class PaidMediaPreview extends PaidMedia {
  PaidMediaPreview({
    required this.width,
    required this.height,
    required this.duration,
    this.minithumbnail,
  });

  /// [width] Media width; 0 if unknown
  final int width;

  /// [height] Media height; 0 if unknown
  final int height;

  /// [duration] Media duration, in seconds; 0 if unknown
  final int duration;

  /// [minithumbnail] Media minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  static const String constructor = 'paidMediaPreview';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'width': width,
    'height': height,
    'duration': duration,
    'minithumbnail': minithumbnail?.toJson(),
    '@type': constructor,
  };

  static PaidMediaPreview? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaidMediaPreview(
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
      duration: (json['duration'] as int?) ?? 0,
      minithumbnail: Minithumbnail.fromJson(
        tdMapFromJson(json['minithumbnail']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The media is unsupported
@immutable
final class PaidMediaUnsupported extends PaidMedia {
  const PaidMediaUnsupported();

  static const String constructor = 'paidMediaUnsupported';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PaidMediaUnsupported? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PaidMediaUnsupported();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The media is a video
@immutable
final class PaidMediaVideo extends PaidMedia {
  PaidMediaVideo({this.video, this.cover, required this.startTimestamp});

  /// [video] The video
  final Video? video;

  /// [cover] Cover of the video; may be null if none
  final Photo? cover;

  /// [startTimestamp] Timestamp from which the video playing must start, in
  /// seconds
  final int startTimestamp;

  static const String constructor = 'paidMediaVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'video': video?.toJson(),
    'cover': cover?.toJson(),
    'start_timestamp': startTimestamp,
    '@type': constructor,
  };

  static PaidMediaVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaidMediaVideo(
      video: Video.fromJson(tdMapFromJson(json['video'])),
      cover: Photo.fromJson(tdMapFromJson(json['cover'])),
      startTimestamp: (json['start_timestamp'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
