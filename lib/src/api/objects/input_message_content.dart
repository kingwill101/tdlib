import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The content of a message to send
@immutable
sealed class InputMessageContent extends TdObject {
  const InputMessageContent();

  static const String constructor = 'inputMessageContent';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [InputMessageAnimation]
  /// [InputMessageAudio]
  /// [InputMessageChecklist]
  /// [InputMessageContact]
  /// [InputMessageDice]
  /// [InputMessageDocument]
  /// [InputMessageForwarded]
  /// [InputMessageGame]
  /// [InputMessageInvoice]
  /// [InputMessageLiveLocation]
  /// [InputMessageLocation]
  /// [InputMessagePaidMedia]
  /// [InputMessagePhoto]
  /// [InputMessagePoll]
  /// [InputMessageRichMessage]
  /// [InputMessageStakeDice]
  /// [InputMessageSticker]
  /// [InputMessageStory]
  /// [InputMessageText]
  /// [InputMessageVenue]
  /// [InputMessageVideo]
  /// [InputMessageVideoNote]
  /// [InputMessageVoiceNote]
  static InputMessageContent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputMessageAnimation.constructor:
        return InputMessageAnimation.fromJson(json);

      case InputMessageAudio.constructor:
        return InputMessageAudio.fromJson(json);

      case InputMessageChecklist.constructor:
        return InputMessageChecklist.fromJson(json);

      case InputMessageContact.constructor:
        return InputMessageContact.fromJson(json);

      case InputMessageDice.constructor:
        return InputMessageDice.fromJson(json);

      case InputMessageDocument.constructor:
        return InputMessageDocument.fromJson(json);

      case InputMessageForwarded.constructor:
        return InputMessageForwarded.fromJson(json);

      case InputMessageGame.constructor:
        return InputMessageGame.fromJson(json);

      case InputMessageInvoice.constructor:
        return InputMessageInvoice.fromJson(json);

      case InputMessageLiveLocation.constructor:
        return InputMessageLiveLocation.fromJson(json);

      case InputMessageLocation.constructor:
        return InputMessageLocation.fromJson(json);

      case InputMessagePaidMedia.constructor:
        return InputMessagePaidMedia.fromJson(json);

      case InputMessagePhoto.constructor:
        return InputMessagePhoto.fromJson(json);

      case InputMessagePoll.constructor:
        return InputMessagePoll.fromJson(json);

      case InputMessageRichMessage.constructor:
        return InputMessageRichMessage.fromJson(json);

      case InputMessageStakeDice.constructor:
        return InputMessageStakeDice.fromJson(json);

      case InputMessageSticker.constructor:
        return InputMessageSticker.fromJson(json);

      case InputMessageStory.constructor:
        return InputMessageStory.fromJson(json);

      case InputMessageText.constructor:
        return InputMessageText.fromJson(json);

      case InputMessageVenue.constructor:
        return InputMessageVenue.fromJson(json);

      case InputMessageVideo.constructor:
        return InputMessageVideo.fromJson(json);

      case InputMessageVideoNote.constructor:
        return InputMessageVideoNote.fromJson(json);

      case InputMessageVoiceNote.constructor:
        return InputMessageVoiceNote.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An animation message (GIF-style).
@immutable
final class InputMessageAnimation extends InputMessageContent {
  InputMessageAnimation({
    this.animation,
    this.caption,
    required this.showCaptionAboveMedia,
    required this.hasSpoiler,
  });

  /// [animation] The animation to be sent
  final InputAnimation? animation;

  /// [caption] Animation caption; pass null to use an empty caption;
  /// 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// [showCaptionAboveMedia] True, if the caption must be shown above the
  /// animation; otherwise, the caption must be shown below the animation; not
  /// supported in secret chats
  final bool showCaptionAboveMedia;

  /// [hasSpoiler] True, if the animation preview must be covered by a spoiler
  /// animation; not supported in secret chats
  final bool hasSpoiler;

  static const String constructor = 'inputMessageAnimation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'animation': animation?.toJson(),
    'caption': caption?.toJson(),
    'show_caption_above_media': showCaptionAboveMedia,
    'has_spoiler': hasSpoiler,
    '@type': constructor,
  };

  static InputMessageAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageAnimation(
      animation: InputAnimation.fromJson(tdMapFromJson(json['animation'])),
      caption: FormattedText.fromJson(tdMapFromJson(json['caption'])),
      showCaptionAboveMedia:
          (json['show_caption_above_media'] as bool?) ?? false,
      hasSpoiler: (json['has_spoiler'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An audio message
@immutable
final class InputMessageAudio extends InputMessageContent {
  InputMessageAudio({this.audio, this.caption});

  /// [audio] Audio to be sent
  final InputAudio? audio;

  /// [caption] Audio caption; pass null to use an empty caption;
  /// 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  static const String constructor = 'inputMessageAudio';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'audio': audio?.toJson(),
    'caption': caption?.toJson(),
    '@type': constructor,
  };

  static InputMessageAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageAudio(
      audio: InputAudio.fromJson(tdMapFromJson(json['audio'])),
      caption: FormattedText.fromJson(tdMapFromJson(json['caption'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with a checklist. Checklists can't be sent to secret chats,
/// channel chats and channel direct messages chats; for Telegram Premium
/// users only
@immutable
final class InputMessageChecklist extends InputMessageContent {
  InputMessageChecklist({this.checklist});

  /// [checklist] The checklist to send
  final InputChecklist? checklist;

  static const String constructor = 'inputMessageChecklist';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'checklist': checklist?.toJson(),
    '@type': constructor,
  };

  static InputMessageChecklist? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageChecklist(
      checklist: InputChecklist.fromJson(tdMapFromJson(json['checklist'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message containing a user contact
@immutable
final class InputMessageContact extends InputMessageContent {
  InputMessageContact({this.contact});

  /// [contact] Contact to send
  final Contact? contact;

  static const String constructor = 'inputMessageContact';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'contact': contact?.toJson(),
    '@type': constructor,
  };

  static InputMessageContact? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageContact(
      contact: Contact.fromJson(tdMapFromJson(json['contact'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A dice message
@immutable
final class InputMessageDice extends InputMessageContent {
  InputMessageDice({required this.emoji, required this.clearDraft});

  /// [emoji] Emoji on which the dice throw animation is based
  final String emoji;

  /// [clearDraft] Pass true to delete message draft in the chat
  final bool clearDraft;

  static const String constructor = 'inputMessageDice';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'emoji': emoji,
    'clear_draft': clearDraft,
    '@type': constructor,
  };

  static InputMessageDice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageDice(
      emoji: (json['emoji'] as String?) ?? '',
      clearDraft: (json['clear_draft'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A document message (general file)
@immutable
final class InputMessageDocument extends InputMessageContent {
  InputMessageDocument({this.document, this.caption});

  /// [document] Document to be sent
  final InputDocument? document;

  /// [caption] Document caption; pass null to use an empty caption;
  /// 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  static const String constructor = 'inputMessageDocument';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'document': document?.toJson(),
    'caption': caption?.toJson(),
    '@type': constructor,
  };

  static InputMessageDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageDocument(
      document: InputDocument.fromJson(tdMapFromJson(json['document'])),
      caption: FormattedText.fromJson(tdMapFromJson(json['caption'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A forwarded message
@immutable
final class InputMessageForwarded extends InputMessageContent {
  InputMessageForwarded({
    required this.fromChatId,
    required this.messageId,
    required this.inGameShare,
    required this.replaceVideoStartTimestamp,
    required this.newVideoStartTimestamp,
    this.copyOptions,
  });

  /// [fromChatId] Identifier for the chat this forwarded message came from
  final int fromChatId;

  /// [messageId] Identifier of the message to forward. A message can be
  /// forwarded only if messageProperties.can_be_forwarded
  final int messageId;

  /// [inGameShare] Pass true if a game message is being shared from a launched
  /// game; applies only to game messages
  final bool inGameShare;

  /// [replaceVideoStartTimestamp] Pass true to replace video start timestamp in
  /// the forwarded message
  final bool replaceVideoStartTimestamp;

  /// [newVideoStartTimestamp] The new video start timestamp; ignored if
  /// replace_video_start_timestamp == false
  final int newVideoStartTimestamp;

  /// [copyOptions] Options to be used to copy content of the message without
  /// reference to the original sender; pass null to forward the message as
  /// usual
  final MessageCopyOptions? copyOptions;

  static const String constructor = 'inputMessageForwarded';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'from_chat_id': fromChatId,
    'message_id': messageId,
    'in_game_share': inGameShare,
    'replace_video_start_timestamp': replaceVideoStartTimestamp,
    'new_video_start_timestamp': newVideoStartTimestamp,
    'copy_options': copyOptions?.toJson(),
    '@type': constructor,
  };

  static InputMessageForwarded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageForwarded(
      fromChatId: (json['from_chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      inGameShare: (json['in_game_share'] as bool?) ?? false,
      replaceVideoStartTimestamp:
          (json['replace_video_start_timestamp'] as bool?) ?? false,
      newVideoStartTimestamp: (json['new_video_start_timestamp'] as int?) ?? 0,
      copyOptions: MessageCopyOptions.fromJson(
        tdMapFromJson(json['copy_options']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with a game; not supported for channels or secret chats
@immutable
final class InputMessageGame extends InputMessageContent {
  InputMessageGame({required this.botUserId, required this.gameShortName});

  /// [botUserId] User identifier of the bot that owns the game
  final int botUserId;

  /// [gameShortName] Short name of the game
  final String gameShortName;

  static const String constructor = 'inputMessageGame';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bot_user_id': botUserId,
    'game_short_name': gameShortName,
    '@type': constructor,
  };

  static InputMessageGame? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageGame(
      botUserId: (json['bot_user_id'] as int?) ?? 0,
      gameShortName: (json['game_short_name'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with an invoice; can be used only by bots
@immutable
final class InputMessageInvoice extends InputMessageContent {
  InputMessageInvoice({
    this.invoice,
    required this.title,
    required this.description,
    this.photoUrl,
    required this.photoSize,
    required this.photoWidth,
    required this.photoHeight,
    required this.payload,
    required this.providerToken,
    required this.providerData,
    required this.startParameter,
    this.paidMedia,
    this.paidMediaCaption,
  });

  /// [invoice] Invoice
  final Invoice? invoice;

  /// [title] Product title; 1-32 characters
  final String title;

  /// param_[description] Product description; 0-255 characters
  final String description;

  /// [photoUrl] Product photo URL; optional
  final String? photoUrl;

  /// [photoSize] Product photo size
  final int photoSize;

  /// [photoWidth] Product photo width
  final int photoWidth;

  /// [photoHeight] Product photo height
  final int photoHeight;

  /// [payload] The invoice payload
  final String payload;

  /// [providerToken] Payment provider token; may be empty for payments in
  /// Telegram Stars
  final String providerToken;

  /// [providerData] JSON-encoded data about the invoice, which will be shared
  /// with the payment provider
  final String providerData;

  /// [startParameter] Unique invoice bot deep link parameter for the generation
  /// of this invoice. If empty, it would be possible to pay directly from
  /// forwards of the invoice message
  final String startParameter;

  /// [paidMedia] The content of paid media attached to the invoice; pass null
  /// if none
  final InputPaidMedia? paidMedia;

  /// [paidMediaCaption] Paid media caption; pass null to use an empty caption;
  /// 0-getOption("message_caption_length_max") characters
  final FormattedText? paidMediaCaption;

  static const String constructor = 'inputMessageInvoice';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'invoice': invoice?.toJson(),
    'title': title,
    'description': description,
    'photo_url': photoUrl,
    'photo_size': photoSize,
    'photo_width': photoWidth,
    'photo_height': photoHeight,
    'payload': payload,
    'provider_token': providerToken,
    'provider_data': providerData,
    'start_parameter': startParameter,
    'paid_media': paidMedia?.toJson(),
    'paid_media_caption': paidMediaCaption?.toJson(),
    '@type': constructor,
  };

  static InputMessageInvoice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageInvoice(
      invoice: Invoice.fromJson(tdMapFromJson(json['invoice'])),
      title: (json['title'] as String?) ?? '',
      description: (json['description'] as String?) ?? '',
      photoUrl: (json['photo_url'] as String?),
      photoSize: (json['photo_size'] as int?) ?? 0,
      photoWidth: (json['photo_width'] as int?) ?? 0,
      photoHeight: (json['photo_height'] as int?) ?? 0,
      payload: (json['payload'] as String?) ?? '',
      providerToken: (json['provider_token'] as String?) ?? '',
      providerData: (json['provider_data'] as String?) ?? '',
      startParameter: (json['start_parameter'] as String?) ?? '',
      paidMedia: InputPaidMedia.fromJson(tdMapFromJson(json['paid_media'])),
      paidMediaCaption: FormattedText.fromJson(
        tdMapFromJson(json['paid_media_caption']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with a live location
@immutable
final class InputMessageLiveLocation extends InputMessageContent {
  InputMessageLiveLocation({this.location});

  /// [location] Initial state of the live location to be sent. Live period must
  /// be equal to 0x7FFFFFFF for permanent live locations, or between 60 and
  /// 86400
  final LiveLocation? location;

  static const String constructor = 'inputMessageLiveLocation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'location': location?.toJson(),
    '@type': constructor,
  };

  static InputMessageLiveLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageLiveLocation(
      location: LiveLocation.fromJson(tdMapFromJson(json['location'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with a location
@immutable
final class InputMessageLocation extends InputMessageContent {
  InputMessageLocation({this.location});

  /// [location] Location to be sent
  final Location? location;

  static const String constructor = 'inputMessageLocation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'location': location?.toJson(),
    '@type': constructor,
  };

  static InputMessageLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageLocation(
      location: Location.fromJson(tdMapFromJson(json['location'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with paid media; can be used only in channel chats with
/// supergroupFullInfo.has_paid_media_allowed
@immutable
final class InputMessagePaidMedia extends InputMessageContent {
  InputMessagePaidMedia({
    required this.starCount,
    required this.paidMedia,
    this.caption,
    required this.showCaptionAboveMedia,
    required this.payload,
  });

  /// [starCount] The number of Telegram Stars that must be paid to see the
  /// media; 1-getOption("paid_media_message_star_count_max")
  final int starCount;

  /// [paidMedia] The content of the paid media
  final List<InputPaidMedia> paidMedia;

  /// [caption] Message caption; pass null to use an empty caption;
  /// 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// [showCaptionAboveMedia] True, if the caption must be shown above the
  /// media; otherwise, the caption must be shown below the media; not supported
  /// in secret chats
  final bool showCaptionAboveMedia;

  /// [payload] Bot-provided data for the paid media; bots only
  final String payload;

  static const String constructor = 'inputMessagePaidMedia';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'star_count': starCount,
    'paid_media': paidMedia.map((item) => item.toJson()).toList(),
    'caption': caption?.toJson(),
    'show_caption_above_media': showCaptionAboveMedia,
    'payload': payload,
    '@type': constructor,
  };

  static InputMessagePaidMedia? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessagePaidMedia(
      starCount: (json['star_count'] as int?) ?? 0,
      paidMedia: List<InputPaidMedia>.from(
        tdListFromJson(json['paid_media'])
            .map((item) => InputPaidMedia.fromJson(tdMapFromJson(item)))
            .whereType<InputPaidMedia>(),
      ),
      caption: FormattedText.fromJson(tdMapFromJson(json['caption'])),
      showCaptionAboveMedia:
          (json['show_caption_above_media'] as bool?) ?? false,
      payload: (json['payload'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A photo message
@immutable
final class InputMessagePhoto extends InputMessageContent {
  InputMessagePhoto({
    this.photo,
    this.caption,
    required this.showCaptionAboveMedia,
    this.selfDestructType,
    required this.hasSpoiler,
  });

  /// [photo] Photo to be sent
  final InputPhoto? photo;

  /// [caption] Photo caption; pass null to use an empty caption;
  /// 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// [showCaptionAboveMedia] True, if the caption must be shown above the
  /// photo; otherwise, the caption must be shown below the photo; not supported
  /// in secret chats
  final bool showCaptionAboveMedia;

  /// [selfDestructType] Photo self-destruct type; pass null if none; private
  /// chats only
  final MessageSelfDestructType? selfDestructType;

  /// [hasSpoiler] True, if the photo preview must be covered by a spoiler
  /// animation; not supported in secret chats
  final bool hasSpoiler;

  static const String constructor = 'inputMessagePhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'photo': photo?.toJson(),
    'caption': caption?.toJson(),
    'show_caption_above_media': showCaptionAboveMedia,
    'self_destruct_type': selfDestructType?.toJson(),
    'has_spoiler': hasSpoiler,
    '@type': constructor,
  };

  static InputMessagePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessagePhoto(
      photo: InputPhoto.fromJson(tdMapFromJson(json['photo'])),
      caption: FormattedText.fromJson(tdMapFromJson(json['caption'])),
      showCaptionAboveMedia:
          (json['show_caption_above_media'] as bool?) ?? false,
      selfDestructType: MessageSelfDestructType.fromJson(
        tdMapFromJson(json['self_destruct_type']),
      ),
      hasSpoiler: (json['has_spoiler'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with a poll. Polls can't be sent to secret chats and channel
/// direct messages chats. Polls can be sent to a private chat only if the
/// chat is a chat with a bot or the Saved Messages chat
@immutable
final class InputMessagePoll extends InputMessageContent {
  InputMessagePoll({
    this.question,
    required this.options,
    this.description,
    this.media,
    required this.isAnonymous,
    required this.allowsMultipleAnswers,
    required this.allowsRevoting,
    required this.membersOnly,
    required this.countryCodes,
    required this.shuffleOptions,
    required this.hideResultsUntilCloses,
    this.type,
    required this.openPeriod,
    required this.closeDate,
    this.isClosed,
  });

  /// [question] Poll question; 1-255 characters (up to 300 characters for
  /// bots). Only custom emoji entities are allowed to be added and only by
  /// Premium users
  final FormattedText? question;

  /// [options] List of poll answer options;
  /// 1-getOption("poll_answer_count_max") options
  final List<InputPollOption> options;

  /// param_[description] Poll description; pass null to use an empty
  /// description; 0-getOption("message_caption_length_max") characters
  final FormattedText? description;

  /// [media] Media attached to the poll; pass null if none. Must be one of the
  /// following types: inputPollMediaAnimation, inputPollMediaAudio,
  /// inputPollMediaDocument, inputPollMediaLocation, inputPollMediaPhoto,
  /// inputPollMediaVenue, or inputPollMediaVideo without caption
  final InputPollMedia? media;

  /// [isAnonymous] True, if the poll voters are anonymous. Non-anonymous polls
  /// can't be sent or forwarded to channels
  final bool isAnonymous;

  /// [allowsMultipleAnswers] True, if multiple answer options can be chosen
  /// simultaneously
  final bool allowsMultipleAnswers;

  /// [allowsRevoting] True, if the poll can be answered multiple times
  final bool allowsRevoting;

  /// [membersOnly] True, if only the users that are members of the chat for
  /// more than a day will be able to vote; for channel chats only
  final bool membersOnly;

  /// [countryCodes] The list of two-letter ISO 3166-1 alpha-2 codes of
  /// countries, users from which will be able to vote; for channel chats only.
  /// If empty, then all users can participate in the poll. There can be up to
  /// getOption("poll_country_count_max") chosen countries
  final List<String> countryCodes;

  /// [shuffleOptions] True, if poll options must be shown in a fixed random
  /// order
  final bool shuffleOptions;

  /// [hideResultsUntilCloses] True, if the poll results will appear only after
  /// the poll closes
  final bool hideResultsUntilCloses;

  /// [type] Type of the poll
  final InputPollType? type;

  /// [openPeriod] Amount of time the poll will be active after creation, in
  /// seconds; 0-getOption("poll_open_period_max"); pass 0 if not specified
  final int openPeriod;

  /// [closeDate] Point in time (Unix timestamp) when the poll will
  /// automatically be closed; must be 0-getOption("poll_open_period_max")
  /// seconds in the future; pass 0 if not specified
  final int closeDate;

  /// [isClosed] True, if the poll needs to be sent already closed; for bots
  /// only
  final bool? isClosed;

  static const String constructor = 'inputMessagePoll';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'question': question?.toJson(),
    'options': options.map((item) => item.toJson()).toList(),
    'description': description?.toJson(),
    'media': media?.toJson(),
    'is_anonymous': isAnonymous,
    'allows_multiple_answers': allowsMultipleAnswers,
    'allows_revoting': allowsRevoting,
    'members_only': membersOnly,
    'country_codes': countryCodes.map((item) => item).toList(),
    'shuffle_options': shuffleOptions,
    'hide_results_until_closes': hideResultsUntilCloses,
    'type': type?.toJson(),
    'open_period': openPeriod,
    'close_date': closeDate,
    'is_closed': isClosed,
    '@type': constructor,
  };

  static InputMessagePoll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessagePoll(
      question: FormattedText.fromJson(tdMapFromJson(json['question'])),
      options: List<InputPollOption>.from(
        tdListFromJson(json['options'])
            .map((item) => InputPollOption.fromJson(tdMapFromJson(item)))
            .whereType<InputPollOption>(),
      ),
      description: FormattedText.fromJson(tdMapFromJson(json['description'])),
      media: InputPollMedia.fromJson(tdMapFromJson(json['media'])),
      isAnonymous: (json['is_anonymous'] as bool?) ?? false,
      allowsMultipleAnswers:
          (json['allows_multiple_answers'] as bool?) ?? false,
      allowsRevoting: (json['allows_revoting'] as bool?) ?? false,
      membersOnly: (json['members_only'] as bool?) ?? false,
      countryCodes: List<String>.from(
        tdListFromJson(
          json['country_codes'],
        ).map((item) => (item as dynamic)?.toString() ?? ''),
      ),
      shuffleOptions: (json['shuffle_options'] as bool?) ?? false,
      hideResultsUntilCloses:
          (json['hide_results_until_closes'] as bool?) ?? false,
      type: InputPollType.fromJson(tdMapFromJson(json['type'])),
      openPeriod: (json['open_period'] as int?) ?? 0,
      closeDate: (json['close_date'] as int?) ?? 0,
      isClosed: (json['is_closed'] as bool?),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A rich message
@immutable
final class InputMessageRichMessage extends InputMessageContent {
  InputMessageRichMessage({this.message, required this.clearDraft});

  /// [message] The rich message to send
  final InputRichMessage? message;

  /// [clearDraft] Pass true to delete message draft in the chat
  final bool clearDraft;

  static const String constructor = 'inputMessageRichMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'message': message?.toJson(),
    'clear_draft': clearDraft,
    '@type': constructor,
  };

  static InputMessageRichMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageRichMessage(
      message: InputRichMessage.fromJson(tdMapFromJson(json['message'])),
      clearDraft: (json['clear_draft'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A stake dice message
@immutable
final class InputMessageStakeDice extends InputMessageContent {
  InputMessageStakeDice({
    required this.stateHash,
    required this.stakeGramAmount,
    required this.clearDraft,
  });

  /// [stateHash] Hash of the stake dice state. The state hash can be used only
  /// if it was received recently enough. Otherwise, a new state must be
  /// requested using getStakeDiceState
  final String stateHash;

  /// [stakeGramAmount] The TON Gram amount that will be staked; in the smallest
  /// units of the currency. Must be in the range
  /// getOption("stake_dice_stake_amount_min")-getOption("stake_dice_stake_amount_max")
  final int stakeGramAmount;

  /// [clearDraft] Pass true to delete message draft in the chat
  final bool clearDraft;

  static const String constructor = 'inputMessageStakeDice';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'state_hash': stateHash,
    'stake_gram_amount': stakeGramAmount,
    'clear_draft': clearDraft,
    '@type': constructor,
  };

  static InputMessageStakeDice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageStakeDice(
      stateHash: (json['state_hash'] as String?) ?? '',
      stakeGramAmount: (json['stake_gram_amount'] as int?) ?? 0,
      clearDraft: (json['clear_draft'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A sticker message
@immutable
final class InputMessageSticker extends InputMessageContent {
  InputMessageSticker({this.sticker, required this.emoji});

  /// [sticker] Sticker to be sent
  final InputSticker? sticker;

  /// [emoji] Emoji used to choose the sticker
  final String emoji;

  static const String constructor = 'inputMessageSticker';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sticker': sticker?.toJson(),
    'emoji': emoji,
    '@type': constructor,
  };

  static InputMessageSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageSticker(
      sticker: InputSticker.fromJson(tdMapFromJson(json['sticker'])),
      emoji: (json['emoji'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with a forwarded story. Stories can't be forwarded to secret
/// chats. A story can be forwarded only if story.can_be_forwarded
@immutable
final class InputMessageStory extends InputMessageContent {
  InputMessageStory({required this.storyPosterChatId, required this.storyId});

  /// [storyPosterChatId] Identifier of the chat that posted the story
  final int storyPosterChatId;

  /// [storyId] Story identifier
  final int storyId;

  static const String constructor = 'inputMessageStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story_poster_chat_id': storyPosterChatId,
    'story_id': storyId,
    '@type': constructor,
  };

  static InputMessageStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageStory(
      storyPosterChatId: (json['story_poster_chat_id'] as int?) ?? 0,
      storyId: (json['story_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A text message
@immutable
final class InputMessageText extends InputMessageContent {
  InputMessageText({
    this.text,
    this.linkPreviewOptions,
    required this.clearDraft,
  });

  /// [text] Formatted text to be sent; 0-getOption("message_text_length_max")
  /// characters. Only Bold, Italic, Underline, Strikethrough, Spoiler,
  /// CustomEmoji, BlockQuote, ExpandableBlockQuote, Code, Pre, PreCode,
  /// TextUrl, MentionName, and DateTime entities are allowed to be specified
  /// manually
  final FormattedText? text;

  /// [linkPreviewOptions] Options to be used for generation of a link preview;
  /// may be null if none; pass null to use default link preview options
  final LinkPreviewOptions? linkPreviewOptions;

  /// [clearDraft] Pass true to delete message draft in the chat
  final bool clearDraft;

  static const String constructor = 'inputMessageText';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'link_preview_options': linkPreviewOptions?.toJson(),
    'clear_draft': clearDraft,
    '@type': constructor,
  };

  static InputMessageText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageText(
      text: FormattedText.fromJson(tdMapFromJson(json['text'])),
      linkPreviewOptions: LinkPreviewOptions.fromJson(
        tdMapFromJson(json['link_preview_options']),
      ),
      clearDraft: (json['clear_draft'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with information about a venue
@immutable
final class InputMessageVenue extends InputMessageContent {
  InputMessageVenue({this.venue});

  /// [venue] Venue to send
  final Venue? venue;

  static const String constructor = 'inputMessageVenue';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'venue': venue?.toJson(),
    '@type': constructor,
  };

  static InputMessageVenue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageVenue(
      venue: Venue.fromJson(tdMapFromJson(json['venue'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A video message
@immutable
final class InputMessageVideo extends InputMessageContent {
  InputMessageVideo({
    this.video,
    this.caption,
    required this.showCaptionAboveMedia,
    this.selfDestructType,
    required this.hasSpoiler,
  });

  /// [video] Video to be sent
  final InputVideo? video;

  /// [caption] Video caption; pass null to use an empty caption;
  /// 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// [showCaptionAboveMedia] True, if the caption must be shown above the
  /// video; otherwise, the caption must be shown below the video; not supported
  /// in secret chats
  final bool showCaptionAboveMedia;

  /// [selfDestructType] Video self-destruct type; pass null if none; private
  /// chats only
  final MessageSelfDestructType? selfDestructType;

  /// [hasSpoiler] True, if the video preview must be covered by a spoiler
  /// animation; not supported in secret chats
  final bool hasSpoiler;

  static const String constructor = 'inputMessageVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'video': video?.toJson(),
    'caption': caption?.toJson(),
    'show_caption_above_media': showCaptionAboveMedia,
    'self_destruct_type': selfDestructType?.toJson(),
    'has_spoiler': hasSpoiler,
    '@type': constructor,
  };

  static InputMessageVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageVideo(
      video: InputVideo.fromJson(tdMapFromJson(json['video'])),
      caption: FormattedText.fromJson(tdMapFromJson(json['caption'])),
      showCaptionAboveMedia:
          (json['show_caption_above_media'] as bool?) ?? false,
      selfDestructType: MessageSelfDestructType.fromJson(
        tdMapFromJson(json['self_destruct_type']),
      ),
      hasSpoiler: (json['has_spoiler'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A video note message
@immutable
final class InputMessageVideoNote extends InputMessageContent {
  InputMessageVideoNote({this.videoNote, this.selfDestructType});

  /// [videoNote] Video note to be sent
  final InputVideoNote? videoNote;

  /// [selfDestructType] Video note self-destruct type; may be null if none;
  /// pass null if none; private chats only
  final MessageSelfDestructType? selfDestructType;

  static const String constructor = 'inputMessageVideoNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'video_note': videoNote?.toJson(),
    'self_destruct_type': selfDestructType?.toJson(),
    '@type': constructor,
  };

  static InputMessageVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageVideoNote(
      videoNote: InputVideoNote.fromJson(tdMapFromJson(json['video_note'])),
      selfDestructType: MessageSelfDestructType.fromJson(
        tdMapFromJson(json['self_destruct_type']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A voice note message
@immutable
final class InputMessageVoiceNote extends InputMessageContent {
  InputMessageVoiceNote({this.voiceNote, this.caption, this.selfDestructType});

  /// [voiceNote] Voice note to be sent
  final InputVoiceNote? voiceNote;

  /// [caption] Voice note caption; pass null to use an empty caption;
  /// 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// [selfDestructType] Voice note self-destruct type; may be null if none;
  /// pass null if none; private chats only
  final MessageSelfDestructType? selfDestructType;

  static const String constructor = 'inputMessageVoiceNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'voice_note': voiceNote?.toJson(),
    'caption': caption?.toJson(),
    'self_destruct_type': selfDestructType?.toJson(),
    '@type': constructor,
  };

  static InputMessageVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageVoiceNote(
      voiceNote: InputVoiceNote.fromJson(tdMapFromJson(json['voice_note'])),
      caption: FormattedText.fromJson(tdMapFromJson(json['caption'])),
      selfDestructType: MessageSelfDestructType.fromJson(
        tdMapFromJson(json['self_destruct_type']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
