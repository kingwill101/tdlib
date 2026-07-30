import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a single result of an inline query
@immutable
sealed class InlineQueryResult extends TdObject {
  const InlineQueryResult();

  static const String constructor = 'inlineQueryResult';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [InlineQueryResultAnimation]
  /// [InlineQueryResultArticle]
  /// [InlineQueryResultAudio]
  /// [InlineQueryResultContact]
  /// [InlineQueryResultDocument]
  /// [InlineQueryResultGame]
  /// [InlineQueryResultLocation]
  /// [InlineQueryResultPhoto]
  /// [InlineQueryResultSticker]
  /// [InlineQueryResultVenue]
  /// [InlineQueryResultVideo]
  /// [InlineQueryResultVoiceNote]
  static InlineQueryResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InlineQueryResultAnimation.constructor:
        return InlineQueryResultAnimation.fromJson(json);

      case InlineQueryResultArticle.constructor:
        return InlineQueryResultArticle.fromJson(json);

      case InlineQueryResultAudio.constructor:
        return InlineQueryResultAudio.fromJson(json);

      case InlineQueryResultContact.constructor:
        return InlineQueryResultContact.fromJson(json);

      case InlineQueryResultDocument.constructor:
        return InlineQueryResultDocument.fromJson(json);

      case InlineQueryResultGame.constructor:
        return InlineQueryResultGame.fromJson(json);

      case InlineQueryResultLocation.constructor:
        return InlineQueryResultLocation.fromJson(json);

      case InlineQueryResultPhoto.constructor:
        return InlineQueryResultPhoto.fromJson(json);

      case InlineQueryResultSticker.constructor:
        return InlineQueryResultSticker.fromJson(json);

      case InlineQueryResultVenue.constructor:
        return InlineQueryResultVenue.fromJson(json);

      case InlineQueryResultVideo.constructor:
        return InlineQueryResultVideo.fromJson(json);

      case InlineQueryResultVoiceNote.constructor:
        return InlineQueryResultVoiceNote.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents an animation file
@immutable
final class InlineQueryResultAnimation extends InlineQueryResult {
  InlineQueryResultAnimation({
    required this.id,
    this.animation,
    required this.title,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [animation] Animation file
  final Animation? animation;

  /// [title] Animation title
  final String title;

  static const String constructor = 'inlineQueryResultAnimation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'animation': animation?.toJson(),
    'title': title,
    '@type': constructor,
  };

  static InlineQueryResultAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultAnimation(
      id: (json['id'] as String?) ?? '',
      animation: Animation.fromJson(tdMapFromJson(json['animation'])),
      title: (json['title'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents a link to an article or web page
@immutable
final class InlineQueryResultArticle extends InlineQueryResult {
  InlineQueryResultArticle({
    required this.id,
    required this.url,
    required this.title,
    required this.description,
    this.thumbnail,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [url] URL of the result, if it exists
  final String url;

  /// [title] Title of the result
  final String title;

  /// param_[description] A short description of the result
  final String description;

  /// [thumbnail] Result thumbnail in JPEG format; may be null
  final Thumbnail? thumbnail;

  static const String constructor = 'inlineQueryResultArticle';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'url': url,
    'title': title,
    'description': description,
    'thumbnail': thumbnail?.toJson(),
    '@type': constructor,
  };

  static InlineQueryResultArticle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultArticle(
      id: (json['id'] as String?) ?? '',
      url: (json['url'] as String?) ?? '',
      title: (json['title'] as String?) ?? '',
      description: (json['description'] as String?) ?? '',
      thumbnail: Thumbnail.fromJson(tdMapFromJson(json['thumbnail'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents an audio file
@immutable
final class InlineQueryResultAudio extends InlineQueryResult {
  InlineQueryResultAudio({required this.id, this.audio});

  /// [id] Unique identifier of the query result
  final String id;

  /// [audio] Audio file
  final Audio? audio;

  static const String constructor = 'inlineQueryResultAudio';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'audio': audio?.toJson(),
    '@type': constructor,
  };

  static InlineQueryResultAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultAudio(
      id: (json['id'] as String?) ?? '',
      audio: Audio.fromJson(tdMapFromJson(json['audio'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents a user contact
@immutable
final class InlineQueryResultContact extends InlineQueryResult {
  InlineQueryResultContact({required this.id, this.contact, this.thumbnail});

  /// [id] Unique identifier of the query result
  final String id;

  /// [contact] A user contact
  final Contact? contact;

  /// [thumbnail] Result thumbnail in JPEG format; may be null
  final Thumbnail? thumbnail;

  static const String constructor = 'inlineQueryResultContact';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'contact': contact?.toJson(),
    'thumbnail': thumbnail?.toJson(),
    '@type': constructor,
  };

  static InlineQueryResultContact? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultContact(
      id: (json['id'] as String?) ?? '',
      contact: Contact.fromJson(tdMapFromJson(json['contact'])),
      thumbnail: Thumbnail.fromJson(tdMapFromJson(json['thumbnail'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents a document
@immutable
final class InlineQueryResultDocument extends InlineQueryResult {
  InlineQueryResultDocument({
    required this.id,
    this.document,
    required this.title,
    required this.description,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [document] Document
  final Document? document;

  /// [title] Document title
  final String title;

  /// param_[description] Document description
  final String description;

  static const String constructor = 'inlineQueryResultDocument';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'document': document?.toJson(),
    'title': title,
    'description': description,
    '@type': constructor,
  };

  static InlineQueryResultDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultDocument(
      id: (json['id'] as String?) ?? '',
      document: Document.fromJson(tdMapFromJson(json['document'])),
      title: (json['title'] as String?) ?? '',
      description: (json['description'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents information about a game
@immutable
final class InlineQueryResultGame extends InlineQueryResult {
  InlineQueryResultGame({required this.id, this.game});

  /// [id] Unique identifier of the query result
  final String id;

  /// [game] Game result
  final Game? game;

  static const String constructor = 'inlineQueryResultGame';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'game': game?.toJson(),
    '@type': constructor,
  };

  static InlineQueryResultGame? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultGame(
      id: (json['id'] as String?) ?? '',
      game: Game.fromJson(tdMapFromJson(json['game'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents a point on the map
@immutable
final class InlineQueryResultLocation extends InlineQueryResult {
  InlineQueryResultLocation({
    required this.id,
    this.location,
    required this.title,
    this.thumbnail,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [location] Location result
  final Location? location;

  /// [title] Title of the result
  final String title;

  /// [thumbnail] Result thumbnail in JPEG format; may be null
  final Thumbnail? thumbnail;

  static const String constructor = 'inlineQueryResultLocation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'location': location?.toJson(),
    'title': title,
    'thumbnail': thumbnail?.toJson(),
    '@type': constructor,
  };

  static InlineQueryResultLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultLocation(
      id: (json['id'] as String?) ?? '',
      location: Location.fromJson(tdMapFromJson(json['location'])),
      title: (json['title'] as String?) ?? '',
      thumbnail: Thumbnail.fromJson(tdMapFromJson(json['thumbnail'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents a photo
@immutable
final class InlineQueryResultPhoto extends InlineQueryResult {
  InlineQueryResultPhoto({
    required this.id,
    this.photo,
    required this.title,
    required this.description,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [photo] Photo
  final Photo? photo;

  /// [title] Title of the result, if known
  final String title;

  /// param_[description] A short description of the result, if known
  final String description;

  static const String constructor = 'inlineQueryResultPhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'photo': photo?.toJson(),
    'title': title,
    'description': description,
    '@type': constructor,
  };

  static InlineQueryResultPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultPhoto(
      id: (json['id'] as String?) ?? '',
      photo: Photo.fromJson(tdMapFromJson(json['photo'])),
      title: (json['title'] as String?) ?? '',
      description: (json['description'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents a sticker
@immutable
final class InlineQueryResultSticker extends InlineQueryResult {
  InlineQueryResultSticker({required this.id, this.sticker});

  /// [id] Unique identifier of the query result
  final String id;

  /// [sticker] Sticker
  final Sticker? sticker;

  static const String constructor = 'inlineQueryResultSticker';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'sticker': sticker?.toJson(),
    '@type': constructor,
  };

  static InlineQueryResultSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultSticker(
      id: (json['id'] as String?) ?? '',
      sticker: Sticker.fromJson(tdMapFromJson(json['sticker'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents information about a venue
@immutable
final class InlineQueryResultVenue extends InlineQueryResult {
  InlineQueryResultVenue({required this.id, this.venue, this.thumbnail});

  /// [id] Unique identifier of the query result
  final String id;

  /// [venue] Venue result
  final Venue? venue;

  /// [thumbnail] Result thumbnail in JPEG format; may be null
  final Thumbnail? thumbnail;

  static const String constructor = 'inlineQueryResultVenue';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'venue': venue?.toJson(),
    'thumbnail': thumbnail?.toJson(),
    '@type': constructor,
  };

  static InlineQueryResultVenue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultVenue(
      id: (json['id'] as String?) ?? '',
      venue: Venue.fromJson(tdMapFromJson(json['venue'])),
      thumbnail: Thumbnail.fromJson(tdMapFromJson(json['thumbnail'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents a video
@immutable
final class InlineQueryResultVideo extends InlineQueryResult {
  InlineQueryResultVideo({
    required this.id,
    this.video,
    required this.title,
    required this.description,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [video] Video
  final Video? video;

  /// [title] Title of the video
  final String title;

  /// param_[description] Description of the video
  final String description;

  static const String constructor = 'inlineQueryResultVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'video': video?.toJson(),
    'title': title,
    'description': description,
    '@type': constructor,
  };

  static InlineQueryResultVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultVideo(
      id: (json['id'] as String?) ?? '',
      video: Video.fromJson(tdMapFromJson(json['video'])),
      title: (json['title'] as String?) ?? '',
      description: (json['description'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents a voice note
@immutable
final class InlineQueryResultVoiceNote extends InlineQueryResult {
  InlineQueryResultVoiceNote({
    required this.id,
    this.voiceNote,
    required this.title,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [voiceNote] Voice note
  final VoiceNote? voiceNote;

  /// [title] Title of the voice note
  final String title;

  static const String constructor = 'inlineQueryResultVoiceNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'voice_note': voiceNote?.toJson(),
    'title': title,
    '@type': constructor,
  };

  static InlineQueryResultVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultVoiceNote(
      id: (json['id'] as String?) ?? '',
      voiceNote: VoiceNote.fromJson(tdMapFromJson(json['voice_note'])),
      title: (json['title'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
