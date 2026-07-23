import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of link preview
@immutable
sealed class LinkPreviewType extends TdObject {
  const LinkPreviewType();

  static const String constructor = 'linkPreviewType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [LinkPreviewTypeAlbum]
  /// [LinkPreviewTypeAnimation]
  /// [LinkPreviewTypeApp]
  /// [LinkPreviewTypeArticle]
  /// [LinkPreviewTypeAudio]
  /// [LinkPreviewTypeBackground]
  /// [LinkPreviewTypeChannelBoost]
  /// [LinkPreviewTypeChat]
  /// [LinkPreviewTypeDirectMessagesChat]
  /// [LinkPreviewTypeDocument]
  /// [LinkPreviewTypeEmbeddedAnimationPlayer]
  /// [LinkPreviewTypeEmbeddedAudioPlayer]
  /// [LinkPreviewTypeEmbeddedVideoPlayer]
  /// [LinkPreviewTypeExternalAudio]
  /// [LinkPreviewTypeExternalVideo]
  /// [LinkPreviewTypeGiftAuction]
  /// [LinkPreviewTypeGiftCollection]
  /// [LinkPreviewTypeGroupCall]
  /// [LinkPreviewTypeInvoice]
  /// [LinkPreviewTypeLiveStory]
  /// [LinkPreviewTypeMessage]
  /// [LinkPreviewTypePhoto]
  /// [LinkPreviewTypePremiumGiftCode]
  /// [LinkPreviewTypeRequestManagedBot]
  /// [LinkPreviewTypeShareableChatFolder]
  /// [LinkPreviewTypeSticker]
  /// [LinkPreviewTypeStickerSet]
  /// [LinkPreviewTypeStory]
  /// [LinkPreviewTypeStoryAlbum]
  /// [LinkPreviewTypeSupergroupBoost]
  /// [LinkPreviewTypeTextCompositionStyle]
  /// [LinkPreviewTypeTheme]
  /// [LinkPreviewTypeUnsupported]
  /// [LinkPreviewTypeUpgradedGift]
  /// [LinkPreviewTypeUser]
  /// [LinkPreviewTypeVideo]
  /// [LinkPreviewTypeVideoChat]
  /// [LinkPreviewTypeVideoNote]
  /// [LinkPreviewTypeVoiceNote]
  /// [LinkPreviewTypeWebApp]
  static LinkPreviewType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case LinkPreviewTypeAlbum.constructor:
        return LinkPreviewTypeAlbum.fromJson(json);

      case LinkPreviewTypeAnimation.constructor:
        return LinkPreviewTypeAnimation.fromJson(json);

      case LinkPreviewTypeApp.constructor:
        return LinkPreviewTypeApp.fromJson(json);

      case LinkPreviewTypeArticle.constructor:
        return LinkPreviewTypeArticle.fromJson(json);

      case LinkPreviewTypeAudio.constructor:
        return LinkPreviewTypeAudio.fromJson(json);

      case LinkPreviewTypeBackground.constructor:
        return LinkPreviewTypeBackground.fromJson(json);

      case LinkPreviewTypeChannelBoost.constructor:
        return LinkPreviewTypeChannelBoost.fromJson(json);

      case LinkPreviewTypeChat.constructor:
        return LinkPreviewTypeChat.fromJson(json);

      case LinkPreviewTypeDirectMessagesChat.constructor:
        return LinkPreviewTypeDirectMessagesChat.fromJson(json);

      case LinkPreviewTypeDocument.constructor:
        return LinkPreviewTypeDocument.fromJson(json);

      case LinkPreviewTypeEmbeddedAnimationPlayer.constructor:
        return LinkPreviewTypeEmbeddedAnimationPlayer.fromJson(json);

      case LinkPreviewTypeEmbeddedAudioPlayer.constructor:
        return LinkPreviewTypeEmbeddedAudioPlayer.fromJson(json);

      case LinkPreviewTypeEmbeddedVideoPlayer.constructor:
        return LinkPreviewTypeEmbeddedVideoPlayer.fromJson(json);

      case LinkPreviewTypeExternalAudio.constructor:
        return LinkPreviewTypeExternalAudio.fromJson(json);

      case LinkPreviewTypeExternalVideo.constructor:
        return LinkPreviewTypeExternalVideo.fromJson(json);

      case LinkPreviewTypeGiftAuction.constructor:
        return LinkPreviewTypeGiftAuction.fromJson(json);

      case LinkPreviewTypeGiftCollection.constructor:
        return LinkPreviewTypeGiftCollection.fromJson(json);

      case LinkPreviewTypeGroupCall.constructor:
        return LinkPreviewTypeGroupCall.fromJson(json);

      case LinkPreviewTypeInvoice.constructor:
        return LinkPreviewTypeInvoice.fromJson(json);

      case LinkPreviewTypeLiveStory.constructor:
        return LinkPreviewTypeLiveStory.fromJson(json);

      case LinkPreviewTypeMessage.constructor:
        return LinkPreviewTypeMessage.fromJson(json);

      case LinkPreviewTypePhoto.constructor:
        return LinkPreviewTypePhoto.fromJson(json);

      case LinkPreviewTypePremiumGiftCode.constructor:
        return LinkPreviewTypePremiumGiftCode.fromJson(json);

      case LinkPreviewTypeRequestManagedBot.constructor:
        return LinkPreviewTypeRequestManagedBot.fromJson(json);

      case LinkPreviewTypeShareableChatFolder.constructor:
        return LinkPreviewTypeShareableChatFolder.fromJson(json);

      case LinkPreviewTypeSticker.constructor:
        return LinkPreviewTypeSticker.fromJson(json);

      case LinkPreviewTypeStickerSet.constructor:
        return LinkPreviewTypeStickerSet.fromJson(json);

      case LinkPreviewTypeStory.constructor:
        return LinkPreviewTypeStory.fromJson(json);

      case LinkPreviewTypeStoryAlbum.constructor:
        return LinkPreviewTypeStoryAlbum.fromJson(json);

      case LinkPreviewTypeSupergroupBoost.constructor:
        return LinkPreviewTypeSupergroupBoost.fromJson(json);

      case LinkPreviewTypeTextCompositionStyle.constructor:
        return LinkPreviewTypeTextCompositionStyle.fromJson(json);

      case LinkPreviewTypeTheme.constructor:
        return LinkPreviewTypeTheme.fromJson(json);

      case LinkPreviewTypeUnsupported.constructor:
        return LinkPreviewTypeUnsupported.fromJson(json);

      case LinkPreviewTypeUpgradedGift.constructor:
        return LinkPreviewTypeUpgradedGift.fromJson(json);

      case LinkPreviewTypeUser.constructor:
        return LinkPreviewTypeUser.fromJson(json);

      case LinkPreviewTypeVideo.constructor:
        return LinkPreviewTypeVideo.fromJson(json);

      case LinkPreviewTypeVideoChat.constructor:
        return LinkPreviewTypeVideoChat.fromJson(json);

      case LinkPreviewTypeVideoNote.constructor:
        return LinkPreviewTypeVideoNote.fromJson(json);

      case LinkPreviewTypeVoiceNote.constructor:
        return LinkPreviewTypeVoiceNote.fromJson(json);

      case LinkPreviewTypeWebApp.constructor:
        return LinkPreviewTypeWebApp.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a media album consisting of photos and videos
@immutable
final class LinkPreviewTypeAlbum extends LinkPreviewType {
  LinkPreviewTypeAlbum({required this.media, required this.caption});

  /// [media] The list of album media
  final List<LinkPreviewAlbumMedia> media;

  /// [caption] Album caption
  final String caption;

  static const String constructor = 'linkPreviewTypeAlbum';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'media': media.map((item) => item.toJson()).toList(),
    'caption': caption,
    '@type': constructor,
  };

  static LinkPreviewTypeAlbum? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeAlbum(
      media: List<LinkPreviewAlbumMedia>.from(
        tdListFromJson(json['media'])
            .map((item) => LinkPreviewAlbumMedia.fromJson(tdMapFromJson(item)))
            .whereType<LinkPreviewAlbumMedia>(),
      ),
      caption: (json['caption'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to an animation
@immutable
final class LinkPreviewTypeAnimation extends LinkPreviewType {
  LinkPreviewTypeAnimation({this.animation});

  /// [animation] The animation
  final Animation? animation;

  static const String constructor = 'linkPreviewTypeAnimation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'animation': animation?.toJson(),
    '@type': constructor,
  };

  static LinkPreviewTypeAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeAnimation(
      animation: Animation.fromJson(tdMapFromJson(json['animation'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to an app at App Store or Google Play
@immutable
final class LinkPreviewTypeApp extends LinkPreviewType {
  LinkPreviewTypeApp({this.photo});

  /// [photo] Photo for the app
  final Photo? photo;

  static const String constructor = 'linkPreviewTypeApp';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'photo': photo?.toJson(),
    '@type': constructor,
  };

  static LinkPreviewTypeApp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeApp(
      photo: Photo.fromJson(tdMapFromJson(json['photo'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a web site
@immutable
final class LinkPreviewTypeArticle extends LinkPreviewType {
  LinkPreviewTypeArticle({this.photo});

  /// [photo] Article's main photo; may be null
  final Photo? photo;

  static const String constructor = 'linkPreviewTypeArticle';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'photo': photo?.toJson(),
    '@type': constructor,
  };

  static LinkPreviewTypeArticle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeArticle(
      photo: Photo.fromJson(tdMapFromJson(json['photo'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to an audio
@immutable
final class LinkPreviewTypeAudio extends LinkPreviewType {
  LinkPreviewTypeAudio({this.audio});

  /// [audio] The audio description
  final Audio? audio;

  static const String constructor = 'linkPreviewTypeAudio';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'audio': audio?.toJson(),
    '@type': constructor,
  };

  static LinkPreviewTypeAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeAudio(
      audio: Audio.fromJson(tdMapFromJson(json['audio'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a background. Link preview title and description are
/// available only for filled backgrounds
@immutable
final class LinkPreviewTypeBackground extends LinkPreviewType {
  LinkPreviewTypeBackground({this.document, this.backgroundType});

  /// [document] Document with the background; may be null for filled
  /// backgrounds
  final Document? document;

  /// [backgroundType] Type of the background; may be null if unknown
  final BackgroundType? backgroundType;

  static const String constructor = 'linkPreviewTypeBackground';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'document': document?.toJson(),
    'background_type': backgroundType?.toJson(),
    '@type': constructor,
  };

  static LinkPreviewTypeBackground? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeBackground(
      document: Document.fromJson(tdMapFromJson(json['document'])),
      backgroundType: BackgroundType.fromJson(
        tdMapFromJson(json['background_type']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to boost a channel chat
@immutable
final class LinkPreviewTypeChannelBoost extends LinkPreviewType {
  LinkPreviewTypeChannelBoost({this.photo});

  /// [photo] Photo of the chat; may be null
  final ChatPhoto? photo;

  static const String constructor = 'linkPreviewTypeChannelBoost';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'photo': photo?.toJson(),
    '@type': constructor,
  };

  static LinkPreviewTypeChannelBoost? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeChannelBoost(
      photo: ChatPhoto.fromJson(tdMapFromJson(json['photo'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a chat
@immutable
final class LinkPreviewTypeChat extends LinkPreviewType {
  LinkPreviewTypeChat({
    this.type,
    this.photo,
    required this.createsJoinRequest,
  });

  /// [type] Type of the chat
  final InviteLinkChatType? type;

  /// [photo] Photo of the chat; may be null
  final ChatPhoto? photo;

  /// [createsJoinRequest] True, if the link only creates join request
  final bool createsJoinRequest;

  static const String constructor = 'linkPreviewTypeChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'type': type?.toJson(),
    'photo': photo?.toJson(),
    'creates_join_request': createsJoinRequest,
    '@type': constructor,
  };

  static LinkPreviewTypeChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeChat(
      type: InviteLinkChatType.fromJson(tdMapFromJson(json['type'])),
      photo: ChatPhoto.fromJson(tdMapFromJson(json['photo'])),
      createsJoinRequest: (json['creates_join_request'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a direct messages chat of a channel
@immutable
final class LinkPreviewTypeDirectMessagesChat extends LinkPreviewType {
  LinkPreviewTypeDirectMessagesChat({this.photo});

  /// [photo] Photo of the channel chat; may be null
  final ChatPhoto? photo;

  static const String constructor = 'linkPreviewTypeDirectMessagesChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'photo': photo?.toJson(),
    '@type': constructor,
  };

  static LinkPreviewTypeDirectMessagesChat? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeDirectMessagesChat(
      photo: ChatPhoto.fromJson(tdMapFromJson(json['photo'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a general file
@immutable
final class LinkPreviewTypeDocument extends LinkPreviewType {
  LinkPreviewTypeDocument({this.document});

  /// [document] The document description
  final Document? document;

  static const String constructor = 'linkPreviewTypeDocument';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'document': document?.toJson(),
    '@type': constructor,
  };

  static LinkPreviewTypeDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeDocument(
      document: Document.fromJson(tdMapFromJson(json['document'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to an animation player
@immutable
final class LinkPreviewTypeEmbeddedAnimationPlayer extends LinkPreviewType {
  LinkPreviewTypeEmbeddedAnimationPlayer({
    required this.url,
    this.animation,
    this.thumbnail,
    required this.duration,
    required this.width,
    required this.height,
  });

  /// [url] URL of the external animation player
  final String url;

  /// [animation] The cached animation; may be null if unknown
  final Animation? animation;

  /// [thumbnail] Thumbnail of the animation; may be null if unknown
  final Photo? thumbnail;

  /// [duration] Duration of the animation, in seconds
  final int duration;

  /// [width] Expected width of the embedded player
  final int width;

  /// [height] Expected height of the embedded player
  final int height;

  static const String constructor = 'linkPreviewTypeEmbeddedAnimationPlayer';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    'animation': animation?.toJson(),
    'thumbnail': thumbnail?.toJson(),
    'duration': duration,
    'width': width,
    'height': height,
    '@type': constructor,
  };

  static LinkPreviewTypeEmbeddedAnimationPlayer? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeEmbeddedAnimationPlayer(
      url: (json['url'] as String?) ?? '',
      animation: Animation.fromJson(tdMapFromJson(json['animation'])),
      thumbnail: Photo.fromJson(tdMapFromJson(json['thumbnail'])),
      duration: (json['duration'] as int?) ?? 0,
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to an audio player
@immutable
final class LinkPreviewTypeEmbeddedAudioPlayer extends LinkPreviewType {
  LinkPreviewTypeEmbeddedAudioPlayer({
    required this.url,
    this.audio,
    this.thumbnail,
    required this.duration,
    required this.width,
    required this.height,
  });

  /// [url] URL of the external audio player
  final String url;

  /// [audio] The cached audio; may be null if unknown
  final Audio? audio;

  /// [thumbnail] Thumbnail of the audio; may be null if unknown
  final Photo? thumbnail;

  /// [duration] Duration of the audio, in seconds
  final int duration;

  /// [width] Expected width of the embedded player
  final int width;

  /// [height] Expected height of the embedded player
  final int height;

  static const String constructor = 'linkPreviewTypeEmbeddedAudioPlayer';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    'audio': audio?.toJson(),
    'thumbnail': thumbnail?.toJson(),
    'duration': duration,
    'width': width,
    'height': height,
    '@type': constructor,
  };

  static LinkPreviewTypeEmbeddedAudioPlayer? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeEmbeddedAudioPlayer(
      url: (json['url'] as String?) ?? '',
      audio: Audio.fromJson(tdMapFromJson(json['audio'])),
      thumbnail: Photo.fromJson(tdMapFromJson(json['thumbnail'])),
      duration: (json['duration'] as int?) ?? 0,
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a video player
@immutable
final class LinkPreviewTypeEmbeddedVideoPlayer extends LinkPreviewType {
  LinkPreviewTypeEmbeddedVideoPlayer({
    required this.url,
    this.video,
    this.thumbnail,
    required this.duration,
    required this.width,
    required this.height,
  });

  /// [url] URL of the external video player
  final String url;

  /// [video] The cached video; may be null if unknown
  final Video? video;

  /// [thumbnail] Thumbnail of the video; may be null if unknown
  final Photo? thumbnail;

  /// [duration] Duration of the video, in seconds
  final int duration;

  /// [width] Expected width of the embedded player
  final int width;

  /// [height] Expected height of the embedded player
  final int height;

  static const String constructor = 'linkPreviewTypeEmbeddedVideoPlayer';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    'video': video?.toJson(),
    'thumbnail': thumbnail?.toJson(),
    'duration': duration,
    'width': width,
    'height': height,
    '@type': constructor,
  };

  static LinkPreviewTypeEmbeddedVideoPlayer? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeEmbeddedVideoPlayer(
      url: (json['url'] as String?) ?? '',
      video: Video.fromJson(tdMapFromJson(json['video'])),
      thumbnail: Photo.fromJson(tdMapFromJson(json['thumbnail'])),
      duration: (json['duration'] as int?) ?? 0,
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to an audio file
@immutable
final class LinkPreviewTypeExternalAudio extends LinkPreviewType {
  LinkPreviewTypeExternalAudio({
    required this.url,
    required this.mimeType,
    required this.duration,
  });

  /// [url] URL of the audio file
  final String url;

  /// [mimeType] MIME type of the audio file
  final String mimeType;

  /// [duration] Duration of the audio, in seconds; 0 if unknown
  final int duration;

  static const String constructor = 'linkPreviewTypeExternalAudio';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    'mime_type': mimeType,
    'duration': duration,
    '@type': constructor,
  };

  static LinkPreviewTypeExternalAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeExternalAudio(
      url: (json['url'] as String?) ?? '',
      mimeType: (json['mime_type'] as String?) ?? '',
      duration: (json['duration'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a video file
@immutable
final class LinkPreviewTypeExternalVideo extends LinkPreviewType {
  LinkPreviewTypeExternalVideo({
    required this.url,
    required this.mimeType,
    required this.width,
    required this.height,
    required this.duration,
  });

  /// [url] URL of the video file
  final String url;

  /// [mimeType] MIME type of the video file
  final String mimeType;

  /// [width] Expected width of the video preview; 0 if unknown
  final int width;

  /// [height] Expected height of the video preview; 0 if unknown
  final int height;

  /// [duration] Duration of the video, in seconds; 0 if unknown
  final int duration;

  static const String constructor = 'linkPreviewTypeExternalVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    'mime_type': mimeType,
    'width': width,
    'height': height,
    'duration': duration,
    '@type': constructor,
  };

  static LinkPreviewTypeExternalVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeExternalVideo(
      url: (json['url'] as String?) ?? '',
      mimeType: (json['mime_type'] as String?) ?? '',
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
      duration: (json['duration'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a gift auction
@immutable
final class LinkPreviewTypeGiftAuction extends LinkPreviewType {
  LinkPreviewTypeGiftAuction({this.gift, required this.auctionEndDate});

  /// [gift] The gift
  final Gift? gift;

  /// [auctionEndDate] Point in time (Unix timestamp) when the auction will be
  /// ended
  final int auctionEndDate;

  static const String constructor = 'linkPreviewTypeGiftAuction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift': gift?.toJson(),
    'auction_end_date': auctionEndDate,
    '@type': constructor,
  };

  static LinkPreviewTypeGiftAuction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeGiftAuction(
      gift: Gift.fromJson(tdMapFromJson(json['gift'])),
      auctionEndDate: (json['auction_end_date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a gift collection
@immutable
final class LinkPreviewTypeGiftCollection extends LinkPreviewType {
  LinkPreviewTypeGiftCollection({required this.icons});

  /// [icons] Icons for some gifts from the collection; may be empty
  final List<Sticker> icons;

  static const String constructor = 'linkPreviewTypeGiftCollection';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'icons': icons.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static LinkPreviewTypeGiftCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeGiftCollection(
      icons: List<Sticker>.from(
        tdListFromJson(json['icons'])
            .map((item) => Sticker.fromJson(tdMapFromJson(item)))
            .whereType<Sticker>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a group call that isn't bound to a chat
@immutable
final class LinkPreviewTypeGroupCall extends LinkPreviewType {
  const LinkPreviewTypeGroupCall();

  static const String constructor = 'linkPreviewTypeGroupCall';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static LinkPreviewTypeGroupCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const LinkPreviewTypeGroupCall();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to an invoice
@immutable
final class LinkPreviewTypeInvoice extends LinkPreviewType {
  const LinkPreviewTypeInvoice();

  static const String constructor = 'linkPreviewTypeInvoice';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static LinkPreviewTypeInvoice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const LinkPreviewTypeInvoice();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a live story group call
@immutable
final class LinkPreviewTypeLiveStory extends LinkPreviewType {
  LinkPreviewTypeLiveStory({
    required this.storyPosterChatId,
    required this.storyId,
  });

  /// [storyPosterChatId] The identifier of the chat that posted the story
  final int storyPosterChatId;

  /// [storyId] Story identifier
  final int storyId;

  static const String constructor = 'linkPreviewTypeLiveStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story_poster_chat_id': storyPosterChatId,
    'story_id': storyId,
    '@type': constructor,
  };

  static LinkPreviewTypeLiveStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeLiveStory(
      storyPosterChatId: (json['story_poster_chat_id'] as int?) ?? 0,
      storyId: (json['story_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a text or a poll Telegram message
@immutable
final class LinkPreviewTypeMessage extends LinkPreviewType {
  const LinkPreviewTypeMessage();

  static const String constructor = 'linkPreviewTypeMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static LinkPreviewTypeMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const LinkPreviewTypeMessage();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a photo
@immutable
final class LinkPreviewTypePhoto extends LinkPreviewType {
  LinkPreviewTypePhoto({this.photo});

  /// [photo] The photo
  final Photo? photo;

  static const String constructor = 'linkPreviewTypePhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'photo': photo?.toJson(),
    '@type': constructor,
  };

  static LinkPreviewTypePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypePhoto(
      photo: Photo.fromJson(tdMapFromJson(json['photo'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a Telegram Premium gift code
@immutable
final class LinkPreviewTypePremiumGiftCode extends LinkPreviewType {
  const LinkPreviewTypePremiumGiftCode();

  static const String constructor = 'linkPreviewTypePremiumGiftCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static LinkPreviewTypePremiumGiftCode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const LinkPreviewTypePremiumGiftCode();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a dialog for creating of a managed bot
@immutable
final class LinkPreviewTypeRequestManagedBot extends LinkPreviewType {
  const LinkPreviewTypeRequestManagedBot();

  static const String constructor = 'linkPreviewTypeRequestManagedBot';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static LinkPreviewTypeRequestManagedBot? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const LinkPreviewTypeRequestManagedBot();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a shareable chat folder
@immutable
final class LinkPreviewTypeShareableChatFolder extends LinkPreviewType {
  const LinkPreviewTypeShareableChatFolder();

  static const String constructor = 'linkPreviewTypeShareableChatFolder';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static LinkPreviewTypeShareableChatFolder? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const LinkPreviewTypeShareableChatFolder();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a sticker
@immutable
final class LinkPreviewTypeSticker extends LinkPreviewType {
  LinkPreviewTypeSticker({this.sticker});

  /// [sticker] The sticker. It can be an arbitrary WEBP image and can have
  /// dimensions bigger than 512
  final Sticker? sticker;

  static const String constructor = 'linkPreviewTypeSticker';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sticker': sticker?.toJson(),
    '@type': constructor,
  };

  static LinkPreviewTypeSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeSticker(
      sticker: Sticker.fromJson(tdMapFromJson(json['sticker'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a sticker set
@immutable
final class LinkPreviewTypeStickerSet extends LinkPreviewType {
  LinkPreviewTypeStickerSet({required this.stickers});

  /// [stickers] Up to 4 stickers from the sticker set
  final List<Sticker> stickers;

  static const String constructor = 'linkPreviewTypeStickerSet';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'stickers': stickers.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static LinkPreviewTypeStickerSet? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeStickerSet(
      stickers: List<Sticker>.from(
        tdListFromJson(json['stickers'])
            .map((item) => Sticker.fromJson(tdMapFromJson(item)))
            .whereType<Sticker>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a story. Link preview description is unavailable
@immutable
final class LinkPreviewTypeStory extends LinkPreviewType {
  LinkPreviewTypeStory({
    required this.storyPosterChatId,
    required this.storyId,
  });

  /// [storyPosterChatId] The identifier of the chat that posted the story
  final int storyPosterChatId;

  /// [storyId] Story identifier
  final int storyId;

  static const String constructor = 'linkPreviewTypeStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story_poster_chat_id': storyPosterChatId,
    'story_id': storyId,
    '@type': constructor,
  };

  static LinkPreviewTypeStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeStory(
      storyPosterChatId: (json['story_poster_chat_id'] as int?) ?? 0,
      storyId: (json['story_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to an album of stories
@immutable
final class LinkPreviewTypeStoryAlbum extends LinkPreviewType {
  LinkPreviewTypeStoryAlbum({this.photoIcon, this.videoIcon});

  /// [photoIcon] Icon of the album; may be null if none
  final Photo? photoIcon;

  /// [videoIcon] Video icon of the album; may be null if none
  final Video? videoIcon;

  static const String constructor = 'linkPreviewTypeStoryAlbum';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'photo_icon': photoIcon?.toJson(),
    'video_icon': videoIcon?.toJson(),
    '@type': constructor,
  };

  static LinkPreviewTypeStoryAlbum? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeStoryAlbum(
      photoIcon: Photo.fromJson(tdMapFromJson(json['photo_icon'])),
      videoIcon: Video.fromJson(tdMapFromJson(json['video_icon'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to boost a supergroup chat
@immutable
final class LinkPreviewTypeSupergroupBoost extends LinkPreviewType {
  LinkPreviewTypeSupergroupBoost({this.photo});

  /// [photo] Photo of the chat; may be null
  final ChatPhoto? photo;

  static const String constructor = 'linkPreviewTypeSupergroupBoost';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'photo': photo?.toJson(),
    '@type': constructor,
  };

  static LinkPreviewTypeSupergroupBoost? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeSupergroupBoost(
      photo: ChatPhoto.fromJson(tdMapFromJson(json['photo'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a text composition style
@immutable
final class LinkPreviewTypeTextCompositionStyle extends LinkPreviewType {
  LinkPreviewTypeTextCompositionStyle({required this.customEmojiId});

  /// [customEmojiId] Identifier of the custom emoji corresponding to the style;
  /// 0 if none
  final int customEmojiId;

  static const String constructor = 'linkPreviewTypeTextCompositionStyle';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'custom_emoji_id': customEmojiId.toString(),
    '@type': constructor,
  };

  static LinkPreviewTypeTextCompositionStyle? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeTextCompositionStyle(
      customEmojiId:
          int.tryParse(
            (json['custom_emoji_id'] as dynamic)?.toString() ?? '',
          ) ??
          0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a cloud theme. TDLib has no theme support yet
@immutable
final class LinkPreviewTypeTheme extends LinkPreviewType {
  LinkPreviewTypeTheme({required this.documents, this.settings});

  /// [documents] The list of files with theme description
  final List<Document> documents;

  /// [settings] Settings for the cloud theme; may be null if unknown
  final ThemeSettings? settings;

  static const String constructor = 'linkPreviewTypeTheme';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'documents': documents.map((item) => item.toJson()).toList(),
    'settings': settings?.toJson(),
    '@type': constructor,
  };

  static LinkPreviewTypeTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeTheme(
      documents: List<Document>.from(
        tdListFromJson(json['documents'])
            .map((item) => Document.fromJson(tdMapFromJson(item)))
            .whereType<Document>(),
      ),
      settings: ThemeSettings.fromJson(tdMapFromJson(json['settings'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link preview type is unsupported yet
@immutable
final class LinkPreviewTypeUnsupported extends LinkPreviewType {
  const LinkPreviewTypeUnsupported();

  static const String constructor = 'linkPreviewTypeUnsupported';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static LinkPreviewTypeUnsupported? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const LinkPreviewTypeUnsupported();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to an upgraded gift
@immutable
final class LinkPreviewTypeUpgradedGift extends LinkPreviewType {
  LinkPreviewTypeUpgradedGift({this.gift});

  /// [gift] The gift
  final UpgradedGift? gift;

  static const String constructor = 'linkPreviewTypeUpgradedGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift': gift?.toJson(),
    '@type': constructor,
  };

  static LinkPreviewTypeUpgradedGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeUpgradedGift(
      gift: UpgradedGift.fromJson(tdMapFromJson(json['gift'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a user
@immutable
final class LinkPreviewTypeUser extends LinkPreviewType {
  LinkPreviewTypeUser({this.photo, required this.isBot});

  /// [photo] Photo of the user; may be null if none
  final ChatPhoto? photo;

  /// [isBot] True, if the user is a bot
  final bool isBot;

  static const String constructor = 'linkPreviewTypeUser';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'photo': photo?.toJson(),
    'is_bot': isBot,
    '@type': constructor,
  };

  static LinkPreviewTypeUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeUser(
      photo: ChatPhoto.fromJson(tdMapFromJson(json['photo'])),
      isBot: (json['is_bot'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a video
@immutable
final class LinkPreviewTypeVideo extends LinkPreviewType {
  LinkPreviewTypeVideo({this.video, this.cover, required this.startTimestamp});

  /// [video] The video description
  final Video? video;

  /// [cover] Cover of the video; may be null if none
  final Photo? cover;

  /// [startTimestamp] Timestamp from which the video playing must start, in
  /// seconds
  final int startTimestamp;

  static const String constructor = 'linkPreviewTypeVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'video': video?.toJson(),
    'cover': cover?.toJson(),
    'start_timestamp': startTimestamp,
    '@type': constructor,
  };

  static LinkPreviewTypeVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeVideo(
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

/// The link is a link to a video chat
@immutable
final class LinkPreviewTypeVideoChat extends LinkPreviewType {
  LinkPreviewTypeVideoChat({
    this.photo,
    required this.isLiveStream,
    required this.joinsAsSpeaker,
  });

  /// [photo] Photo of the chat with the video chat; may be null if none
  final ChatPhoto? photo;

  /// [isLiveStream] True, if the video chat is expected to be a live stream in
  /// a channel or a broadcast group
  final bool isLiveStream;

  /// [joinsAsSpeaker] True, if the user can use the link to join the video chat
  /// without being muted by administrators
  final bool joinsAsSpeaker;

  static const String constructor = 'linkPreviewTypeVideoChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'photo': photo?.toJson(),
    'is_live_stream': isLiveStream,
    'joins_as_speaker': joinsAsSpeaker,
    '@type': constructor,
  };

  static LinkPreviewTypeVideoChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeVideoChat(
      photo: ChatPhoto.fromJson(tdMapFromJson(json['photo'])),
      isLiveStream: (json['is_live_stream'] as bool?) ?? false,
      joinsAsSpeaker: (json['joins_as_speaker'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a video note message
@immutable
final class LinkPreviewTypeVideoNote extends LinkPreviewType {
  LinkPreviewTypeVideoNote({this.videoNote});

  /// [videoNote] The video note
  final VideoNote? videoNote;

  static const String constructor = 'linkPreviewTypeVideoNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'video_note': videoNote?.toJson(),
    '@type': constructor,
  };

  static LinkPreviewTypeVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeVideoNote(
      videoNote: VideoNote.fromJson(tdMapFromJson(json['video_note'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a voice note message
@immutable
final class LinkPreviewTypeVoiceNote extends LinkPreviewType {
  LinkPreviewTypeVoiceNote({this.voiceNote});

  /// [voiceNote] The voice note
  final VoiceNote? voiceNote;

  static const String constructor = 'linkPreviewTypeVoiceNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'voice_note': voiceNote?.toJson(),
    '@type': constructor,
  };

  static LinkPreviewTypeVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeVoiceNote(
      voiceNote: VoiceNote.fromJson(tdMapFromJson(json['voice_note'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a Web App
@immutable
final class LinkPreviewTypeWebApp extends LinkPreviewType {
  LinkPreviewTypeWebApp({this.photo});

  /// [photo] Web App photo; may be null if none
  final Photo? photo;

  static const String constructor = 'linkPreviewTypeWebApp';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'photo': photo?.toJson(),
    '@type': constructor,
  };

  static LinkPreviewTypeWebApp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeWebApp(
      photo: Photo.fromJson(tdMapFromJson(json['photo'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
