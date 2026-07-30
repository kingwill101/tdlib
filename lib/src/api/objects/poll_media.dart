import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains the media in a poll
@immutable
sealed class PollMedia extends TdObject {
  const PollMedia();

  static const String constructor = 'pollMedia';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [PollMediaAnimation]
  /// [PollMediaAudio]
  /// [PollMediaDocument]
  /// [PollMediaLink]
  /// [PollMediaLocation]
  /// [PollMediaPhoto]
  /// [PollMediaSticker]
  /// [PollMediaVenue]
  /// [PollMediaVideo]
  static PollMedia? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PollMediaAnimation.constructor:
        return PollMediaAnimation.fromJson(json);

      case PollMediaAudio.constructor:
        return PollMediaAudio.fromJson(json);

      case PollMediaDocument.constructor:
        return PollMediaDocument.fromJson(json);

      case PollMediaLink.constructor:
        return PollMediaLink.fromJson(json);

      case PollMediaLocation.constructor:
        return PollMediaLocation.fromJson(json);

      case PollMediaPhoto.constructor:
        return PollMediaPhoto.fromJson(json);

      case PollMediaSticker.constructor:
        return PollMediaSticker.fromJson(json);

      case PollMediaVenue.constructor:
        return PollMediaVenue.fromJson(json);

      case PollMediaVideo.constructor:
        return PollMediaVideo.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An animation
@immutable
final class PollMediaAnimation extends PollMedia {
  PollMediaAnimation({this.animation});

  /// [animation] The animation
  final Animation? animation;

  static const String constructor = 'pollMediaAnimation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'animation': animation?.toJson(),
    '@type': constructor,
  };

  static PollMediaAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollMediaAnimation(
      animation: Animation.fromJson(tdMapFromJson(json['animation'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An audio
@immutable
final class PollMediaAudio extends PollMedia {
  PollMediaAudio({this.audio});

  /// [audio] The audio
  final Audio? audio;

  static const String constructor = 'pollMediaAudio';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'audio': audio?.toJson(),
    '@type': constructor,
  };

  static PollMediaAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollMediaAudio(audio: Audio.fromJson(tdMapFromJson(json['audio'])));
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A document (general file)
@immutable
final class PollMediaDocument extends PollMedia {
  PollMediaDocument({this.document});

  /// [document] The document
  final Document? document;

  static const String constructor = 'pollMediaDocument';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'document': document?.toJson(),
    '@type': constructor,
  };

  static PollMediaDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollMediaDocument(
      document: Document.fromJson(tdMapFromJson(json['document'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A link
@immutable
final class PollMediaLink extends PollMedia {
  PollMediaLink({required this.url, this.linkPreview});

  /// [url] URL of the link
  final String url;

  /// [linkPreview] Preview of the link; may be null if unknown
  final LinkPreview? linkPreview;

  static const String constructor = 'pollMediaLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    'link_preview': linkPreview?.toJson(),
    '@type': constructor,
  };

  static PollMediaLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollMediaLink(
      url: (json['url'] as String?) ?? '',
      linkPreview: LinkPreview.fromJson(tdMapFromJson(json['link_preview'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A location
@immutable
final class PollMediaLocation extends PollMedia {
  PollMediaLocation({this.location});

  /// [location] The location
  final Location? location;

  static const String constructor = 'pollMediaLocation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'location': location?.toJson(),
    '@type': constructor,
  };

  static PollMediaLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollMediaLocation(
      location: Location.fromJson(tdMapFromJson(json['location'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A photo
@immutable
final class PollMediaPhoto extends PollMedia {
  PollMediaPhoto({this.photo, this.video});

  /// [photo] The photo
  final Photo? photo;

  /// [video] The video representing the live photo; may be null if the photo is
  /// static
  final Video? video;

  static const String constructor = 'pollMediaPhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'photo': photo?.toJson(),
    'video': video?.toJson(),
    '@type': constructor,
  };

  static PollMediaPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollMediaPhoto(
      photo: Photo.fromJson(tdMapFromJson(json['photo'])),
      video: Video.fromJson(tdMapFromJson(json['video'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A sticker
@immutable
final class PollMediaSticker extends PollMedia {
  PollMediaSticker({this.sticker});

  /// [sticker] The sticker
  final Sticker? sticker;

  static const String constructor = 'pollMediaSticker';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sticker': sticker?.toJson(),
    '@type': constructor,
  };

  static PollMediaSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollMediaSticker(
      sticker: Sticker.fromJson(tdMapFromJson(json['sticker'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A venue
@immutable
final class PollMediaVenue extends PollMedia {
  PollMediaVenue({this.venue});

  /// [venue] The venue
  final Venue? venue;

  static const String constructor = 'pollMediaVenue';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'venue': venue?.toJson(),
    '@type': constructor,
  };

  static PollMediaVenue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollMediaVenue(venue: Venue.fromJson(tdMapFromJson(json['venue'])));
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A video
@immutable
final class PollMediaVideo extends PollMedia {
  PollMediaVideo({
    this.video,
    required this.alternativeVideos,
    required this.storyboards,
    this.cover,
    required this.startTimestamp,
  });

  /// [video] The video description
  final Video? video;

  /// [alternativeVideos] Alternative qualities of the video
  final List<AlternativeVideo> alternativeVideos;

  /// [storyboards] Available storyboards for the video
  final List<VideoStoryboard> storyboards;

  /// [cover] Cover of the video; may be null if none
  final Photo? cover;

  /// [startTimestamp] Timestamp from which the video playing must start, in
  /// seconds
  final int startTimestamp;

  static const String constructor = 'pollMediaVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'video': video?.toJson(),
    'alternative_videos': alternativeVideos
        .map((item) => item.toJson())
        .toList(),
    'storyboards': storyboards.map((item) => item.toJson()).toList(),
    'cover': cover?.toJson(),
    'start_timestamp': startTimestamp,
    '@type': constructor,
  };

  static PollMediaVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollMediaVideo(
      video: Video.fromJson(tdMapFromJson(json['video'])),
      alternativeVideos: List<AlternativeVideo>.from(
        tdListFromJson(json['alternative_videos'])
            .map((item) => AlternativeVideo.fromJson(tdMapFromJson(item)))
            .whereType<AlternativeVideo>(),
      ),
      storyboards: List<VideoStoryboard>.from(
        tdListFromJson(json['storyboards'])
            .map((item) => VideoStoryboard.fromJson(tdMapFromJson(item)))
            .whereType<VideoStoryboard>(),
      ),
      cover: Photo.fromJson(tdMapFromJson(json['cover'])),
      startTimestamp: (json['start_timestamp'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
