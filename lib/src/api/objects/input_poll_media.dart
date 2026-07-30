import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The content of a poll media to send
@immutable
sealed class InputPollMedia extends TdObject {
  const InputPollMedia();

  static const String constructor = 'inputPollMedia';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [InputPollMediaAnimation]
  /// [InputPollMediaAudio]
  /// [InputPollMediaDocument]
  /// [InputPollMediaLink]
  /// [InputPollMediaLocation]
  /// [InputPollMediaPhoto]
  /// [InputPollMediaSticker]
  /// [InputPollMediaVenue]
  /// [InputPollMediaVideo]
  static InputPollMedia? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputPollMediaAnimation.constructor:
        return InputPollMediaAnimation.fromJson(json);

      case InputPollMediaAudio.constructor:
        return InputPollMediaAudio.fromJson(json);

      case InputPollMediaDocument.constructor:
        return InputPollMediaDocument.fromJson(json);

      case InputPollMediaLink.constructor:
        return InputPollMediaLink.fromJson(json);

      case InputPollMediaLocation.constructor:
        return InputPollMediaLocation.fromJson(json);

      case InputPollMediaPhoto.constructor:
        return InputPollMediaPhoto.fromJson(json);

      case InputPollMediaSticker.constructor:
        return InputPollMediaSticker.fromJson(json);

      case InputPollMediaVenue.constructor:
        return InputPollMediaVenue.fromJson(json);

      case InputPollMediaVideo.constructor:
        return InputPollMediaVideo.fromJson(json);

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
final class InputPollMediaAnimation extends InputPollMedia {
  InputPollMediaAnimation({this.animation});

  /// [animation] The animation to be sent
  final InputAnimation? animation;

  static const String constructor = 'inputPollMediaAnimation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'animation': animation?.toJson(),
    '@type': constructor,
  };

  static InputPollMediaAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPollMediaAnimation(
      animation: InputAnimation.fromJson(tdMapFromJson(json['animation'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An audio
@immutable
final class InputPollMediaAudio extends InputPollMedia {
  InputPollMediaAudio({this.audio});

  /// [audio] The audio to be sent
  final InputAudio? audio;

  static const String constructor = 'inputPollMediaAudio';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'audio': audio?.toJson(),
    '@type': constructor,
  };

  static InputPollMediaAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPollMediaAudio(
      audio: InputAudio.fromJson(tdMapFromJson(json['audio'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A document (general file)
@immutable
final class InputPollMediaDocument extends InputPollMedia {
  InputPollMediaDocument({this.document});

  /// [document] The document to be sent
  final InputDocument? document;

  static const String constructor = 'inputPollMediaDocument';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'document': document?.toJson(),
    '@type': constructor,
  };

  static InputPollMediaDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPollMediaDocument(
      document: InputDocument.fromJson(tdMapFromJson(json['document'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A link
@immutable
final class InputPollMediaLink extends InputPollMedia {
  InputPollMediaLink({required this.url});

  /// [url] URL of the link
  final String url;

  static const String constructor = 'inputPollMediaLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    '@type': constructor,
  };

  static InputPollMediaLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPollMediaLink(url: (json['url'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A location
@immutable
final class InputPollMediaLocation extends InputPollMedia {
  InputPollMediaLocation({this.location});

  /// [location] Location to be sent
  final Location? location;

  static const String constructor = 'inputPollMediaLocation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'location': location?.toJson(),
    '@type': constructor,
  };

  static InputPollMediaLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPollMediaLocation(
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
final class InputPollMediaPhoto extends InputPollMedia {
  InputPollMediaPhoto({this.photo});

  /// [photo] Photo to be sent
  final InputPhoto? photo;

  static const String constructor = 'inputPollMediaPhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'photo': photo?.toJson(),
    '@type': constructor,
  };

  static InputPollMediaPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPollMediaPhoto(
      photo: InputPhoto.fromJson(tdMapFromJson(json['photo'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A sticker
@immutable
final class InputPollMediaSticker extends InputPollMedia {
  InputPollMediaSticker({this.sticker});

  /// [sticker] Sticker to be sent
  final InputSticker? sticker;

  static const String constructor = 'inputPollMediaSticker';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sticker': sticker?.toJson(),
    '@type': constructor,
  };

  static InputPollMediaSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPollMediaSticker(
      sticker: InputSticker.fromJson(tdMapFromJson(json['sticker'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A venue
@immutable
final class InputPollMediaVenue extends InputPollMedia {
  InputPollMediaVenue({this.venue});

  /// [venue] Venue to send
  final Venue? venue;

  static const String constructor = 'inputPollMediaVenue';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'venue': venue?.toJson(),
    '@type': constructor,
  };

  static InputPollMediaVenue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPollMediaVenue(
      venue: Venue.fromJson(tdMapFromJson(json['venue'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A video
@immutable
final class InputPollMediaVideo extends InputPollMedia {
  InputPollMediaVideo({this.video});

  /// [video] The video to be sent
  final InputVideo? video;

  static const String constructor = 'inputPollMediaVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'video': video?.toJson(),
    '@type': constructor,
  };

  static InputPollMediaVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPollMediaVideo(
      video: InputVideo.fromJson(tdMapFromJson(json['video'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
