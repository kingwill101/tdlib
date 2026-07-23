import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a single result of an inline query; for bots only
@immutable
sealed class InputInlineQueryResult extends TdObject {
  const InputInlineQueryResult();

  static const String constructor = 'inputInlineQueryResult';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [InputInlineQueryResultAnimation]
  /// [InputInlineQueryResultArticle]
  /// [InputInlineQueryResultAudio]
  /// [InputInlineQueryResultContact]
  /// [InputInlineQueryResultDocument]
  /// [InputInlineQueryResultGame]
  /// [InputInlineQueryResultLocation]
  /// [InputInlineQueryResultPhoto]
  /// [InputInlineQueryResultSticker]
  /// [InputInlineQueryResultVenue]
  /// [InputInlineQueryResultVideo]
  /// [InputInlineQueryResultVoiceNote]
  static InputInlineQueryResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputInlineQueryResultAnimation.constructor:
        return InputInlineQueryResultAnimation.fromJson(json);

      case InputInlineQueryResultArticle.constructor:
        return InputInlineQueryResultArticle.fromJson(json);

      case InputInlineQueryResultAudio.constructor:
        return InputInlineQueryResultAudio.fromJson(json);

      case InputInlineQueryResultContact.constructor:
        return InputInlineQueryResultContact.fromJson(json);

      case InputInlineQueryResultDocument.constructor:
        return InputInlineQueryResultDocument.fromJson(json);

      case InputInlineQueryResultGame.constructor:
        return InputInlineQueryResultGame.fromJson(json);

      case InputInlineQueryResultLocation.constructor:
        return InputInlineQueryResultLocation.fromJson(json);

      case InputInlineQueryResultPhoto.constructor:
        return InputInlineQueryResultPhoto.fromJson(json);

      case InputInlineQueryResultSticker.constructor:
        return InputInlineQueryResultSticker.fromJson(json);

      case InputInlineQueryResultVenue.constructor:
        return InputInlineQueryResultVenue.fromJson(json);

      case InputInlineQueryResultVideo.constructor:
        return InputInlineQueryResultVideo.fromJson(json);

      case InputInlineQueryResultVoiceNote.constructor:
        return InputInlineQueryResultVoiceNote.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents a link to an animated GIF or an animated (i.e., without sound)
/// H.264/MPEG-4 AVC video
@immutable
final class InputInlineQueryResultAnimation extends InputInlineQueryResult {
  InputInlineQueryResultAnimation({
    required this.id,
    required this.title,
    required this.thumbnailUrl,
    required this.thumbnailMimeType,
    required this.videoUrl,
    required this.videoMimeType,
    required this.videoDuration,
    required this.videoWidth,
    required this.videoHeight,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [title] Title of the query result
  final String title;

  /// [thumbnailUrl] URL of the result thumbnail (JPEG, GIF, or MPEG4), if it
  /// exists
  final String thumbnailUrl;

  /// [thumbnailMimeType] MIME type of the video thumbnail. If non-empty, must
  /// be one of "image/jpeg", "image/gif" and "video/mp4"
  final String thumbnailMimeType;

  /// [videoUrl] The URL of the video file (file size must not exceed 1MB)
  final String videoUrl;

  /// [videoMimeType] MIME type of the video file. Must be one of "image/gif"
  /// and "video/mp4"
  final String videoMimeType;

  /// [videoDuration] Duration of the video, in seconds
  final int videoDuration;

  /// [videoWidth] Width of the video
  final int videoWidth;

  /// [videoHeight] Height of the video
  final int videoHeight;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type
  /// replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one
  /// of the following types: inputMessageText, inputMessageAnimation,
  /// inputMessageInvoice, inputMessageLocation, inputMessageVenue or
  /// inputMessageContact
  final InputMessageContent? inputMessageContent;

  static const String constructor = 'inputInlineQueryResultAnimation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'title': title,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_mime_type': thumbnailMimeType,
    'video_url': videoUrl,
    'video_mime_type': videoMimeType,
    'video_duration': videoDuration,
    'video_width': videoWidth,
    'video_height': videoHeight,
    'reply_markup': replyMarkup?.toJson(),
    'input_message_content': inputMessageContent?.toJson(),
    '@type': constructor,
  };

  static InputInlineQueryResultAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultAnimation(
      id: (json['id'] as String?) ?? '',
      title: (json['title'] as String?) ?? '',
      thumbnailUrl: (json['thumbnail_url'] as String?) ?? '',
      thumbnailMimeType: (json['thumbnail_mime_type'] as String?) ?? '',
      videoUrl: (json['video_url'] as String?) ?? '',
      videoMimeType: (json['video_mime_type'] as String?) ?? '',
      videoDuration: (json['video_duration'] as int?) ?? 0,
      videoWidth: (json['video_width'] as int?) ?? 0,
      videoHeight: (json['video_height'] as int?) ?? 0,
      replyMarkup: ReplyMarkup.fromJson(tdMapFromJson(json['reply_markup'])),
      inputMessageContent: InputMessageContent.fromJson(
        tdMapFromJson(json['input_message_content']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents a link to an article or web page
@immutable
final class InputInlineQueryResultArticle extends InputInlineQueryResult {
  InputInlineQueryResultArticle({
    required this.id,
    required this.url,
    required this.title,
    required this.description,
    required this.thumbnailUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [url] URL of the result, if it exists
  final String url;

  /// [title] Title of the result
  final String title;

  /// param_[description] A short description of the result
  final String description;

  /// [thumbnailUrl] URL of the result thumbnail, if it exists
  final String thumbnailUrl;

  /// [thumbnailWidth] Thumbnail width, if known
  final int thumbnailWidth;

  /// [thumbnailHeight] Thumbnail height, if known
  final int thumbnailHeight;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type
  /// replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one
  /// of the following types: inputMessageText, inputMessageInvoice,
  /// inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent? inputMessageContent;

  static const String constructor = 'inputInlineQueryResultArticle';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'url': url,
    'title': title,
    'description': description,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_width': thumbnailWidth,
    'thumbnail_height': thumbnailHeight,
    'reply_markup': replyMarkup?.toJson(),
    'input_message_content': inputMessageContent?.toJson(),
    '@type': constructor,
  };

  static InputInlineQueryResultArticle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultArticle(
      id: (json['id'] as String?) ?? '',
      url: (json['url'] as String?) ?? '',
      title: (json['title'] as String?) ?? '',
      description: (json['description'] as String?) ?? '',
      thumbnailUrl: (json['thumbnail_url'] as String?) ?? '',
      thumbnailWidth: (json['thumbnail_width'] as int?) ?? 0,
      thumbnailHeight: (json['thumbnail_height'] as int?) ?? 0,
      replyMarkup: ReplyMarkup.fromJson(tdMapFromJson(json['reply_markup'])),
      inputMessageContent: InputMessageContent.fromJson(
        tdMapFromJson(json['input_message_content']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents a link to an MP3 audio file
@immutable
final class InputInlineQueryResultAudio extends InputInlineQueryResult {
  InputInlineQueryResultAudio({
    required this.id,
    required this.title,
    required this.performer,
    required this.audioUrl,
    required this.audioDuration,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [title] Title of the audio file
  final String title;

  /// [performer] Performer of the audio file
  final String performer;

  /// [audioUrl] The URL of the audio file
  final String audioUrl;

  /// [audioDuration] Audio file duration, in seconds
  final int audioDuration;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type
  /// replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one
  /// of the following types: inputMessageText, inputMessageAudio,
  /// inputMessageInvoice, inputMessageLocation, inputMessageVenue or
  /// inputMessageContact
  final InputMessageContent? inputMessageContent;

  static const String constructor = 'inputInlineQueryResultAudio';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'title': title,
    'performer': performer,
    'audio_url': audioUrl,
    'audio_duration': audioDuration,
    'reply_markup': replyMarkup?.toJson(),
    'input_message_content': inputMessageContent?.toJson(),
    '@type': constructor,
  };

  static InputInlineQueryResultAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultAudio(
      id: (json['id'] as String?) ?? '',
      title: (json['title'] as String?) ?? '',
      performer: (json['performer'] as String?) ?? '',
      audioUrl: (json['audio_url'] as String?) ?? '',
      audioDuration: (json['audio_duration'] as int?) ?? 0,
      replyMarkup: ReplyMarkup.fromJson(tdMapFromJson(json['reply_markup'])),
      inputMessageContent: InputMessageContent.fromJson(
        tdMapFromJson(json['input_message_content']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents a user contact
@immutable
final class InputInlineQueryResultContact extends InputInlineQueryResult {
  InputInlineQueryResultContact({
    required this.id,
    this.contact,
    required this.thumbnailUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [contact] User contact
  final Contact? contact;

  /// [thumbnailUrl] URL of the result thumbnail, if it exists
  final String thumbnailUrl;

  /// [thumbnailWidth] Thumbnail width, if known
  final int thumbnailWidth;

  /// [thumbnailHeight] Thumbnail height, if known
  final int thumbnailHeight;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type
  /// replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one
  /// of the following types: inputMessageText, inputMessageInvoice,
  /// inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent? inputMessageContent;

  static const String constructor = 'inputInlineQueryResultContact';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'contact': contact?.toJson(),
    'thumbnail_url': thumbnailUrl,
    'thumbnail_width': thumbnailWidth,
    'thumbnail_height': thumbnailHeight,
    'reply_markup': replyMarkup?.toJson(),
    'input_message_content': inputMessageContent?.toJson(),
    '@type': constructor,
  };

  static InputInlineQueryResultContact? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultContact(
      id: (json['id'] as String?) ?? '',
      contact: Contact.fromJson(tdMapFromJson(json['contact'])),
      thumbnailUrl: (json['thumbnail_url'] as String?) ?? '',
      thumbnailWidth: (json['thumbnail_width'] as int?) ?? 0,
      thumbnailHeight: (json['thumbnail_height'] as int?) ?? 0,
      replyMarkup: ReplyMarkup.fromJson(tdMapFromJson(json['reply_markup'])),
      inputMessageContent: InputMessageContent.fromJson(
        tdMapFromJson(json['input_message_content']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents a link to a file
@immutable
final class InputInlineQueryResultDocument extends InputInlineQueryResult {
  InputInlineQueryResultDocument({
    required this.id,
    required this.title,
    required this.description,
    required this.documentUrl,
    required this.mimeType,
    required this.thumbnailUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [title] Title of the resulting file
  final String title;

  /// param_[description] Short description of the result, if known
  final String description;

  /// [documentUrl] URL of the file
  final String documentUrl;

  /// [mimeType] MIME type of the file content; only "application/pdf" and
  /// "application/zip" are currently allowed
  final String mimeType;

  /// [thumbnailUrl] The URL of the file thumbnail, if it exists
  final String thumbnailUrl;

  /// [thumbnailWidth] Width of the thumbnail
  final int thumbnailWidth;

  /// [thumbnailHeight] Height of the thumbnail
  final int thumbnailHeight;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type
  /// replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one
  /// of the following types: inputMessageText, inputMessageDocument,
  /// inputMessageInvoice, inputMessageLocation, inputMessageVenue or
  /// inputMessageContact
  final InputMessageContent? inputMessageContent;

  static const String constructor = 'inputInlineQueryResultDocument';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'title': title,
    'description': description,
    'document_url': documentUrl,
    'mime_type': mimeType,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_width': thumbnailWidth,
    'thumbnail_height': thumbnailHeight,
    'reply_markup': replyMarkup?.toJson(),
    'input_message_content': inputMessageContent?.toJson(),
    '@type': constructor,
  };

  static InputInlineQueryResultDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultDocument(
      id: (json['id'] as String?) ?? '',
      title: (json['title'] as String?) ?? '',
      description: (json['description'] as String?) ?? '',
      documentUrl: (json['document_url'] as String?) ?? '',
      mimeType: (json['mime_type'] as String?) ?? '',
      thumbnailUrl: (json['thumbnail_url'] as String?) ?? '',
      thumbnailWidth: (json['thumbnail_width'] as int?) ?? 0,
      thumbnailHeight: (json['thumbnail_height'] as int?) ?? 0,
      replyMarkup: ReplyMarkup.fromJson(tdMapFromJson(json['reply_markup'])),
      inputMessageContent: InputMessageContent.fromJson(
        tdMapFromJson(json['input_message_content']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents a game
@immutable
final class InputInlineQueryResultGame extends InputInlineQueryResult {
  InputInlineQueryResultGame({
    required this.id,
    required this.gameShortName,
    this.replyMarkup,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [gameShortName] Short name of the game
  final String gameShortName;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type
  /// replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  static const String constructor = 'inputInlineQueryResultGame';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'game_short_name': gameShortName,
    'reply_markup': replyMarkup?.toJson(),
    '@type': constructor,
  };

  static InputInlineQueryResultGame? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultGame(
      id: (json['id'] as String?) ?? '',
      gameShortName: (json['game_short_name'] as String?) ?? '',
      replyMarkup: ReplyMarkup.fromJson(tdMapFromJson(json['reply_markup'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents a point on the map
@immutable
final class InputInlineQueryResultLocation extends InputInlineQueryResult {
  InputInlineQueryResultLocation({
    required this.id,
    this.location,
    required this.livePeriod,
    required this.title,
    required this.thumbnailUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [location] Location result
  final Location? location;

  /// [livePeriod] Amount of time relative to the message sent time until the
  /// location can be updated, in seconds
  final int livePeriod;

  /// [title] Title of the result
  final String title;

  /// [thumbnailUrl] URL of the result thumbnail, if it exists
  final String thumbnailUrl;

  /// [thumbnailWidth] Thumbnail width, if known
  final int thumbnailWidth;

  /// [thumbnailHeight] Thumbnail height, if known
  final int thumbnailHeight;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type
  /// replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one
  /// of the following types: inputMessageText, inputMessageInvoice,
  /// inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent? inputMessageContent;

  static const String constructor = 'inputInlineQueryResultLocation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'location': location?.toJson(),
    'live_period': livePeriod,
    'title': title,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_width': thumbnailWidth,
    'thumbnail_height': thumbnailHeight,
    'reply_markup': replyMarkup?.toJson(),
    'input_message_content': inputMessageContent?.toJson(),
    '@type': constructor,
  };

  static InputInlineQueryResultLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultLocation(
      id: (json['id'] as String?) ?? '',
      location: Location.fromJson(tdMapFromJson(json['location'])),
      livePeriod: (json['live_period'] as int?) ?? 0,
      title: (json['title'] as String?) ?? '',
      thumbnailUrl: (json['thumbnail_url'] as String?) ?? '',
      thumbnailWidth: (json['thumbnail_width'] as int?) ?? 0,
      thumbnailHeight: (json['thumbnail_height'] as int?) ?? 0,
      replyMarkup: ReplyMarkup.fromJson(tdMapFromJson(json['reply_markup'])),
      inputMessageContent: InputMessageContent.fromJson(
        tdMapFromJson(json['input_message_content']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents link to a JPEG image
@immutable
final class InputInlineQueryResultPhoto extends InputInlineQueryResult {
  InputInlineQueryResultPhoto({
    required this.id,
    required this.title,
    required this.description,
    required this.thumbnailUrl,
    required this.photoUrl,
    required this.photoWidth,
    required this.photoHeight,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [title] Title of the result, if known
  final String title;

  /// param_[description] A short description of the result, if known
  final String description;

  /// [thumbnailUrl] URL of the photo thumbnail, if it exists
  final String thumbnailUrl;

  /// [photoUrl] The URL of the JPEG photo (photo size must not exceed 5MB)
  final String photoUrl;

  /// [photoWidth] Width of the photo
  final int photoWidth;

  /// [photoHeight] Height of the photo
  final int photoHeight;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type
  /// replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one
  /// of the following types: inputMessageText, inputMessagePhoto,
  /// inputMessageInvoice, inputMessageLocation, inputMessageVenue or
  /// inputMessageContact
  final InputMessageContent? inputMessageContent;

  static const String constructor = 'inputInlineQueryResultPhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'title': title,
    'description': description,
    'thumbnail_url': thumbnailUrl,
    'photo_url': photoUrl,
    'photo_width': photoWidth,
    'photo_height': photoHeight,
    'reply_markup': replyMarkup?.toJson(),
    'input_message_content': inputMessageContent?.toJson(),
    '@type': constructor,
  };

  static InputInlineQueryResultPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultPhoto(
      id: (json['id'] as String?) ?? '',
      title: (json['title'] as String?) ?? '',
      description: (json['description'] as String?) ?? '',
      thumbnailUrl: (json['thumbnail_url'] as String?) ?? '',
      photoUrl: (json['photo_url'] as String?) ?? '',
      photoWidth: (json['photo_width'] as int?) ?? 0,
      photoHeight: (json['photo_height'] as int?) ?? 0,
      replyMarkup: ReplyMarkup.fromJson(tdMapFromJson(json['reply_markup'])),
      inputMessageContent: InputMessageContent.fromJson(
        tdMapFromJson(json['input_message_content']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents a link to a WEBP, TGS, or WEBM sticker
@immutable
final class InputInlineQueryResultSticker extends InputInlineQueryResult {
  InputInlineQueryResultSticker({
    required this.id,
    required this.thumbnailUrl,
    required this.stickerUrl,
    required this.stickerWidth,
    required this.stickerHeight,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [thumbnailUrl] URL of the sticker thumbnail, if it exists
  final String thumbnailUrl;

  /// [stickerUrl] The URL of the WEBP, TGS, or WEBM sticker (sticker file size
  /// must not exceed 5MB)
  final String stickerUrl;

  /// [stickerWidth] Width of the sticker
  final int stickerWidth;

  /// [stickerHeight] Height of the sticker
  final int stickerHeight;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type
  /// replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one
  /// of the following types: inputMessageText, inputMessageSticker,
  /// inputMessageInvoice, inputMessageLocation, inputMessageVenue or
  /// inputMessageContact
  final InputMessageContent? inputMessageContent;

  static const String constructor = 'inputInlineQueryResultSticker';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'thumbnail_url': thumbnailUrl,
    'sticker_url': stickerUrl,
    'sticker_width': stickerWidth,
    'sticker_height': stickerHeight,
    'reply_markup': replyMarkup?.toJson(),
    'input_message_content': inputMessageContent?.toJson(),
    '@type': constructor,
  };

  static InputInlineQueryResultSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultSticker(
      id: (json['id'] as String?) ?? '',
      thumbnailUrl: (json['thumbnail_url'] as String?) ?? '',
      stickerUrl: (json['sticker_url'] as String?) ?? '',
      stickerWidth: (json['sticker_width'] as int?) ?? 0,
      stickerHeight: (json['sticker_height'] as int?) ?? 0,
      replyMarkup: ReplyMarkup.fromJson(tdMapFromJson(json['reply_markup'])),
      inputMessageContent: InputMessageContent.fromJson(
        tdMapFromJson(json['input_message_content']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents information about a venue
@immutable
final class InputInlineQueryResultVenue extends InputInlineQueryResult {
  InputInlineQueryResultVenue({
    required this.id,
    this.venue,
    required this.thumbnailUrl,
    required this.thumbnailWidth,
    required this.thumbnailHeight,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [venue] Venue result
  final Venue? venue;

  /// [thumbnailUrl] URL of the result thumbnail, if it exists
  final String thumbnailUrl;

  /// [thumbnailWidth] Thumbnail width, if known
  final int thumbnailWidth;

  /// [thumbnailHeight] Thumbnail height, if known
  final int thumbnailHeight;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type
  /// replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one
  /// of the following types: inputMessageText, inputMessageInvoice,
  /// inputMessageLocation, inputMessageVenue or inputMessageContact
  final InputMessageContent? inputMessageContent;

  static const String constructor = 'inputInlineQueryResultVenue';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'venue': venue?.toJson(),
    'thumbnail_url': thumbnailUrl,
    'thumbnail_width': thumbnailWidth,
    'thumbnail_height': thumbnailHeight,
    'reply_markup': replyMarkup?.toJson(),
    'input_message_content': inputMessageContent?.toJson(),
    '@type': constructor,
  };

  static InputInlineQueryResultVenue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultVenue(
      id: (json['id'] as String?) ?? '',
      venue: Venue.fromJson(tdMapFromJson(json['venue'])),
      thumbnailUrl: (json['thumbnail_url'] as String?) ?? '',
      thumbnailWidth: (json['thumbnail_width'] as int?) ?? 0,
      thumbnailHeight: (json['thumbnail_height'] as int?) ?? 0,
      replyMarkup: ReplyMarkup.fromJson(tdMapFromJson(json['reply_markup'])),
      inputMessageContent: InputMessageContent.fromJson(
        tdMapFromJson(json['input_message_content']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents a link to a page containing an embedded video player or a video
/// file
@immutable
final class InputInlineQueryResultVideo extends InputInlineQueryResult {
  InputInlineQueryResultVideo({
    required this.id,
    required this.title,
    required this.description,
    required this.thumbnailUrl,
    required this.videoUrl,
    required this.mimeType,
    required this.videoWidth,
    required this.videoHeight,
    required this.videoDuration,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [title] Title of the result
  final String title;

  /// param_[description] A short description of the result, if known
  final String description;

  /// [thumbnailUrl] The URL of the video thumbnail (JPEG), if it exists
  final String thumbnailUrl;

  /// [videoUrl] URL of the embedded video player or video file
  final String videoUrl;

  /// [mimeType] MIME type of the content of the video URL, only "text/html" or
  /// "video/mp4" are currently supported
  final String mimeType;

  /// [videoWidth] Width of the video
  final int videoWidth;

  /// [videoHeight] Height of the video
  final int videoHeight;

  /// [videoDuration] Video duration, in seconds
  final int videoDuration;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type
  /// replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one
  /// of the following types: inputMessageText, inputMessageVideo,
  /// inputMessageInvoice, inputMessageLocation, inputMessageVenue or
  /// inputMessageContact
  final InputMessageContent? inputMessageContent;

  static const String constructor = 'inputInlineQueryResultVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'title': title,
    'description': description,
    'thumbnail_url': thumbnailUrl,
    'video_url': videoUrl,
    'mime_type': mimeType,
    'video_width': videoWidth,
    'video_height': videoHeight,
    'video_duration': videoDuration,
    'reply_markup': replyMarkup?.toJson(),
    'input_message_content': inputMessageContent?.toJson(),
    '@type': constructor,
  };

  static InputInlineQueryResultVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultVideo(
      id: (json['id'] as String?) ?? '',
      title: (json['title'] as String?) ?? '',
      description: (json['description'] as String?) ?? '',
      thumbnailUrl: (json['thumbnail_url'] as String?) ?? '',
      videoUrl: (json['video_url'] as String?) ?? '',
      mimeType: (json['mime_type'] as String?) ?? '',
      videoWidth: (json['video_width'] as int?) ?? 0,
      videoHeight: (json['video_height'] as int?) ?? 0,
      videoDuration: (json['video_duration'] as int?) ?? 0,
      replyMarkup: ReplyMarkup.fromJson(tdMapFromJson(json['reply_markup'])),
      inputMessageContent: InputMessageContent.fromJson(
        tdMapFromJson(json['input_message_content']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents a link to an opus-encoded audio file within an OGG container,
/// single channel audio
@immutable
final class InputInlineQueryResultVoiceNote extends InputInlineQueryResult {
  InputInlineQueryResultVoiceNote({
    required this.id,
    required this.title,
    required this.voiceNoteUrl,
    required this.voiceNoteDuration,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [title] Title of the voice note
  final String title;

  /// [voiceNoteUrl] The URL of the voice note file
  final String voiceNoteUrl;

  /// [voiceNoteDuration] Duration of the voice note, in seconds
  final int voiceNoteDuration;

  /// [replyMarkup] The message reply markup; pass null if none. Must be of type
  /// replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one
  /// of the following types: inputMessageText, inputMessageVoiceNote,
  /// inputMessageInvoice, inputMessageLocation, inputMessageVenue or
  /// inputMessageContact
  final InputMessageContent? inputMessageContent;

  static const String constructor = 'inputInlineQueryResultVoiceNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'title': title,
    'voice_note_url': voiceNoteUrl,
    'voice_note_duration': voiceNoteDuration,
    'reply_markup': replyMarkup?.toJson(),
    'input_message_content': inputMessageContent?.toJson(),
    '@type': constructor,
  };

  static InputInlineQueryResultVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultVoiceNote(
      id: (json['id'] as String?) ?? '',
      title: (json['title'] as String?) ?? '',
      voiceNoteUrl: (json['voice_note_url'] as String?) ?? '',
      voiceNoteDuration: (json['voice_note_duration'] as int?) ?? 0,
      replyMarkup: ReplyMarkup.fromJson(tdMapFromJson(json['reply_markup'])),
      inputMessageContent: InputMessageContent.fromJson(
        tdMapFromJson(json['input_message_content']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
