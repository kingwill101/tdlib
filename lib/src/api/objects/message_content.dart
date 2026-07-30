import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains the content of a message
@immutable
sealed class MessageContent extends TdObject {
  const MessageContent();

  static const String constructor = 'messageContent';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [MessageAnimatedEmoji]
  /// [MessageAnimation]
  /// [MessageAudio]
  /// [MessageBasicGroupChatCreate]
  /// [MessageBotWriteAccessAllowed]
  /// [MessageCall]
  /// [MessageChatAddMembers]
  /// [MessageChatAddedToCommunity]
  /// [MessageChatBoost]
  /// [MessageChatChangePhoto]
  /// [MessageChatChangeTitle]
  /// [MessageChatDeleteMember]
  /// [MessageChatDeletePhoto]
  /// [MessageChatHasProtectedContentDisableRequested]
  /// [MessageChatHasProtectedContentToggled]
  /// [MessageChatJoinByLink]
  /// [MessageChatJoinByRequest]
  /// [MessageChatOwnerChanged]
  /// [MessageChatOwnerLeft]
  /// [MessageChatRemovedFromCommunity]
  /// [MessageChatSetBackground]
  /// [MessageChatSetMessageAutoDeleteTime]
  /// [MessageChatSetTheme]
  /// [MessageChatShared]
  /// [MessageChatUpgradeFrom]
  /// [MessageChatUpgradeTo]
  /// [MessageChecklist]
  /// [MessageChecklistTasksAdded]
  /// [MessageChecklistTasksDone]
  /// [MessageContact]
  /// [MessageContactRegistered]
  /// [MessageCustomServiceAction]
  /// [MessageDice]
  /// [MessageDirectMessagePriceChanged]
  /// [MessageDocument]
  /// [MessageExpiredPhoto]
  /// [MessageExpiredVideo]
  /// [MessageExpiredVideoNote]
  /// [MessageExpiredVoiceNote]
  /// [MessageForumTopicCreated]
  /// [MessageForumTopicEdited]
  /// [MessageForumTopicIsClosedToggled]
  /// [MessageForumTopicIsHiddenToggled]
  /// [MessageGame]
  /// [MessageGameScore]
  /// [MessageGift]
  /// [MessageGiftedPremium]
  /// [MessageGiftedStars]
  /// [MessageGiftedTon]
  /// [MessageGiveaway]
  /// [MessageGiveawayCompleted]
  /// [MessageGiveawayCreated]
  /// [MessageGiveawayPrizeStars]
  /// [MessageGiveawayWinners]
  /// [MessageGroupCall]
  /// [MessageInviteVideoChatParticipants]
  /// [MessageInvoice]
  /// [MessageLiveLocation]
  /// [MessageLocation]
  /// [MessageManagedBotCreated]
  /// [MessagePaidMedia]
  /// [MessagePaidMessagePriceChanged]
  /// [MessagePaidMessagesRefunded]
  /// [MessagePassportDataReceived]
  /// [MessagePassportDataSent]
  /// [MessagePaymentRefunded]
  /// [MessagePaymentSuccessful]
  /// [MessagePaymentSuccessfulBot]
  /// [MessagePhoto]
  /// [MessagePinMessage]
  /// [MessagePoll]
  /// [MessagePollOptionAdded]
  /// [MessagePollOptionDeleted]
  /// [MessagePremiumGiftCode]
  /// [MessageProximityAlertTriggered]
  /// [MessageRefundedUpgradedGift]
  /// [MessageRichMessage]
  /// [MessageScreenshotTaken]
  /// [MessageStakeDice]
  /// [MessageSticker]
  /// [MessageStory]
  /// [MessageSuggestBirthdate]
  /// [MessageSuggestProfilePhoto]
  /// [MessageSuggestedPostApprovalFailed]
  /// [MessageSuggestedPostApproved]
  /// [MessageSuggestedPostDeclined]
  /// [MessageSuggestedPostPaid]
  /// [MessageSuggestedPostRefunded]
  /// [MessageSupergroupChatCreate]
  /// [MessageText]
  /// [MessageUnsupported]
  /// [MessageUpgradedGift]
  /// [MessageUpgradedGiftPurchaseOffer]
  /// [MessageUpgradedGiftPurchaseOfferRejected]
  /// [MessageUsersShared]
  /// [MessageVenue]
  /// [MessageVideo]
  /// [MessageVideoChatEnded]
  /// [MessageVideoChatScheduled]
  /// [MessageVideoChatStarted]
  /// [MessageVideoNote]
  /// [MessageVoiceNote]
  /// [MessageWebAppDataReceived]
  /// [MessageWebAppDataSent]
  static MessageContent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageAnimatedEmoji.constructor:
        return MessageAnimatedEmoji.fromJson(json);

      case MessageAnimation.constructor:
        return MessageAnimation.fromJson(json);

      case MessageAudio.constructor:
        return MessageAudio.fromJson(json);

      case MessageBasicGroupChatCreate.constructor:
        return MessageBasicGroupChatCreate.fromJson(json);

      case MessageBotWriteAccessAllowed.constructor:
        return MessageBotWriteAccessAllowed.fromJson(json);

      case MessageCall.constructor:
        return MessageCall.fromJson(json);

      case MessageChatAddMembers.constructor:
        return MessageChatAddMembers.fromJson(json);

      case MessageChatAddedToCommunity.constructor:
        return MessageChatAddedToCommunity.fromJson(json);

      case MessageChatBoost.constructor:
        return MessageChatBoost.fromJson(json);

      case MessageChatChangePhoto.constructor:
        return MessageChatChangePhoto.fromJson(json);

      case MessageChatChangeTitle.constructor:
        return MessageChatChangeTitle.fromJson(json);

      case MessageChatDeleteMember.constructor:
        return MessageChatDeleteMember.fromJson(json);

      case MessageChatDeletePhoto.constructor:
        return MessageChatDeletePhoto.fromJson(json);

      case MessageChatHasProtectedContentDisableRequested.constructor:
        return MessageChatHasProtectedContentDisableRequested.fromJson(json);

      case MessageChatHasProtectedContentToggled.constructor:
        return MessageChatHasProtectedContentToggled.fromJson(json);

      case MessageChatJoinByLink.constructor:
        return MessageChatJoinByLink.fromJson(json);

      case MessageChatJoinByRequest.constructor:
        return MessageChatJoinByRequest.fromJson(json);

      case MessageChatOwnerChanged.constructor:
        return MessageChatOwnerChanged.fromJson(json);

      case MessageChatOwnerLeft.constructor:
        return MessageChatOwnerLeft.fromJson(json);

      case MessageChatRemovedFromCommunity.constructor:
        return MessageChatRemovedFromCommunity.fromJson(json);

      case MessageChatSetBackground.constructor:
        return MessageChatSetBackground.fromJson(json);

      case MessageChatSetMessageAutoDeleteTime.constructor:
        return MessageChatSetMessageAutoDeleteTime.fromJson(json);

      case MessageChatSetTheme.constructor:
        return MessageChatSetTheme.fromJson(json);

      case MessageChatShared.constructor:
        return MessageChatShared.fromJson(json);

      case MessageChatUpgradeFrom.constructor:
        return MessageChatUpgradeFrom.fromJson(json);

      case MessageChatUpgradeTo.constructor:
        return MessageChatUpgradeTo.fromJson(json);

      case MessageChecklist.constructor:
        return MessageChecklist.fromJson(json);

      case MessageChecklistTasksAdded.constructor:
        return MessageChecklistTasksAdded.fromJson(json);

      case MessageChecklistTasksDone.constructor:
        return MessageChecklistTasksDone.fromJson(json);

      case MessageContact.constructor:
        return MessageContact.fromJson(json);

      case MessageContactRegistered.constructor:
        return MessageContactRegistered.fromJson(json);

      case MessageCustomServiceAction.constructor:
        return MessageCustomServiceAction.fromJson(json);

      case MessageDice.constructor:
        return MessageDice.fromJson(json);

      case MessageDirectMessagePriceChanged.constructor:
        return MessageDirectMessagePriceChanged.fromJson(json);

      case MessageDocument.constructor:
        return MessageDocument.fromJson(json);

      case MessageExpiredPhoto.constructor:
        return MessageExpiredPhoto.fromJson(json);

      case MessageExpiredVideo.constructor:
        return MessageExpiredVideo.fromJson(json);

      case MessageExpiredVideoNote.constructor:
        return MessageExpiredVideoNote.fromJson(json);

      case MessageExpiredVoiceNote.constructor:
        return MessageExpiredVoiceNote.fromJson(json);

      case MessageForumTopicCreated.constructor:
        return MessageForumTopicCreated.fromJson(json);

      case MessageForumTopicEdited.constructor:
        return MessageForumTopicEdited.fromJson(json);

      case MessageForumTopicIsClosedToggled.constructor:
        return MessageForumTopicIsClosedToggled.fromJson(json);

      case MessageForumTopicIsHiddenToggled.constructor:
        return MessageForumTopicIsHiddenToggled.fromJson(json);

      case MessageGame.constructor:
        return MessageGame.fromJson(json);

      case MessageGameScore.constructor:
        return MessageGameScore.fromJson(json);

      case MessageGift.constructor:
        return MessageGift.fromJson(json);

      case MessageGiftedPremium.constructor:
        return MessageGiftedPremium.fromJson(json);

      case MessageGiftedStars.constructor:
        return MessageGiftedStars.fromJson(json);

      case MessageGiftedTon.constructor:
        return MessageGiftedTon.fromJson(json);

      case MessageGiveaway.constructor:
        return MessageGiveaway.fromJson(json);

      case MessageGiveawayCompleted.constructor:
        return MessageGiveawayCompleted.fromJson(json);

      case MessageGiveawayCreated.constructor:
        return MessageGiveawayCreated.fromJson(json);

      case MessageGiveawayPrizeStars.constructor:
        return MessageGiveawayPrizeStars.fromJson(json);

      case MessageGiveawayWinners.constructor:
        return MessageGiveawayWinners.fromJson(json);

      case MessageGroupCall.constructor:
        return MessageGroupCall.fromJson(json);

      case MessageInviteVideoChatParticipants.constructor:
        return MessageInviteVideoChatParticipants.fromJson(json);

      case MessageInvoice.constructor:
        return MessageInvoice.fromJson(json);

      case MessageLiveLocation.constructor:
        return MessageLiveLocation.fromJson(json);

      case MessageLocation.constructor:
        return MessageLocation.fromJson(json);

      case MessageManagedBotCreated.constructor:
        return MessageManagedBotCreated.fromJson(json);

      case MessagePaidMedia.constructor:
        return MessagePaidMedia.fromJson(json);

      case MessagePaidMessagePriceChanged.constructor:
        return MessagePaidMessagePriceChanged.fromJson(json);

      case MessagePaidMessagesRefunded.constructor:
        return MessagePaidMessagesRefunded.fromJson(json);

      case MessagePassportDataReceived.constructor:
        return MessagePassportDataReceived.fromJson(json);

      case MessagePassportDataSent.constructor:
        return MessagePassportDataSent.fromJson(json);

      case MessagePaymentRefunded.constructor:
        return MessagePaymentRefunded.fromJson(json);

      case MessagePaymentSuccessful.constructor:
        return MessagePaymentSuccessful.fromJson(json);

      case MessagePaymentSuccessfulBot.constructor:
        return MessagePaymentSuccessfulBot.fromJson(json);

      case MessagePhoto.constructor:
        return MessagePhoto.fromJson(json);

      case MessagePinMessage.constructor:
        return MessagePinMessage.fromJson(json);

      case MessagePoll.constructor:
        return MessagePoll.fromJson(json);

      case MessagePollOptionAdded.constructor:
        return MessagePollOptionAdded.fromJson(json);

      case MessagePollOptionDeleted.constructor:
        return MessagePollOptionDeleted.fromJson(json);

      case MessagePremiumGiftCode.constructor:
        return MessagePremiumGiftCode.fromJson(json);

      case MessageProximityAlertTriggered.constructor:
        return MessageProximityAlertTriggered.fromJson(json);

      case MessageRefundedUpgradedGift.constructor:
        return MessageRefundedUpgradedGift.fromJson(json);

      case MessageRichMessage.constructor:
        return MessageRichMessage.fromJson(json);

      case MessageScreenshotTaken.constructor:
        return MessageScreenshotTaken.fromJson(json);

      case MessageStakeDice.constructor:
        return MessageStakeDice.fromJson(json);

      case MessageSticker.constructor:
        return MessageSticker.fromJson(json);

      case MessageStory.constructor:
        return MessageStory.fromJson(json);

      case MessageSuggestBirthdate.constructor:
        return MessageSuggestBirthdate.fromJson(json);

      case MessageSuggestProfilePhoto.constructor:
        return MessageSuggestProfilePhoto.fromJson(json);

      case MessageSuggestedPostApprovalFailed.constructor:
        return MessageSuggestedPostApprovalFailed.fromJson(json);

      case MessageSuggestedPostApproved.constructor:
        return MessageSuggestedPostApproved.fromJson(json);

      case MessageSuggestedPostDeclined.constructor:
        return MessageSuggestedPostDeclined.fromJson(json);

      case MessageSuggestedPostPaid.constructor:
        return MessageSuggestedPostPaid.fromJson(json);

      case MessageSuggestedPostRefunded.constructor:
        return MessageSuggestedPostRefunded.fromJson(json);

      case MessageSupergroupChatCreate.constructor:
        return MessageSupergroupChatCreate.fromJson(json);

      case MessageText.constructor:
        return MessageText.fromJson(json);

      case MessageUnsupported.constructor:
        return MessageUnsupported.fromJson(json);

      case MessageUpgradedGift.constructor:
        return MessageUpgradedGift.fromJson(json);

      case MessageUpgradedGiftPurchaseOffer.constructor:
        return MessageUpgradedGiftPurchaseOffer.fromJson(json);

      case MessageUpgradedGiftPurchaseOfferRejected.constructor:
        return MessageUpgradedGiftPurchaseOfferRejected.fromJson(json);

      case MessageUsersShared.constructor:
        return MessageUsersShared.fromJson(json);

      case MessageVenue.constructor:
        return MessageVenue.fromJson(json);

      case MessageVideo.constructor:
        return MessageVideo.fromJson(json);

      case MessageVideoChatEnded.constructor:
        return MessageVideoChatEnded.fromJson(json);

      case MessageVideoChatScheduled.constructor:
        return MessageVideoChatScheduled.fromJson(json);

      case MessageVideoChatStarted.constructor:
        return MessageVideoChatStarted.fromJson(json);

      case MessageVideoNote.constructor:
        return MessageVideoNote.fromJson(json);

      case MessageVoiceNote.constructor:
        return MessageVoiceNote.fromJson(json);

      case MessageWebAppDataReceived.constructor:
        return MessageWebAppDataReceived.fromJson(json);

      case MessageWebAppDataSent.constructor:
        return MessageWebAppDataSent.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with an animated emoji
@immutable
final class MessageAnimatedEmoji extends MessageContent {
  MessageAnimatedEmoji({this.animatedEmoji, required this.emoji});

  /// [animatedEmoji] The animated emoji
  final AnimatedEmoji? animatedEmoji;

  /// [emoji] The corresponding emoji
  final String emoji;

  static const String constructor = 'messageAnimatedEmoji';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'animated_emoji': animatedEmoji?.toJson(),
    'emoji': emoji,
    '@type': constructor,
  };

  static MessageAnimatedEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageAnimatedEmoji(
      animatedEmoji: AnimatedEmoji.fromJson(
        tdMapFromJson(json['animated_emoji']),
      ),
      emoji: (json['emoji'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An animation message (GIF-style).
@immutable
final class MessageAnimation extends MessageContent {
  MessageAnimation({
    this.animation,
    this.caption,
    required this.showCaptionAboveMedia,
    required this.hasSpoiler,
    required this.isSecret,
  });

  /// [animation] The animation description
  final Animation? animation;

  /// [caption] Animation caption
  final FormattedText? caption;

  /// [showCaptionAboveMedia] True, if the caption must be shown above the
  /// animation; otherwise, the caption must be shown below the animation
  final bool showCaptionAboveMedia;

  /// [hasSpoiler] True, if the animation preview must be covered by a spoiler
  /// animation
  final bool hasSpoiler;

  /// [isSecret] True, if the animation thumbnail must be blurred and the
  /// animation must be shown only while tapped
  final bool isSecret;

  static const String constructor = 'messageAnimation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'animation': animation?.toJson(),
    'caption': caption?.toJson(),
    'show_caption_above_media': showCaptionAboveMedia,
    'has_spoiler': hasSpoiler,
    'is_secret': isSecret,
    '@type': constructor,
  };

  static MessageAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageAnimation(
      animation: Animation.fromJson(tdMapFromJson(json['animation'])),
      caption: FormattedText.fromJson(tdMapFromJson(json['caption'])),
      showCaptionAboveMedia:
          (json['show_caption_above_media'] as bool?) ?? false,
      hasSpoiler: (json['has_spoiler'] as bool?) ?? false,
      isSecret: (json['is_secret'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An audio message
@immutable
final class MessageAudio extends MessageContent {
  MessageAudio({this.audio, this.caption});

  /// [audio] The audio description
  final Audio? audio;

  /// [caption] Audio caption
  final FormattedText? caption;

  static const String constructor = 'messageAudio';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'audio': audio?.toJson(),
    'caption': caption?.toJson(),
    '@type': constructor,
  };

  static MessageAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageAudio(
      audio: Audio.fromJson(tdMapFromJson(json['audio'])),
      caption: FormattedText.fromJson(tdMapFromJson(json['caption'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A newly created basic group
@immutable
final class MessageBasicGroupChatCreate extends MessageContent {
  MessageBasicGroupChatCreate({
    required this.title,
    required this.memberUserIds,
  });

  /// [title] Title of the basic group
  final String title;

  /// [memberUserIds] User identifiers of members in the basic group
  final List<int> memberUserIds;

  static const String constructor = 'messageBasicGroupChatCreate';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'title': title,
    'member_user_ids': memberUserIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static MessageBasicGroupChatCreate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageBasicGroupChatCreate(
      title: (json['title'] as String?) ?? '',
      memberUserIds: List<int>.from(
        tdListFromJson(
          json['member_user_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user allowed the bot to send messages
@immutable
final class MessageBotWriteAccessAllowed extends MessageContent {
  MessageBotWriteAccessAllowed({this.reason});

  /// [reason] The reason why the bot was allowed to write messages
  final BotWriteAccessAllowReason? reason;

  static const String constructor = 'messageBotWriteAccessAllowed';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'reason': reason?.toJson(),
    '@type': constructor,
  };

  static MessageBotWriteAccessAllowed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageBotWriteAccessAllowed(
      reason: BotWriteAccessAllowReason.fromJson(tdMapFromJson(json['reason'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with information about an ended call
@immutable
final class MessageCall extends MessageContent {
  MessageCall({
    required this.uniqueId,
    required this.isVideo,
    this.discardReason,
    required this.duration,
  });

  /// [uniqueId] Persistent unique call identifier; 0 for calls from other
  /// devices, which can't be passed as inputCallFromMessage
  final int uniqueId;

  /// [isVideo] True, if the call was a video call
  final bool isVideo;

  /// [discardReason] Reason why the call was discarded
  final CallDiscardReason? discardReason;

  /// [duration] Call duration, in seconds
  final int duration;

  static const String constructor = 'messageCall';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'unique_id': uniqueId.toString(),
    'is_video': isVideo,
    'discard_reason': discardReason?.toJson(),
    'duration': duration,
    '@type': constructor,
  };

  static MessageCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageCall(
      uniqueId:
          int.tryParse((json['unique_id'] as dynamic)?.toString() ?? '') ?? 0,
      isVideo: (json['is_video'] as bool?) ?? false,
      discardReason: CallDiscardReason.fromJson(
        tdMapFromJson(json['discard_reason']),
      ),
      duration: (json['duration'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// New chat members were added
@immutable
final class MessageChatAddMembers extends MessageContent {
  MessageChatAddMembers({required this.memberUserIds});

  /// [memberUserIds] User identifiers of the new members
  final List<int> memberUserIds;

  static const String constructor = 'messageChatAddMembers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'member_user_ids': memberUserIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static MessageChatAddMembers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatAddMembers(
      memberUserIds: List<int>.from(
        tdListFromJson(
          json['member_user_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat was added to a community
@immutable
final class MessageChatAddedToCommunity extends MessageContent {
  MessageChatAddedToCommunity({required this.communityId});

  /// [communityId] Identifier of the community to which the chat was added
  final int communityId;

  static const String constructor = 'messageChatAddedToCommunity';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'community_id': communityId,
    '@type': constructor,
  };

  static MessageChatAddedToCommunity? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatAddedToCommunity(
      communityId: (json['community_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat was boosted by the sender of the message
@immutable
final class MessageChatBoost extends MessageContent {
  MessageChatBoost({required this.boostCount});

  /// [boostCount] Number of times the chat was boosted
  final int boostCount;

  static const String constructor = 'messageChatBoost';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'boost_count': boostCount,
    '@type': constructor,
  };

  static MessageChatBoost? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatBoost(boostCount: (json['boost_count'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An updated chat photo
@immutable
final class MessageChatChangePhoto extends MessageContent {
  MessageChatChangePhoto({this.photo});

  /// [photo] New chat photo
  final ChatPhoto? photo;

  static const String constructor = 'messageChatChangePhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'photo': photo?.toJson(),
    '@type': constructor,
  };

  static MessageChatChangePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatChangePhoto(
      photo: ChatPhoto.fromJson(tdMapFromJson(json['photo'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An updated chat title
@immutable
final class MessageChatChangeTitle extends MessageContent {
  MessageChatChangeTitle({required this.title});

  /// [title] New chat title
  final String title;

  static const String constructor = 'messageChatChangeTitle';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'title': title,
    '@type': constructor,
  };

  static MessageChatChangeTitle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatChangeTitle(title: (json['title'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A chat member was deleted
@immutable
final class MessageChatDeleteMember extends MessageContent {
  MessageChatDeleteMember({required this.userId});

  /// [userId] User identifier of the deleted chat member
  final int userId;

  static const String constructor = 'messageChatDeleteMember';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    '@type': constructor,
  };

  static MessageChatDeleteMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatDeleteMember(userId: (json['user_id'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A deleted chat photo
@immutable
final class MessageChatDeletePhoto extends MessageContent {
  const MessageChatDeletePhoto();

  static const String constructor = 'messageChatDeletePhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageChatDeletePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageChatDeletePhoto();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Chat has_protected_content setting was requested to be disabled
@immutable
final class MessageChatHasProtectedContentDisableRequested
    extends MessageContent {
  MessageChatHasProtectedContentDisableRequested({required this.isExpired});

  /// [isExpired] True, if the request has expired
  final bool isExpired;

  static const String constructor =
      'messageChatHasProtectedContentDisableRequested';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_expired': isExpired,
    '@type': constructor,
  };

  static MessageChatHasProtectedContentDisableRequested? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return MessageChatHasProtectedContentDisableRequested(
      isExpired: (json['is_expired'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Chat has_protected_content setting was changed or request to change it was
/// rejected
@immutable
final class MessageChatHasProtectedContentToggled extends MessageContent {
  MessageChatHasProtectedContentToggled({
    required this.requestMessageId,
    required this.oldHasProtectedContent,
    required this.newHasProtectedContent,
  });

  /// [requestMessageId] Identifier of the message with the request to change
  /// the setting; can be an identifier of a deleted message or 0
  final int requestMessageId;

  /// [oldHasProtectedContent] Previous value of the setting
  final bool oldHasProtectedContent;

  /// [newHasProtectedContent] New value of the setting
  final bool newHasProtectedContent;

  static const String constructor = 'messageChatHasProtectedContentToggled';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'request_message_id': requestMessageId,
    'old_has_protected_content': oldHasProtectedContent,
    'new_has_protected_content': newHasProtectedContent,
    '@type': constructor,
  };

  static MessageChatHasProtectedContentToggled? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return MessageChatHasProtectedContentToggled(
      requestMessageId: (json['request_message_id'] as int?) ?? 0,
      oldHasProtectedContent:
          (json['old_has_protected_content'] as bool?) ?? false,
      newHasProtectedContent:
          (json['new_has_protected_content'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new member joined the chat via an invite link
@immutable
final class MessageChatJoinByLink extends MessageContent {
  const MessageChatJoinByLink();

  static const String constructor = 'messageChatJoinByLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageChatJoinByLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageChatJoinByLink();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new member was accepted to the chat by an administrator
@immutable
final class MessageChatJoinByRequest extends MessageContent {
  const MessageChatJoinByRequest();

  static const String constructor = 'messageChatJoinByRequest';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageChatJoinByRequest? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageChatJoinByRequest();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The owner of the chat has changed
@immutable
final class MessageChatOwnerChanged extends MessageContent {
  MessageChatOwnerChanged({required this.newOwnerUserId});

  /// [newOwnerUserId] Identifier of the user who is the new owner of the chat
  final int newOwnerUserId;

  static const String constructor = 'messageChatOwnerChanged';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'new_owner_user_id': newOwnerUserId,
    '@type': constructor,
  };

  static MessageChatOwnerChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatOwnerChanged(
      newOwnerUserId: (json['new_owner_user_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The owner of the chat has left
@immutable
final class MessageChatOwnerLeft extends MessageContent {
  MessageChatOwnerLeft({required this.newOwnerUserId});

  /// [newOwnerUserId] Identifier of the user who will become the new owner of
  /// the chat if the previous owner isn't return; 0 if none
  final int newOwnerUserId;

  static const String constructor = 'messageChatOwnerLeft';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'new_owner_user_id': newOwnerUserId,
    '@type': constructor,
  };

  static MessageChatOwnerLeft? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatOwnerLeft(
      newOwnerUserId: (json['new_owner_user_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat was removed from a community
@immutable
final class MessageChatRemovedFromCommunity extends MessageContent {
  const MessageChatRemovedFromCommunity();

  static const String constructor = 'messageChatRemovedFromCommunity';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageChatRemovedFromCommunity? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageChatRemovedFromCommunity();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new background was set in the chat
@immutable
final class MessageChatSetBackground extends MessageContent {
  MessageChatSetBackground({
    required this.oldBackgroundMessageId,
    this.background,
    required this.onlyForSelf,
  });

  /// [oldBackgroundMessageId] Identifier of the message with a previously set
  /// same background; 0 if none. Can be an identifier of a deleted message
  final int oldBackgroundMessageId;

  /// [background] The new background
  final ChatBackground? background;

  /// [onlyForSelf] True, if the background was set only for self
  final bool onlyForSelf;

  static const String constructor = 'messageChatSetBackground';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'old_background_message_id': oldBackgroundMessageId,
    'background': background?.toJson(),
    'only_for_self': onlyForSelf,
    '@type': constructor,
  };

  static MessageChatSetBackground? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatSetBackground(
      oldBackgroundMessageId: (json['old_background_message_id'] as int?) ?? 0,
      background: ChatBackground.fromJson(tdMapFromJson(json['background'])),
      onlyForSelf: (json['only_for_self'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The auto-delete or self-destruct timer for messages in the chat has been
/// changed
@immutable
final class MessageChatSetMessageAutoDeleteTime extends MessageContent {
  MessageChatSetMessageAutoDeleteTime({
    required this.messageAutoDeleteTime,
    required this.fromUserId,
  });

  /// [messageAutoDeleteTime] New value auto-delete or self-destruct time, in
  /// seconds; 0 if disabled
  final int messageAutoDeleteTime;

  /// [fromUserId] If not 0, a user identifier, which default setting was
  /// automatically applied
  final int fromUserId;

  static const String constructor = 'messageChatSetMessageAutoDeleteTime';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'message_auto_delete_time': messageAutoDeleteTime,
    'from_user_id': fromUserId,
    '@type': constructor,
  };

  static MessageChatSetMessageAutoDeleteTime? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return MessageChatSetMessageAutoDeleteTime(
      messageAutoDeleteTime: (json['message_auto_delete_time'] as int?) ?? 0,
      fromUserId: (json['from_user_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A theme in the chat has been changed
@immutable
final class MessageChatSetTheme extends MessageContent {
  MessageChatSetTheme({this.theme});

  /// [theme] New theme for the chat; may be null if chat theme was reset to the
  /// default one
  final ChatTheme? theme;

  static const String constructor = 'messageChatSetTheme';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'theme': theme?.toJson(),
    '@type': constructor,
  };

  static MessageChatSetTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatSetTheme(
      theme: ChatTheme.fromJson(tdMapFromJson(json['theme'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The current user shared a chat, which was requested by the bot
@immutable
final class MessageChatShared extends MessageContent {
  MessageChatShared({this.chat, required this.buttonId});

  /// [chat] The shared chat
  final SharedChat? chat;

  /// [buttonId] Identifier of the keyboard button with the request
  final int buttonId;

  static const String constructor = 'messageChatShared';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat': chat?.toJson(),
    'button_id': buttonId,
    '@type': constructor,
  };

  static MessageChatShared? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatShared(
      chat: SharedChat.fromJson(tdMapFromJson(json['chat'])),
      buttonId: (json['button_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A supergroup has been created from a basic group
@immutable
final class MessageChatUpgradeFrom extends MessageContent {
  MessageChatUpgradeFrom({required this.title, required this.basicGroupId});

  /// [title] Title of the newly created supergroup
  final String title;

  /// [basicGroupId] The identifier of the original basic group
  final int basicGroupId;

  static const String constructor = 'messageChatUpgradeFrom';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'title': title,
    'basic_group_id': basicGroupId,
    '@type': constructor,
  };

  static MessageChatUpgradeFrom? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatUpgradeFrom(
      title: (json['title'] as String?) ?? '',
      basicGroupId: (json['basic_group_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A basic group was upgraded to a supergroup and was deactivated as the
/// result
@immutable
final class MessageChatUpgradeTo extends MessageContent {
  MessageChatUpgradeTo({required this.supergroupId});

  /// [supergroupId] Identifier of the supergroup to which the basic group was
  /// upgraded
  final int supergroupId;

  static const String constructor = 'messageChatUpgradeTo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'supergroup_id': supergroupId,
    '@type': constructor,
  };

  static MessageChatUpgradeTo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatUpgradeTo(
      supergroupId: (json['supergroup_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with a checklist
@immutable
final class MessageChecklist extends MessageContent {
  MessageChecklist({this.list});

  /// [list] The checklist description
  final Checklist? list;

  static const String constructor = 'messageChecklist';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'list': list?.toJson(),
    '@type': constructor,
  };

  static MessageChecklist? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChecklist(
      list: Checklist.fromJson(tdMapFromJson(json['list'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Some tasks were added to a checklist
@immutable
final class MessageChecklistTasksAdded extends MessageContent {
  MessageChecklistTasksAdded({
    required this.checklistMessageId,
    required this.tasks,
  });

  /// [checklistMessageId] Identifier of the message with the checklist; may be
  /// 0 or an identifier of a deleted message
  final int checklistMessageId;

  /// [tasks] List of tasks added to the checklist
  final List<ChecklistTask> tasks;

  static const String constructor = 'messageChecklistTasksAdded';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'checklist_message_id': checklistMessageId,
    'tasks': tasks.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static MessageChecklistTasksAdded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChecklistTasksAdded(
      checklistMessageId: (json['checklist_message_id'] as int?) ?? 0,
      tasks: List<ChecklistTask>.from(
        tdListFromJson(json['tasks'])
            .map((item) => ChecklistTask.fromJson(tdMapFromJson(item)))
            .whereType<ChecklistTask>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Some tasks from a checklist were marked as done or not done
@immutable
final class MessageChecklistTasksDone extends MessageContent {
  MessageChecklistTasksDone({
    required this.checklistMessageId,
    required this.markedAsDoneTaskIds,
    required this.markedAsNotDoneTaskIds,
  });

  /// [checklistMessageId] Identifier of the message with the checklist; may be
  /// 0 or an identifier of a deleted message
  final int checklistMessageId;

  /// [markedAsDoneTaskIds] Identifiers of tasks that were marked as done
  final List<int> markedAsDoneTaskIds;

  /// [markedAsNotDoneTaskIds] Identifiers of tasks that were marked as not done
  final List<int> markedAsNotDoneTaskIds;

  static const String constructor = 'messageChecklistTasksDone';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'checklist_message_id': checklistMessageId,
    'marked_as_done_task_ids': markedAsDoneTaskIds.map((item) => item).toList(),
    'marked_as_not_done_task_ids': markedAsNotDoneTaskIds
        .map((item) => item)
        .toList(),
    '@type': constructor,
  };

  static MessageChecklistTasksDone? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChecklistTasksDone(
      checklistMessageId: (json['checklist_message_id'] as int?) ?? 0,
      markedAsDoneTaskIds: List<int>.from(
        tdListFromJson(
          json['marked_as_done_task_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      markedAsNotDoneTaskIds: List<int>.from(
        tdListFromJson(
          json['marked_as_not_done_task_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with a user contact
@immutable
final class MessageContact extends MessageContent {
  MessageContact({this.contact});

  /// [contact] The contact description
  final Contact? contact;

  static const String constructor = 'messageContact';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'contact': contact?.toJson(),
    '@type': constructor,
  };

  static MessageContact? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageContact(
      contact: Contact.fromJson(tdMapFromJson(json['contact'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A contact has registered with Telegram
@immutable
final class MessageContactRegistered extends MessageContent {
  const MessageContactRegistered();

  static const String constructor = 'messageContactRegistered';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageContactRegistered? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageContactRegistered();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A non-standard action has happened in the chat
@immutable
final class MessageCustomServiceAction extends MessageContent {
  MessageCustomServiceAction({required this.text});

  /// [text] Message text to be shown in the chat
  final String text;

  static const String constructor = 'messageCustomServiceAction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text,
    '@type': constructor,
  };

  static MessageCustomServiceAction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageCustomServiceAction(text: (json['text'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A dice message. The dice value is randomly generated by the server
@immutable
final class MessageDice extends MessageContent {
  MessageDice({
    this.initialState,
    this.finalState,
    required this.emoji,
    required this.value,
    required this.successAnimationFrameNumber,
  });

  /// [initialState] The animated stickers with the initial dice animation; may
  /// be null if unknown. The update updateMessageContent will be sent when the
  /// sticker became known
  final DiceStickers? initialState;

  /// [finalState] The animated stickers with the final dice animation; may be
  /// null if unknown. The update updateMessageContent will be sent when the
  /// sticker became known
  final DiceStickers? finalState;

  /// [emoji] Emoji on which the dice throw animation is based
  final String emoji;

  /// [value] The dice value. If the value is 0, then the dice don't have final
  /// state yet
  final int value;

  /// [successAnimationFrameNumber] Number of frame after which a success
  /// animation like a shower of confetti needs to be shown on
  /// updateMessageSendSucceeded
  final int successAnimationFrameNumber;

  static const String constructor = 'messageDice';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'initial_state': initialState?.toJson(),
    'final_state': finalState?.toJson(),
    'emoji': emoji,
    'value': value,
    'success_animation_frame_number': successAnimationFrameNumber,
    '@type': constructor,
  };

  static MessageDice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageDice(
      initialState: DiceStickers.fromJson(tdMapFromJson(json['initial_state'])),
      finalState: DiceStickers.fromJson(tdMapFromJson(json['final_state'])),
      emoji: (json['emoji'] as String?) ?? '',
      value: (json['value'] as int?) ?? 0,
      successAnimationFrameNumber:
          (json['success_animation_frame_number'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A price for direct messages was changed in the channel chat
@immutable
final class MessageDirectMessagePriceChanged extends MessageContent {
  MessageDirectMessagePriceChanged({
    required this.isEnabled,
    required this.paidMessageStarCount,
  });

  /// [isEnabled] True, if direct messages group was enabled for the channel;
  /// false otherwise
  final bool isEnabled;

  /// [paidMessageStarCount] The new number of Telegram Stars that must be paid
  /// by non-administrator users of the channel chat for each message sent to
  /// the direct messages group; 0 if the direct messages group was disabled or
  /// the messages are free
  final int paidMessageStarCount;

  static const String constructor = 'messageDirectMessagePriceChanged';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_enabled': isEnabled,
    'paid_message_star_count': paidMessageStarCount,
    '@type': constructor,
  };

  static MessageDirectMessagePriceChanged? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return MessageDirectMessagePriceChanged(
      isEnabled: (json['is_enabled'] as bool?) ?? false,
      paidMessageStarCount: (json['paid_message_star_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A document message (general file)
@immutable
final class MessageDocument extends MessageContent {
  MessageDocument({this.document, this.caption});

  /// [document] The document description
  final Document? document;

  /// [caption] Document caption
  final FormattedText? caption;

  static const String constructor = 'messageDocument';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'document': document?.toJson(),
    'caption': caption?.toJson(),
    '@type': constructor,
  };

  static MessageDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageDocument(
      document: Document.fromJson(tdMapFromJson(json['document'])),
      caption: FormattedText.fromJson(tdMapFromJson(json['caption'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A self-destructed photo message
@immutable
final class MessageExpiredPhoto extends MessageContent {
  const MessageExpiredPhoto();

  static const String constructor = 'messageExpiredPhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageExpiredPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageExpiredPhoto();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A self-destructed video message
@immutable
final class MessageExpiredVideo extends MessageContent {
  const MessageExpiredVideo();

  static const String constructor = 'messageExpiredVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageExpiredVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageExpiredVideo();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A self-destructed video note message
@immutable
final class MessageExpiredVideoNote extends MessageContent {
  const MessageExpiredVideoNote();

  static const String constructor = 'messageExpiredVideoNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageExpiredVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageExpiredVideoNote();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A self-destructed voice note message
@immutable
final class MessageExpiredVoiceNote extends MessageContent {
  const MessageExpiredVoiceNote();

  static const String constructor = 'messageExpiredVoiceNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageExpiredVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageExpiredVoiceNote();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A forum topic has been created
@immutable
final class MessageForumTopicCreated extends MessageContent {
  MessageForumTopicCreated({
    required this.name,
    required this.isNameImplicit,
    this.icon,
  });

  /// [name] Name of the topic
  final String name;

  /// [isNameImplicit] True, if the name of the topic wasn't added explicitly
  final bool isNameImplicit;

  /// [icon] Icon of the topic
  final ForumTopicIcon? icon;

  static const String constructor = 'messageForumTopicCreated';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'name': name,
    'is_name_implicit': isNameImplicit,
    'icon': icon?.toJson(),
    '@type': constructor,
  };

  static MessageForumTopicCreated? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageForumTopicCreated(
      name: (json['name'] as String?) ?? '',
      isNameImplicit: (json['is_name_implicit'] as bool?) ?? false,
      icon: ForumTopicIcon.fromJson(tdMapFromJson(json['icon'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A forum topic has been edited
@immutable
final class MessageForumTopicEdited extends MessageContent {
  MessageForumTopicEdited({
    required this.name,
    required this.editIconCustomEmojiId,
    required this.iconCustomEmojiId,
  });

  /// [name] If non-empty, the new name of the topic
  final String name;

  /// [editIconCustomEmojiId] True, if icon's custom_emoji_id is changed
  final bool editIconCustomEmojiId;

  /// [iconCustomEmojiId] New unique identifier of the custom emoji shown on the
  /// topic icon; 0 if none. Must be ignored if edit_icon_custom_emoji_id is
  /// false
  final int iconCustomEmojiId;

  static const String constructor = 'messageForumTopicEdited';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'name': name,
    'edit_icon_custom_emoji_id': editIconCustomEmojiId,
    'icon_custom_emoji_id': iconCustomEmojiId.toString(),
    '@type': constructor,
  };

  static MessageForumTopicEdited? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageForumTopicEdited(
      name: (json['name'] as String?) ?? '',
      editIconCustomEmojiId:
          (json['edit_icon_custom_emoji_id'] as bool?) ?? false,
      iconCustomEmojiId:
          int.tryParse(
            (json['icon_custom_emoji_id'] as dynamic)?.toString() ?? '',
          ) ??
          0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A forum topic has been closed or opened
@immutable
final class MessageForumTopicIsClosedToggled extends MessageContent {
  MessageForumTopicIsClosedToggled({required this.isClosed});

  /// [isClosed] True, if the topic was closed; otherwise, the topic was
  /// reopened
  final bool isClosed;

  static const String constructor = 'messageForumTopicIsClosedToggled';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_closed': isClosed,
    '@type': constructor,
  };

  static MessageForumTopicIsClosedToggled? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return MessageForumTopicIsClosedToggled(
      isClosed: (json['is_closed'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A General forum topic has been hidden or unhidden
@immutable
final class MessageForumTopicIsHiddenToggled extends MessageContent {
  MessageForumTopicIsHiddenToggled({required this.isHidden});

  /// [isHidden] True, if the topic was hidden; otherwise, the topic was
  /// unhidden
  final bool isHidden;

  static const String constructor = 'messageForumTopicIsHiddenToggled';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_hidden': isHidden,
    '@type': constructor,
  };

  static MessageForumTopicIsHiddenToggled? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return MessageForumTopicIsHiddenToggled(
      isHidden: (json['is_hidden'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with a game
@immutable
final class MessageGame extends MessageContent {
  MessageGame({this.game});

  /// [game] The game description
  final Game? game;

  static const String constructor = 'messageGame';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'game': game?.toJson(),
    '@type': constructor,
  };

  static MessageGame? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGame(game: Game.fromJson(tdMapFromJson(json['game'])));
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new high score was achieved in a game
@immutable
final class MessageGameScore extends MessageContent {
  MessageGameScore({
    required this.gameMessageId,
    required this.gameId,
    required this.score,
  });

  /// [gameMessageId] Identifier of the message with the game, can be an
  /// identifier of a deleted message
  final int gameMessageId;

  /// [gameId] Identifier of the game; may be different from the games presented
  /// in the message with the game
  final int gameId;

  /// [score] New score
  final int score;

  static const String constructor = 'messageGameScore';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'game_message_id': gameMessageId,
    'game_id': gameId.toString(),
    'score': score,
    '@type': constructor,
  };

  static MessageGameScore? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGameScore(
      gameMessageId: (json['game_message_id'] as int?) ?? 0,
      gameId: int.tryParse((json['game_id'] as dynamic)?.toString() ?? '') ?? 0,
      score: (json['score'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A regular gift was received or sent by the current user, or the current
/// user was notified about a channel gift
@immutable
final class MessageGift extends MessageContent {
  MessageGift({
    this.gift,
    this.senderId,
    this.receiverId,
    required this.receivedGiftId,
    this.text,
    required this.uniqueGiftNumber,
    required this.sellStarCount,
    required this.prepaidUpgradeStarCount,
    required this.isUpgradeSeparate,
    required this.isFromAuction,
    required this.isPrivate,
    required this.isSaved,
    required this.isPrepaidUpgrade,
    required this.canBeUpgraded,
    required this.wasConverted,
    required this.wasUpgraded,
    required this.wasRefunded,
    required this.upgradedReceivedGiftId,
    required this.prepaidUpgradeHash,
  });

  /// [gift] The gift
  final Gift? gift;

  /// [senderId] Sender of the gift; may be null for outgoing messages about
  /// prepaid upgrade of gifts from unknown users
  final MessageSender? senderId;

  /// [receiverId] Receiver of the gift
  final MessageSender? receiverId;

  /// [receivedGiftId] Unique identifier of the received gift for the current
  /// user; only for the receiver of the gift
  final String receivedGiftId;

  /// [text] Message added to the gift
  final FormattedText? text;

  /// [uniqueGiftNumber] Unique number of the gift among gifts upgraded from the
  /// same gift after upgrade; 0 if yet unassigned
  final int uniqueGiftNumber;

  /// [sellStarCount] Number of Telegram Stars that can be claimed by the
  /// receiver instead of the regular gift; 0 if the gift can't be sold by the
  /// receiver
  final int sellStarCount;

  /// [prepaidUpgradeStarCount] Number of Telegram Stars that were paid by the
  /// sender for the ability to upgrade the gift
  final int prepaidUpgradeStarCount;

  /// [isUpgradeSeparate] True, if the upgrade was bought after the gift was
  /// sent. In this case, prepaid upgrade cost must not be added to the gift
  /// cost
  final bool isUpgradeSeparate;

  /// [isFromAuction] True, if the message is a notification about a gift won on
  /// an auction
  final bool isFromAuction;

  /// [isPrivate] True, if the sender and gift text are shown only to the gift
  /// receiver; otherwise, everyone will be able to see them
  final bool isPrivate;

  /// [isSaved] True, if the gift is displayed on the user's or the channel's
  /// profile page; only for the receiver of the gift
  final bool isSaved;

  /// [isPrepaidUpgrade] True, if the message is about prepaid upgrade of the
  /// gift by another user
  final bool isPrepaidUpgrade;

  /// [canBeUpgraded] True, if the gift can be upgraded to a unique gift; only
  /// for the receiver of the gift
  final bool canBeUpgraded;

  /// [wasConverted] True, if the gift was converted to Telegram Stars; only for
  /// the receiver of the gift
  final bool wasConverted;

  /// [wasUpgraded] True, if the gift was upgraded to a unique gift
  final bool wasUpgraded;

  /// [wasRefunded] True, if the gift was refunded and isn't available anymore
  final bool wasRefunded;

  /// [upgradedReceivedGiftId] Identifier of the corresponding upgraded gift;
  /// may be empty if unknown. Use getReceivedGift to get information about the
  /// gift
  final String upgradedReceivedGiftId;

  /// [prepaidUpgradeHash] If non-empty, then the user can pay for an upgrade of
  /// the gift using buyGiftUpgrade
  final String prepaidUpgradeHash;

  static const String constructor = 'messageGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift': gift?.toJson(),
    'sender_id': senderId?.toJson(),
    'receiver_id': receiverId?.toJson(),
    'received_gift_id': receivedGiftId,
    'text': text?.toJson(),
    'unique_gift_number': uniqueGiftNumber,
    'sell_star_count': sellStarCount,
    'prepaid_upgrade_star_count': prepaidUpgradeStarCount,
    'is_upgrade_separate': isUpgradeSeparate,
    'is_from_auction': isFromAuction,
    'is_private': isPrivate,
    'is_saved': isSaved,
    'is_prepaid_upgrade': isPrepaidUpgrade,
    'can_be_upgraded': canBeUpgraded,
    'was_converted': wasConverted,
    'was_upgraded': wasUpgraded,
    'was_refunded': wasRefunded,
    'upgraded_received_gift_id': upgradedReceivedGiftId,
    'prepaid_upgrade_hash': prepaidUpgradeHash,
    '@type': constructor,
  };

  static MessageGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGift(
      gift: Gift.fromJson(tdMapFromJson(json['gift'])),
      senderId: MessageSender.fromJson(tdMapFromJson(json['sender_id'])),
      receiverId: MessageSender.fromJson(tdMapFromJson(json['receiver_id'])),
      receivedGiftId: (json['received_gift_id'] as String?) ?? '',
      text: FormattedText.fromJson(tdMapFromJson(json['text'])),
      uniqueGiftNumber: (json['unique_gift_number'] as int?) ?? 0,
      sellStarCount: (json['sell_star_count'] as int?) ?? 0,
      prepaidUpgradeStarCount:
          (json['prepaid_upgrade_star_count'] as int?) ?? 0,
      isUpgradeSeparate: (json['is_upgrade_separate'] as bool?) ?? false,
      isFromAuction: (json['is_from_auction'] as bool?) ?? false,
      isPrivate: (json['is_private'] as bool?) ?? false,
      isSaved: (json['is_saved'] as bool?) ?? false,
      isPrepaidUpgrade: (json['is_prepaid_upgrade'] as bool?) ?? false,
      canBeUpgraded: (json['can_be_upgraded'] as bool?) ?? false,
      wasConverted: (json['was_converted'] as bool?) ?? false,
      wasUpgraded: (json['was_upgraded'] as bool?) ?? false,
      wasRefunded: (json['was_refunded'] as bool?) ?? false,
      upgradedReceivedGiftId:
          (json['upgraded_received_gift_id'] as String?) ?? '',
      prepaidUpgradeHash: (json['prepaid_upgrade_hash'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Telegram Premium was gifted to a user
@immutable
final class MessageGiftedPremium extends MessageContent {
  MessageGiftedPremium({
    required this.gifterUserId,
    required this.receiverUserId,
    this.text,
    required this.currency,
    required this.amount,
    required this.cryptocurrency,
    required this.cryptocurrencyAmount,
    required this.monthCount,
    required this.dayCount,
    this.sticker,
  });

  /// [gifterUserId] The identifier of a user who gifted Telegram Premium; 0 if
  /// the gift was anonymous or is outgoing
  final int gifterUserId;

  /// [receiverUserId] The identifier of a user who received Telegram Premium; 0
  /// if the gift is incoming
  final int receiverUserId;

  /// [text] Message added to the gifted Telegram Premium by the sender
  final FormattedText? text;

  /// [currency] Currency for the paid amount
  final String currency;

  /// [amount] The paid amount, in the smallest units of the currency
  final int amount;

  /// [cryptocurrency] Cryptocurrency used to pay for the gift; may be empty if
  /// none
  final String cryptocurrency;

  /// [cryptocurrencyAmount] The paid amount, in the smallest units of the
  /// cryptocurrency; 0 if none
  final int cryptocurrencyAmount;

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active after code activation; 0 if the number of months isn't integer
  final int monthCount;

  /// [dayCount] Number of days the Telegram Premium subscription will be active
  final int dayCount;

  /// [sticker] A sticker to be shown in the message; may be null if unknown
  final Sticker? sticker;

  static const String constructor = 'messageGiftedPremium';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gifter_user_id': gifterUserId,
    'receiver_user_id': receiverUserId,
    'text': text?.toJson(),
    'currency': currency,
    'amount': amount,
    'cryptocurrency': cryptocurrency,
    'cryptocurrency_amount': cryptocurrencyAmount.toString(),
    'month_count': monthCount,
    'day_count': dayCount,
    'sticker': sticker?.toJson(),
    '@type': constructor,
  };

  static MessageGiftedPremium? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGiftedPremium(
      gifterUserId: (json['gifter_user_id'] as int?) ?? 0,
      receiverUserId: (json['receiver_user_id'] as int?) ?? 0,
      text: FormattedText.fromJson(tdMapFromJson(json['text'])),
      currency: (json['currency'] as String?) ?? '',
      amount: (json['amount'] as int?) ?? 0,
      cryptocurrency: (json['cryptocurrency'] as String?) ?? '',
      cryptocurrencyAmount:
          int.tryParse(
            (json['cryptocurrency_amount'] as dynamic)?.toString() ?? '',
          ) ??
          0,
      monthCount: (json['month_count'] as int?) ?? 0,
      dayCount: (json['day_count'] as int?) ?? 0,
      sticker: Sticker.fromJson(tdMapFromJson(json['sticker'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Telegram Stars were gifted to a user
@immutable
final class MessageGiftedStars extends MessageContent {
  MessageGiftedStars({
    required this.gifterUserId,
    required this.receiverUserId,
    required this.currency,
    required this.amount,
    required this.cryptocurrency,
    required this.cryptocurrencyAmount,
    required this.starCount,
    required this.transactionId,
    this.sticker,
  });

  /// [gifterUserId] The identifier of a user who gifted Telegram Stars; 0 if
  /// the gift was anonymous or is outgoing
  final int gifterUserId;

  /// [receiverUserId] The identifier of a user who received Telegram Stars; 0
  /// if the gift is incoming
  final int receiverUserId;

  /// [currency] Currency for the paid amount
  final String currency;

  /// [amount] The paid amount, in the smallest units of the currency
  final int amount;

  /// [cryptocurrency] Cryptocurrency used to pay for the gift; may be empty if
  /// none
  final String cryptocurrency;

  /// [cryptocurrencyAmount] The paid amount, in the smallest units of the
  /// cryptocurrency; 0 if none
  final int cryptocurrencyAmount;

  /// [starCount] Number of Telegram Stars that were gifted
  final int starCount;

  /// [transactionId] Identifier of the transaction for Telegram Stars purchase;
  /// for receiver only
  final String transactionId;

  /// [sticker] A sticker to be shown in the message; may be null if unknown
  final Sticker? sticker;

  static const String constructor = 'messageGiftedStars';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gifter_user_id': gifterUserId,
    'receiver_user_id': receiverUserId,
    'currency': currency,
    'amount': amount,
    'cryptocurrency': cryptocurrency,
    'cryptocurrency_amount': cryptocurrencyAmount.toString(),
    'star_count': starCount,
    'transaction_id': transactionId,
    'sticker': sticker?.toJson(),
    '@type': constructor,
  };

  static MessageGiftedStars? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGiftedStars(
      gifterUserId: (json['gifter_user_id'] as int?) ?? 0,
      receiverUserId: (json['receiver_user_id'] as int?) ?? 0,
      currency: (json['currency'] as String?) ?? '',
      amount: (json['amount'] as int?) ?? 0,
      cryptocurrency: (json['cryptocurrency'] as String?) ?? '',
      cryptocurrencyAmount:
          int.tryParse(
            (json['cryptocurrency_amount'] as dynamic)?.toString() ?? '',
          ) ??
          0,
      starCount: (json['star_count'] as int?) ?? 0,
      transactionId: (json['transaction_id'] as String?) ?? '',
      sticker: Sticker.fromJson(tdMapFromJson(json['sticker'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// TON Grams were gifted to a user
@immutable
final class MessageGiftedTon extends MessageContent {
  MessageGiftedTon({
    required this.gifterUserId,
    required this.receiverUserId,
    required this.gramAmount,
    required this.transactionId,
    this.sticker,
  });

  /// [gifterUserId] The identifier of a user who gifted Grams; 0 if the gift
  /// was anonymous or is outgoing
  final int gifterUserId;

  /// [receiverUserId] The identifier of a user who received Grams; 0 if the
  /// gift is incoming
  final int receiverUserId;

  /// [gramAmount] The received Gram amount, in the smallest units of the
  /// cryptocurrency
  final int gramAmount;

  /// [transactionId] Identifier of the transaction for Gram credit; for
  /// receiver only
  final String transactionId;

  /// [sticker] A sticker to be shown in the message; may be null if unknown
  final Sticker? sticker;

  static const String constructor = 'messageGiftedTon';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gifter_user_id': gifterUserId,
    'receiver_user_id': receiverUserId,
    'gram_amount': gramAmount,
    'transaction_id': transactionId,
    'sticker': sticker?.toJson(),
    '@type': constructor,
  };

  static MessageGiftedTon? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGiftedTon(
      gifterUserId: (json['gifter_user_id'] as int?) ?? 0,
      receiverUserId: (json['receiver_user_id'] as int?) ?? 0,
      gramAmount: (json['gram_amount'] as int?) ?? 0,
      transactionId: (json['transaction_id'] as String?) ?? '',
      sticker: Sticker.fromJson(tdMapFromJson(json['sticker'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A giveaway
@immutable
final class MessageGiveaway extends MessageContent {
  MessageGiveaway({
    this.parameters,
    required this.winnerCount,
    this.prize,
    this.sticker,
  });

  /// [parameters] Giveaway parameters
  final GiveawayParameters? parameters;

  /// [winnerCount] Number of users which will receive Telegram Premium
  /// subscription gift codes
  final int winnerCount;

  /// [prize] Prize of the giveaway
  final GiveawayPrize? prize;

  /// [sticker] A sticker to be shown in the message; may be null if unknown
  final Sticker? sticker;

  static const String constructor = 'messageGiveaway';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'parameters': parameters?.toJson(),
    'winner_count': winnerCount,
    'prize': prize?.toJson(),
    'sticker': sticker?.toJson(),
    '@type': constructor,
  };

  static MessageGiveaway? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGiveaway(
      parameters: GiveawayParameters.fromJson(
        tdMapFromJson(json['parameters']),
      ),
      winnerCount: (json['winner_count'] as int?) ?? 0,
      prize: GiveawayPrize.fromJson(tdMapFromJson(json['prize'])),
      sticker: Sticker.fromJson(tdMapFromJson(json['sticker'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A giveaway without public winners has been completed for the chat
@immutable
final class MessageGiveawayCompleted extends MessageContent {
  MessageGiveawayCompleted({
    required this.giveawayMessageId,
    required this.winnerCount,
    required this.isStarGiveaway,
    required this.unclaimedPrizeCount,
  });

  /// [giveawayMessageId] Identifier of the message with the giveaway; may be 0
  /// or an identifier of a deleted message
  final int giveawayMessageId;

  /// [winnerCount] Number of winners in the giveaway
  final int winnerCount;

  /// [isStarGiveaway] True, if the giveaway is a Telegram Star giveaway
  final bool isStarGiveaway;

  /// [unclaimedPrizeCount] Number of undistributed prizes; for Telegram Premium
  /// giveaways only
  final int unclaimedPrizeCount;

  static const String constructor = 'messageGiveawayCompleted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'giveaway_message_id': giveawayMessageId,
    'winner_count': winnerCount,
    'is_star_giveaway': isStarGiveaway,
    'unclaimed_prize_count': unclaimedPrizeCount,
    '@type': constructor,
  };

  static MessageGiveawayCompleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGiveawayCompleted(
      giveawayMessageId: (json['giveaway_message_id'] as int?) ?? 0,
      winnerCount: (json['winner_count'] as int?) ?? 0,
      isStarGiveaway: (json['is_star_giveaway'] as bool?) ?? false,
      unclaimedPrizeCount: (json['unclaimed_prize_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A giveaway was created for the chat. Use
/// telegramPaymentPurposePremiumGiveaway, storePaymentPurposePremiumGiveaway,
/// telegramPaymentPurposeStarGiveaway, or storePaymentPurposeStarGiveaway to
/// create a giveaway
@immutable
final class MessageGiveawayCreated extends MessageContent {
  MessageGiveawayCreated({required this.starCount});

  /// [starCount] Number of Telegram Stars that will be shared by winners of the
  /// giveaway; 0 for Telegram Premium giveaways
  final int starCount;

  static const String constructor = 'messageGiveawayCreated';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'star_count': starCount,
    '@type': constructor,
  };

  static MessageGiveawayCreated? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGiveawayCreated(starCount: (json['star_count'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Telegram Stars were received by the current user from a giveaway
@immutable
final class MessageGiveawayPrizeStars extends MessageContent {
  MessageGiveawayPrizeStars({
    required this.starCount,
    required this.transactionId,
    required this.boostedChatId,
    required this.giveawayMessageId,
    required this.isUnclaimed,
    this.sticker,
  });

  /// [starCount] Number of Telegram Stars that were received
  final int starCount;

  /// [transactionId] Identifier of the transaction for Telegram Stars credit
  final String transactionId;

  /// [boostedChatId] Identifier of the supergroup or channel chat, which was
  /// automatically boosted by the winners of the giveaway
  final int boostedChatId;

  /// [giveawayMessageId] Identifier of the message with the giveaway in the
  /// boosted chat; may be 0 or an identifier of a deleted message
  final int giveawayMessageId;

  /// [isUnclaimed] True, if the corresponding winner wasn't chosen and the
  /// Telegram Stars were received by the owner of the boosted chat
  final bool isUnclaimed;

  /// [sticker] A sticker to be shown in the message; may be null if unknown
  final Sticker? sticker;

  static const String constructor = 'messageGiveawayPrizeStars';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'star_count': starCount,
    'transaction_id': transactionId,
    'boosted_chat_id': boostedChatId,
    'giveaway_message_id': giveawayMessageId,
    'is_unclaimed': isUnclaimed,
    'sticker': sticker?.toJson(),
    '@type': constructor,
  };

  static MessageGiveawayPrizeStars? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGiveawayPrizeStars(
      starCount: (json['star_count'] as int?) ?? 0,
      transactionId: (json['transaction_id'] as String?) ?? '',
      boostedChatId: (json['boosted_chat_id'] as int?) ?? 0,
      giveawayMessageId: (json['giveaway_message_id'] as int?) ?? 0,
      isUnclaimed: (json['is_unclaimed'] as bool?) ?? false,
      sticker: Sticker.fromJson(tdMapFromJson(json['sticker'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A giveaway with public winners has been completed for the chat
@immutable
final class MessageGiveawayWinners extends MessageContent {
  MessageGiveawayWinners({
    required this.boostedChatId,
    required this.giveawayMessageId,
    required this.additionalChatCount,
    required this.actualWinnersSelectionDate,
    required this.onlyNewMembers,
    required this.wasRefunded,
    this.prize,
    required this.prizeDescription,
    required this.winnerCount,
    required this.winnerUserIds,
    required this.unclaimedPrizeCount,
  });

  /// [boostedChatId] Identifier of the supergroup or channel chat, which was
  /// automatically boosted by the winners of the giveaway
  final int boostedChatId;

  /// [giveawayMessageId] Identifier of the message with the giveaway in the
  /// boosted chat
  final int giveawayMessageId;

  /// [additionalChatCount] Number of other chats that participated in the
  /// giveaway
  final int additionalChatCount;

  /// [actualWinnersSelectionDate] Point in time (Unix timestamp) when the
  /// winners were selected. May be bigger than winners selection date specified
  /// in parameters of the giveaway
  final int actualWinnersSelectionDate;

  /// [onlyNewMembers] True, if only new members of the chats were eligible for
  /// the giveaway
  final bool onlyNewMembers;

  /// [wasRefunded] True, if the giveaway was canceled and was fully refunded
  final bool wasRefunded;

  /// [prize] Prize of the giveaway
  final GiveawayPrize? prize;

  /// [prizeDescription] Additional description of the giveaway prize
  final String prizeDescription;

  /// [winnerCount] Total number of winners in the giveaway
  final int winnerCount;

  /// [winnerUserIds] Up to 100 user identifiers of the winners of the giveaway
  final List<int> winnerUserIds;

  /// [unclaimedPrizeCount] Number of undistributed prizes; for Telegram Premium
  /// giveaways only
  final int unclaimedPrizeCount;

  static const String constructor = 'messageGiveawayWinners';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'boosted_chat_id': boostedChatId,
    'giveaway_message_id': giveawayMessageId,
    'additional_chat_count': additionalChatCount,
    'actual_winners_selection_date': actualWinnersSelectionDate,
    'only_new_members': onlyNewMembers,
    'was_refunded': wasRefunded,
    'prize': prize?.toJson(),
    'prize_description': prizeDescription,
    'winner_count': winnerCount,
    'winner_user_ids': winnerUserIds.map((item) => item).toList(),
    'unclaimed_prize_count': unclaimedPrizeCount,
    '@type': constructor,
  };

  static MessageGiveawayWinners? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGiveawayWinners(
      boostedChatId: (json['boosted_chat_id'] as int?) ?? 0,
      giveawayMessageId: (json['giveaway_message_id'] as int?) ?? 0,
      additionalChatCount: (json['additional_chat_count'] as int?) ?? 0,
      actualWinnersSelectionDate:
          (json['actual_winners_selection_date'] as int?) ?? 0,
      onlyNewMembers: (json['only_new_members'] as bool?) ?? false,
      wasRefunded: (json['was_refunded'] as bool?) ?? false,
      prize: GiveawayPrize.fromJson(tdMapFromJson(json['prize'])),
      prizeDescription: (json['prize_description'] as String?) ?? '',
      winnerCount: (json['winner_count'] as int?) ?? 0,
      winnerUserIds: List<int>.from(
        tdListFromJson(
          json['winner_user_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      unclaimedPrizeCount: (json['unclaimed_prize_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with information about a group call not bound to a chat. If the
/// message is incoming, the call isn't active, isn't missed, and has no
/// duration, and getOption("can_accept_calls") is true, then incoming call
/// screen must be shown to the user. Use getGroupCallParticipants to show
/// current group call participants on the screen. Use joinGroupCall to accept
/// the call or declineGroupCallInvitation to decline it. If the call become
/// active or missed, then the call screen must be hidden
@immutable
final class MessageGroupCall extends MessageContent {
  MessageGroupCall({
    required this.uniqueId,
    required this.isActive,
    required this.wasMissed,
    required this.isVideo,
    required this.duration,
    required this.otherParticipantIds,
  });

  /// [uniqueId] Persistent unique group call identifier
  final int uniqueId;

  /// [isActive] True, if the call is active, i.e. the called user joined the
  /// call
  final bool isActive;

  /// [wasMissed] True, if the called user missed or declined the call
  final bool wasMissed;

  /// [isVideo] True, if the call is a video call
  final bool isVideo;

  /// [duration] Call duration, in seconds; for left calls only
  final int duration;

  /// [otherParticipantIds] Identifiers of some other call participants
  final List<MessageSender> otherParticipantIds;

  static const String constructor = 'messageGroupCall';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'unique_id': uniqueId.toString(),
    'is_active': isActive,
    'was_missed': wasMissed,
    'is_video': isVideo,
    'duration': duration,
    'other_participant_ids': otherParticipantIds
        .map((item) => item.toJson())
        .toList(),
    '@type': constructor,
  };

  static MessageGroupCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGroupCall(
      uniqueId:
          int.tryParse((json['unique_id'] as dynamic)?.toString() ?? '') ?? 0,
      isActive: (json['is_active'] as bool?) ?? false,
      wasMissed: (json['was_missed'] as bool?) ?? false,
      isVideo: (json['is_video'] as bool?) ?? false,
      duration: (json['duration'] as int?) ?? 0,
      otherParticipantIds: List<MessageSender>.from(
        tdListFromJson(json['other_participant_ids'])
            .map((item) => MessageSender.fromJson(tdMapFromJson(item)))
            .whereType<MessageSender>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with information about an invitation to a video chat
@immutable
final class MessageInviteVideoChatParticipants extends MessageContent {
  MessageInviteVideoChatParticipants({
    required this.groupCallId,
    required this.userIds,
  });

  /// [groupCallId] Identifier of the video chat. The video chat can be received
  /// through the method getGroupCall
  final int groupCallId;

  /// [userIds] Invited user identifiers
  final List<int> userIds;

  static const String constructor = 'messageInviteVideoChatParticipants';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call_id': groupCallId,
    'user_ids': userIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static MessageInviteVideoChatParticipants? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return MessageInviteVideoChatParticipants(
      groupCallId: (json['group_call_id'] as int?) ?? 0,
      userIds: List<int>.from(
        tdListFromJson(
          json['user_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with an invoice from a bot. Use getInternalLink with
/// internalLinkTypeBotStart to share the invoice
@immutable
final class MessageInvoice extends MessageContent {
  MessageInvoice({
    this.productInfo,
    required this.currency,
    required this.totalAmount,
    required this.startParameter,
    required this.isTest,
    required this.needShippingAddress,
    required this.receiptMessageId,
    this.paidMedia,
    this.paidMediaCaption,
  });

  /// [productInfo] Information about the product
  final ProductInfo? productInfo;

  /// [currency] Currency for the product price
  final String currency;

  /// [totalAmount] Product total price in the smallest units of the currency
  final int totalAmount;

  /// [startParameter] Unique invoice bot start_parameter to be passed to
  /// getInternalLink
  final String startParameter;

  /// [isTest] True, if the invoice is a test invoice
  final bool isTest;

  /// [needShippingAddress] True, if the shipping address must be specified
  final bool needShippingAddress;

  /// [receiptMessageId] The identifier of the message with the receipt, after
  /// the product has been purchased
  final int receiptMessageId;

  /// [paidMedia] Extended media attached to the invoice; may be null if none
  final PaidMedia? paidMedia;

  /// [paidMediaCaption] Extended media caption; may be null if none
  final FormattedText? paidMediaCaption;

  static const String constructor = 'messageInvoice';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'product_info': productInfo?.toJson(),
    'currency': currency,
    'total_amount': totalAmount,
    'start_parameter': startParameter,
    'is_test': isTest,
    'need_shipping_address': needShippingAddress,
    'receipt_message_id': receiptMessageId,
    'paid_media': paidMedia?.toJson(),
    'paid_media_caption': paidMediaCaption?.toJson(),
    '@type': constructor,
  };

  static MessageInvoice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageInvoice(
      productInfo: ProductInfo.fromJson(tdMapFromJson(json['product_info'])),
      currency: (json['currency'] as String?) ?? '',
      totalAmount: (json['total_amount'] as int?) ?? 0,
      startParameter: (json['start_parameter'] as String?) ?? '',
      isTest: (json['is_test'] as bool?) ?? false,
      needShippingAddress: (json['need_shipping_address'] as bool?) ?? false,
      receiptMessageId: (json['receipt_message_id'] as int?) ?? 0,
      paidMedia: PaidMedia.fromJson(tdMapFromJson(json['paid_media'])),
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
final class MessageLiveLocation extends MessageContent {
  MessageLiveLocation({this.location, required this.expiresIn});

  /// [location] The current location
  final LiveLocation? location;

  /// [expiresIn] Left time for which the location can be updated, in seconds.
  /// If 0, then the location can't be updated anymore. The update
  /// updateMessageContent is not sent when this field changes
  final int expiresIn;

  static const String constructor = 'messageLiveLocation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'location': location?.toJson(),
    'expires_in': expiresIn,
    '@type': constructor,
  };

  static MessageLiveLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageLiveLocation(
      location: LiveLocation.fromJson(tdMapFromJson(json['location'])),
      expiresIn: (json['expires_in'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with a location
@immutable
final class MessageLocation extends MessageContent {
  MessageLocation({this.location});

  /// [location] The location
  final Location? location;

  static const String constructor = 'messageLocation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'location': location?.toJson(),
    '@type': constructor,
  };

  static MessageLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageLocation(
      location: Location.fromJson(tdMapFromJson(json['location'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A bot managed by another bot was created by the user
@immutable
final class MessageManagedBotCreated extends MessageContent {
  MessageManagedBotCreated({required this.botUserId});

  /// [botUserId] User identifier of the created bot
  final int botUserId;

  static const String constructor = 'messageManagedBotCreated';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bot_user_id': botUserId,
    '@type': constructor,
  };

  static MessageManagedBotCreated? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageManagedBotCreated(
      botUserId: (json['bot_user_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with paid media
@immutable
final class MessagePaidMedia extends MessageContent {
  MessagePaidMedia({
    required this.starCount,
    required this.media,
    this.caption,
    required this.showCaptionAboveMedia,
  });

  /// [starCount] Number of Telegram Stars needed to buy access to the media in
  /// the message
  final int starCount;

  /// [media] Information about the media
  final List<PaidMedia> media;

  /// [caption] Media caption
  final FormattedText? caption;

  /// [showCaptionAboveMedia] True, if the caption must be shown above the
  /// media; otherwise, the caption must be shown below the media
  final bool showCaptionAboveMedia;

  static const String constructor = 'messagePaidMedia';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'star_count': starCount,
    'media': media.map((item) => item.toJson()).toList(),
    'caption': caption?.toJson(),
    'show_caption_above_media': showCaptionAboveMedia,
    '@type': constructor,
  };

  static MessagePaidMedia? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePaidMedia(
      starCount: (json['star_count'] as int?) ?? 0,
      media: List<PaidMedia>.from(
        tdListFromJson(json['media'])
            .map((item) => PaidMedia.fromJson(tdMapFromJson(item)))
            .whereType<PaidMedia>(),
      ),
      caption: FormattedText.fromJson(tdMapFromJson(json['caption'])),
      showCaptionAboveMedia:
          (json['show_caption_above_media'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A price for paid messages was changed in the supergroup chat
@immutable
final class MessagePaidMessagePriceChanged extends MessageContent {
  MessagePaidMessagePriceChanged({required this.paidMessageStarCount});

  /// [paidMessageStarCount] The new number of Telegram Stars that must be paid
  /// by non-administrator users of the supergroup chat for each sent message
  final int paidMessageStarCount;

  static const String constructor = 'messagePaidMessagePriceChanged';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'paid_message_star_count': paidMessageStarCount,
    '@type': constructor,
  };

  static MessagePaidMessagePriceChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePaidMessagePriceChanged(
      paidMessageStarCount: (json['paid_message_star_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Paid messages were refunded
@immutable
final class MessagePaidMessagesRefunded extends MessageContent {
  MessagePaidMessagesRefunded({
    required this.messageCount,
    required this.starCount,
  });

  /// [messageCount] The number of refunded messages
  final int messageCount;

  /// [starCount] The number of refunded Telegram Stars
  final int starCount;

  static const String constructor = 'messagePaidMessagesRefunded';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'message_count': messageCount,
    'star_count': starCount,
    '@type': constructor,
  };

  static MessagePaidMessagesRefunded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePaidMessagesRefunded(
      messageCount: (json['message_count'] as int?) ?? 0,
      starCount: (json['star_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Telegram Passport data has been received; for bots only
@immutable
final class MessagePassportDataReceived extends MessageContent {
  MessagePassportDataReceived({required this.elements, this.credentials});

  /// [elements] List of received Telegram Passport elements
  final List<EncryptedPassportElement> elements;

  /// [credentials] Encrypted data credentials
  final EncryptedCredentials? credentials;

  static const String constructor = 'messagePassportDataReceived';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'elements': elements.map((item) => item.toJson()).toList(),
    'credentials': credentials?.toJson(),
    '@type': constructor,
  };

  static MessagePassportDataReceived? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePassportDataReceived(
      elements: List<EncryptedPassportElement>.from(
        tdListFromJson(json['elements'])
            .map(
              (item) => EncryptedPassportElement.fromJson(tdMapFromJson(item)),
            )
            .whereType<EncryptedPassportElement>(),
      ),
      credentials: EncryptedCredentials.fromJson(
        tdMapFromJson(json['credentials']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Telegram Passport data has been sent to a bot
@immutable
final class MessagePassportDataSent extends MessageContent {
  MessagePassportDataSent({required this.types});

  /// [types] List of Telegram Passport element types sent
  final List<PassportElementType> types;

  static const String constructor = 'messagePassportDataSent';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'types': types.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static MessagePassportDataSent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePassportDataSent(
      types: List<PassportElementType>.from(
        tdListFromJson(json['types'])
            .map((item) => PassportElementType.fromJson(tdMapFromJson(item)))
            .whereType<PassportElementType>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A payment has been refunded
@immutable
final class MessagePaymentRefunded extends MessageContent {
  MessagePaymentRefunded({
    this.ownerId,
    required this.currency,
    required this.totalAmount,
    required this.invoicePayload,
    required this.telegramPaymentChargeId,
    required this.providerPaymentChargeId,
  });

  /// [ownerId] Identifier of the previous owner of the Telegram Stars that
  /// refunds them
  final MessageSender? ownerId;

  /// [currency] Currency for the price of the product
  final String currency;

  /// [totalAmount] Total price for the product, in the smallest units of the
  /// currency
  final int totalAmount;

  /// [invoicePayload] Invoice payload; only for bots
  final String invoicePayload;

  /// [telegramPaymentChargeId] Telegram payment identifier
  final String telegramPaymentChargeId;

  /// [providerPaymentChargeId] Provider payment identifier
  final String providerPaymentChargeId;

  static const String constructor = 'messagePaymentRefunded';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'owner_id': ownerId?.toJson(),
    'currency': currency,
    'total_amount': totalAmount,
    'invoice_payload': invoicePayload,
    'telegram_payment_charge_id': telegramPaymentChargeId,
    'provider_payment_charge_id': providerPaymentChargeId,
    '@type': constructor,
  };

  static MessagePaymentRefunded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePaymentRefunded(
      ownerId: MessageSender.fromJson(tdMapFromJson(json['owner_id'])),
      currency: (json['currency'] as String?) ?? '',
      totalAmount: (json['total_amount'] as int?) ?? 0,
      invoicePayload: (json['invoice_payload'] as String?) ?? '',
      telegramPaymentChargeId:
          (json['telegram_payment_charge_id'] as String?) ?? '',
      providerPaymentChargeId:
          (json['provider_payment_charge_id'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A payment has been sent to a bot or a business account
@immutable
final class MessagePaymentSuccessful extends MessageContent {
  MessagePaymentSuccessful({
    required this.invoiceChatId,
    required this.invoiceMessageId,
    required this.currency,
    required this.totalAmount,
    required this.subscriptionUntilDate,
    required this.isRecurring,
    required this.isFirstRecurring,
    required this.invoiceName,
  });

  /// [invoiceChatId] Identifier of the chat, containing the corresponding
  /// invoice message
  final int invoiceChatId;

  /// [invoiceMessageId] Identifier of the message with the corresponding
  /// invoice; may be 0 or an identifier of a deleted message
  final int invoiceMessageId;

  /// [currency] Currency for the price of the product
  final String currency;

  /// [totalAmount] Total price for the product, in the smallest units of the
  /// currency
  final int totalAmount;

  /// [subscriptionUntilDate] Point in time (Unix timestamp) when the
  /// subscription will expire; 0 if unknown or the payment isn't recurring
  final int subscriptionUntilDate;

  /// [isRecurring] True, if this is a recurring payment
  final bool isRecurring;

  /// [isFirstRecurring] True, if this is the first recurring payment
  final bool isFirstRecurring;

  /// [invoiceName] Name of the invoice; may be empty if unknown
  final String invoiceName;

  static const String constructor = 'messagePaymentSuccessful';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'invoice_chat_id': invoiceChatId,
    'invoice_message_id': invoiceMessageId,
    'currency': currency,
    'total_amount': totalAmount,
    'subscription_until_date': subscriptionUntilDate,
    'is_recurring': isRecurring,
    'is_first_recurring': isFirstRecurring,
    'invoice_name': invoiceName,
    '@type': constructor,
  };

  static MessagePaymentSuccessful? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePaymentSuccessful(
      invoiceChatId: (json['invoice_chat_id'] as int?) ?? 0,
      invoiceMessageId: (json['invoice_message_id'] as int?) ?? 0,
      currency: (json['currency'] as String?) ?? '',
      totalAmount: (json['total_amount'] as int?) ?? 0,
      subscriptionUntilDate: (json['subscription_until_date'] as int?) ?? 0,
      isRecurring: (json['is_recurring'] as bool?) ?? false,
      isFirstRecurring: (json['is_first_recurring'] as bool?) ?? false,
      invoiceName: (json['invoice_name'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A payment has been received by the bot or the business account
@immutable
final class MessagePaymentSuccessfulBot extends MessageContent {
  MessagePaymentSuccessfulBot({
    required this.currency,
    required this.totalAmount,
    required this.subscriptionUntilDate,
    required this.isRecurring,
    required this.isFirstRecurring,
    required this.invoicePayload,
    this.shippingOptionId,
    this.orderInfo,
    required this.telegramPaymentChargeId,
    required this.providerPaymentChargeId,
  });

  /// [currency] Currency for price of the product
  final String currency;

  /// [totalAmount] Total price for the product, in the smallest units of the
  /// currency
  final int totalAmount;

  /// [subscriptionUntilDate] Point in time (Unix timestamp) when the
  /// subscription will expire; 0 if unknown or the payment isn't recurring
  final int subscriptionUntilDate;

  /// [isRecurring] True, if this is a recurring payment
  final bool isRecurring;

  /// [isFirstRecurring] True, if this is the first recurring payment
  final bool isFirstRecurring;

  /// [invoicePayload] Invoice payload
  final String invoicePayload;

  /// [shippingOptionId] Identifier of the shipping option chosen by the user;
  /// may be empty if not applicable; for bots only
  final String? shippingOptionId;

  /// [orderInfo] Information about the order; may be null; for bots only
  final OrderInfo? orderInfo;

  /// [telegramPaymentChargeId] Telegram payment identifier
  final String telegramPaymentChargeId;

  /// [providerPaymentChargeId] Provider payment identifier
  final String providerPaymentChargeId;

  static const String constructor = 'messagePaymentSuccessfulBot';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'currency': currency,
    'total_amount': totalAmount,
    'subscription_until_date': subscriptionUntilDate,
    'is_recurring': isRecurring,
    'is_first_recurring': isFirstRecurring,
    'invoice_payload': invoicePayload,
    'shipping_option_id': shippingOptionId,
    'order_info': orderInfo?.toJson(),
    'telegram_payment_charge_id': telegramPaymentChargeId,
    'provider_payment_charge_id': providerPaymentChargeId,
    '@type': constructor,
  };

  static MessagePaymentSuccessfulBot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePaymentSuccessfulBot(
      currency: (json['currency'] as String?) ?? '',
      totalAmount: (json['total_amount'] as int?) ?? 0,
      subscriptionUntilDate: (json['subscription_until_date'] as int?) ?? 0,
      isRecurring: (json['is_recurring'] as bool?) ?? false,
      isFirstRecurring: (json['is_first_recurring'] as bool?) ?? false,
      invoicePayload: (json['invoice_payload'] as String?) ?? '',
      shippingOptionId: (json['shipping_option_id'] as String?),
      orderInfo: OrderInfo.fromJson(tdMapFromJson(json['order_info'])),
      telegramPaymentChargeId:
          (json['telegram_payment_charge_id'] as String?) ?? '',
      providerPaymentChargeId:
          (json['provider_payment_charge_id'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A photo message
@immutable
final class MessagePhoto extends MessageContent {
  MessagePhoto({
    this.photo,
    this.video,
    this.caption,
    required this.showCaptionAboveMedia,
    required this.hasSpoiler,
    required this.isSecret,
  });

  /// [photo] The photo
  final Photo? photo;

  /// [video] The video representing the live photo; may be null if the photo is
  /// static
  final Video? video;

  /// [caption] Photo caption
  final FormattedText? caption;

  /// [showCaptionAboveMedia] True, if the caption must be shown above the
  /// photo; otherwise, the caption must be shown below the photo
  final bool showCaptionAboveMedia;

  /// [hasSpoiler] True, if the photo preview must be covered by a spoiler
  /// animation
  final bool hasSpoiler;

  /// [isSecret] True, if the photo must be blurred and must be shown only while
  /// tapped
  final bool isSecret;

  static const String constructor = 'messagePhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'photo': photo?.toJson(),
    'video': video?.toJson(),
    'caption': caption?.toJson(),
    'show_caption_above_media': showCaptionAboveMedia,
    'has_spoiler': hasSpoiler,
    'is_secret': isSecret,
    '@type': constructor,
  };

  static MessagePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePhoto(
      photo: Photo.fromJson(tdMapFromJson(json['photo'])),
      video: Video.fromJson(tdMapFromJson(json['video'])),
      caption: FormattedText.fromJson(tdMapFromJson(json['caption'])),
      showCaptionAboveMedia:
          (json['show_caption_above_media'] as bool?) ?? false,
      hasSpoiler: (json['has_spoiler'] as bool?) ?? false,
      isSecret: (json['is_secret'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message has been pinned
@immutable
final class MessagePinMessage extends MessageContent {
  MessagePinMessage({required this.messageId});

  /// [messageId] Identifier of the pinned message, can be an identifier of a
  /// deleted message or 0
  final int messageId;

  static const String constructor = 'messagePinMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'message_id': messageId,
    '@type': constructor,
  };

  static MessagePinMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePinMessage(messageId: (json['message_id'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with a poll
@immutable
final class MessagePoll extends MessageContent {
  MessagePoll({
    this.poll,
    this.description,
    this.media,
    required this.canAddOption,
  });

  /// [poll] Information about the poll
  final Poll? poll;

  /// param_[description] Description of the poll
  final FormattedText? description;

  /// [media] Media attached to the poll; may be null if none. If present,
  /// currently, can be only of the types pollMediaAnimation, pollMediaAudio,
  /// pollMediaDocument, pollMediaLocation, pollMediaPhoto, pollMediaVenue, or
  /// pollMediaVideo
  final PollMedia? media;

  /// [canAddOption] True, if an option can be added to the poll using
  /// addPollOption
  final bool canAddOption;

  static const String constructor = 'messagePoll';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'poll': poll?.toJson(),
    'description': description?.toJson(),
    'media': media?.toJson(),
    'can_add_option': canAddOption,
    '@type': constructor,
  };

  static MessagePoll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePoll(
      poll: Poll.fromJson(tdMapFromJson(json['poll'])),
      description: FormattedText.fromJson(tdMapFromJson(json['description'])),
      media: PollMedia.fromJson(tdMapFromJson(json['media'])),
      canAddOption: (json['can_add_option'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with information about an added poll option
@immutable
final class MessagePollOptionAdded extends MessageContent {
  MessagePollOptionAdded({
    required this.pollMessageId,
    required this.optionId,
    this.text,
  });

  /// [pollMessageId] Identifier of the message with the poll; can be an
  /// identifier of a deleted message or 0
  final int pollMessageId;

  /// [optionId] Identifier of the added option in the poll
  final String optionId;

  /// [text] Text of the option; 1-100 characters; may contain only custom emoji
  /// entities
  final FormattedText? text;

  static const String constructor = 'messagePollOptionAdded';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'poll_message_id': pollMessageId,
    'option_id': optionId,
    'text': text?.toJson(),
    '@type': constructor,
  };

  static MessagePollOptionAdded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePollOptionAdded(
      pollMessageId: (json['poll_message_id'] as int?) ?? 0,
      optionId: (json['option_id'] as String?) ?? '',
      text: FormattedText.fromJson(tdMapFromJson(json['text'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with information about a deleted poll option
@immutable
final class MessagePollOptionDeleted extends MessageContent {
  MessagePollOptionDeleted({
    required this.pollMessageId,
    required this.optionId,
    this.text,
  });

  /// [pollMessageId] Identifier of the message with the poll; can be an
  /// identifier of a deleted message or 0
  final int pollMessageId;

  /// [optionId] Identifier of the deleted option in the poll
  final String optionId;

  /// [text] Text of the option; 1-100 characters; may contain only custom emoji
  /// entities
  final FormattedText? text;

  static const String constructor = 'messagePollOptionDeleted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'poll_message_id': pollMessageId,
    'option_id': optionId,
    'text': text?.toJson(),
    '@type': constructor,
  };

  static MessagePollOptionDeleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePollOptionDeleted(
      pollMessageId: (json['poll_message_id'] as int?) ?? 0,
      optionId: (json['option_id'] as String?) ?? '',
      text: FormattedText.fromJson(tdMapFromJson(json['text'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Premium gift code was created for the user
@immutable
final class MessagePremiumGiftCode extends MessageContent {
  MessagePremiumGiftCode({
    this.creatorId,
    this.text,
    required this.isFromGiveaway,
    required this.isUnclaimed,
    required this.currency,
    required this.amount,
    required this.cryptocurrency,
    required this.cryptocurrencyAmount,
    required this.monthCount,
    required this.dayCount,
    this.sticker,
    required this.code,
  });

  /// [creatorId] Identifier of a chat or a user who created the gift code; may
  /// be null if unknown
  final MessageSender? creatorId;

  /// [text] Message added to the gift
  final FormattedText? text;

  /// [isFromGiveaway] True, if the gift code was created for a giveaway
  final bool isFromGiveaway;

  /// [isUnclaimed] True, if the winner for the corresponding Telegram Premium
  /// subscription wasn't chosen
  final bool isUnclaimed;

  /// [currency] Currency for the paid amount; empty if unknown
  final String currency;

  /// [amount] The paid amount, in the smallest units of the currency; 0 if
  /// unknown
  final int amount;

  /// [cryptocurrency] Cryptocurrency used to pay for the gift; may be empty if
  /// none or unknown
  final String cryptocurrency;

  /// [cryptocurrencyAmount] The paid amount, in the smallest units of the
  /// cryptocurrency; 0 if unknown
  final int cryptocurrencyAmount;

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active after code activation; 0 if the number of months isn't integer
  final int monthCount;

  /// [dayCount] Number of days the Telegram Premium subscription will be active
  /// after code activation
  final int dayCount;

  /// [sticker] A sticker to be shown in the message; may be null if unknown
  final Sticker? sticker;

  /// [code] The gift code
  final String code;

  static const String constructor = 'messagePremiumGiftCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'creator_id': creatorId?.toJson(),
    'text': text?.toJson(),
    'is_from_giveaway': isFromGiveaway,
    'is_unclaimed': isUnclaimed,
    'currency': currency,
    'amount': amount,
    'cryptocurrency': cryptocurrency,
    'cryptocurrency_amount': cryptocurrencyAmount.toString(),
    'month_count': monthCount,
    'day_count': dayCount,
    'sticker': sticker?.toJson(),
    'code': code,
    '@type': constructor,
  };

  static MessagePremiumGiftCode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePremiumGiftCode(
      creatorId: MessageSender.fromJson(tdMapFromJson(json['creator_id'])),
      text: FormattedText.fromJson(tdMapFromJson(json['text'])),
      isFromGiveaway: (json['is_from_giveaway'] as bool?) ?? false,
      isUnclaimed: (json['is_unclaimed'] as bool?) ?? false,
      currency: (json['currency'] as String?) ?? '',
      amount: (json['amount'] as int?) ?? 0,
      cryptocurrency: (json['cryptocurrency'] as String?) ?? '',
      cryptocurrencyAmount:
          int.tryParse(
            (json['cryptocurrency_amount'] as dynamic)?.toString() ?? '',
          ) ??
          0,
      monthCount: (json['month_count'] as int?) ?? 0,
      dayCount: (json['day_count'] as int?) ?? 0,
      sticker: Sticker.fromJson(tdMapFromJson(json['sticker'])),
      code: (json['code'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A user in the chat came within proximity alert range
@immutable
final class MessageProximityAlertTriggered extends MessageContent {
  MessageProximityAlertTriggered({
    this.travelerId,
    this.watcherId,
    required this.distance,
  });

  /// [travelerId] The identifier of a user or chat that triggered the proximity
  /// alert
  final MessageSender? travelerId;

  /// [watcherId] The identifier of a user or chat that subscribed for the
  /// proximity alert
  final MessageSender? watcherId;

  /// [distance] The distance between the users
  final int distance;

  static const String constructor = 'messageProximityAlertTriggered';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'traveler_id': travelerId?.toJson(),
    'watcher_id': watcherId?.toJson(),
    'distance': distance,
    '@type': constructor,
  };

  static MessageProximityAlertTriggered? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageProximityAlertTriggered(
      travelerId: MessageSender.fromJson(tdMapFromJson(json['traveler_id'])),
      watcherId: MessageSender.fromJson(tdMapFromJson(json['watcher_id'])),
      distance: (json['distance'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A gift which purchase, upgrade or transfer were refunded
@immutable
final class MessageRefundedUpgradedGift extends MessageContent {
  MessageRefundedUpgradedGift({
    this.gift,
    this.senderId,
    this.receiverId,
    this.origin,
  });

  /// [gift] The gift
  final Gift? gift;

  /// [senderId] Sender of the gift
  final MessageSender? senderId;

  /// [receiverId] Receiver of the gift
  final MessageSender? receiverId;

  /// [origin] Origin of the upgraded gift
  final UpgradedGiftOrigin? origin;

  static const String constructor = 'messageRefundedUpgradedGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift': gift?.toJson(),
    'sender_id': senderId?.toJson(),
    'receiver_id': receiverId?.toJson(),
    'origin': origin?.toJson(),
    '@type': constructor,
  };

  static MessageRefundedUpgradedGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageRefundedUpgradedGift(
      gift: Gift.fromJson(tdMapFromJson(json['gift'])),
      senderId: MessageSender.fromJson(tdMapFromJson(json['sender_id'])),
      receiverId: MessageSender.fromJson(tdMapFromJson(json['receiver_id'])),
      origin: UpgradedGiftOrigin.fromJson(tdMapFromJson(json['origin'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A rich message; the message can have multiple media of the same type, all
/// of which must be shown in the corresponding profile tab
@immutable
final class MessageRichMessage extends MessageContent {
  MessageRichMessage({this.message});

  /// [message] The rich message
  final RichMessage? message;

  static const String constructor = 'messageRichMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'message': message?.toJson(),
    '@type': constructor,
  };

  static MessageRichMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageRichMessage(
      message: RichMessage.fromJson(tdMapFromJson(json['message'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A screenshot of a message in the chat has been taken
@immutable
final class MessageScreenshotTaken extends MessageContent {
  const MessageScreenshotTaken();

  static const String constructor = 'messageScreenshotTaken';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageScreenshotTaken? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageScreenshotTaken();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A stake dice message. The dice value is randomly generated by the server
@immutable
final class MessageStakeDice extends MessageContent {
  MessageStakeDice({
    this.initialState,
    this.finalState,
    required this.value,
    required this.stakeGramAmount,
    required this.prizeGramAmount,
  });

  /// [initialState] The animated stickers with the initial dice animation; may
  /// be null if unknown. The update updateMessageContent will be sent when the
  /// sticker became known
  final DiceStickers? initialState;

  /// [finalState] The animated stickers with the final dice animation; may be
  /// null if unknown. The update updateMessageContent will be sent when the
  /// sticker became known
  final DiceStickers? finalState;

  /// [value] The dice value. If the value is 0, then the dice don't have final
  /// state yet
  final int value;

  /// [stakeGramAmount] The TON Gram amount that was staked; in the smallest
  /// units of the currency
  final int stakeGramAmount;

  /// [prizeGramAmount] The TON Gram amount that was gained from the roll; in
  /// the smallest units of the currency; -1 if the dice don't have final state
  /// yet
  final int prizeGramAmount;

  static const String constructor = 'messageStakeDice';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'initial_state': initialState?.toJson(),
    'final_state': finalState?.toJson(),
    'value': value,
    'stake_gram_amount': stakeGramAmount,
    'prize_gram_amount': prizeGramAmount,
    '@type': constructor,
  };

  static MessageStakeDice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageStakeDice(
      initialState: DiceStickers.fromJson(tdMapFromJson(json['initial_state'])),
      finalState: DiceStickers.fromJson(tdMapFromJson(json['final_state'])),
      value: (json['value'] as int?) ?? 0,
      stakeGramAmount: (json['stake_gram_amount'] as int?) ?? 0,
      prizeGramAmount: (json['prize_gram_amount'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A sticker message
@immutable
final class MessageSticker extends MessageContent {
  MessageSticker({this.sticker, required this.isPremium});

  /// [sticker] The sticker description
  final Sticker? sticker;

  /// [isPremium] True, if premium animation of the sticker must be played
  final bool isPremium;

  static const String constructor = 'messageSticker';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sticker': sticker?.toJson(),
    'is_premium': isPremium,
    '@type': constructor,
  };

  static MessageSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSticker(
      sticker: Sticker.fromJson(tdMapFromJson(json['sticker'])),
      isPremium: (json['is_premium'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with a forwarded story
@immutable
final class MessageStory extends MessageContent {
  MessageStory({
    required this.storyPosterChatId,
    required this.storyId,
    required this.viaMention,
  });

  /// [storyPosterChatId] Identifier of the chat that posted the story
  final int storyPosterChatId;

  /// [storyId] Story identifier
  final int storyId;

  /// [viaMention] True, if the story was automatically forwarded because of a
  /// mention of the user
  final bool viaMention;

  static const String constructor = 'messageStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story_poster_chat_id': storyPosterChatId,
    'story_id': storyId,
    'via_mention': viaMention,
    '@type': constructor,
  };

  static MessageStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageStory(
      storyPosterChatId: (json['story_poster_chat_id'] as int?) ?? 0,
      storyId: (json['story_id'] as int?) ?? 0,
      viaMention: (json['via_mention'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A birthdate was suggested to be set
@immutable
final class MessageSuggestBirthdate extends MessageContent {
  MessageSuggestBirthdate({this.birthdate});

  /// [birthdate] The suggested birthdate. Use the method setBirthdate to apply
  /// the birthdate
  final Birthdate? birthdate;

  static const String constructor = 'messageSuggestBirthdate';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'birthdate': birthdate?.toJson(),
    '@type': constructor,
  };

  static MessageSuggestBirthdate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSuggestBirthdate(
      birthdate: Birthdate.fromJson(tdMapFromJson(json['birthdate'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A profile photo was suggested to a user in a private chat
@immutable
final class MessageSuggestProfilePhoto extends MessageContent {
  MessageSuggestProfilePhoto({this.photo});

  /// [photo] The suggested chat photo. Use the method setProfilePhoto with
  /// inputChatPhotoPrevious to apply the photo
  final ChatPhoto? photo;

  static const String constructor = 'messageSuggestProfilePhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'photo': photo?.toJson(),
    '@type': constructor,
  };

  static MessageSuggestProfilePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSuggestProfilePhoto(
      photo: ChatPhoto.fromJson(tdMapFromJson(json['photo'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Approval of suggested post has failed, because the user who proposed the
/// post didn't have enough funds
@immutable
final class MessageSuggestedPostApprovalFailed extends MessageContent {
  MessageSuggestedPostApprovalFailed({
    required this.suggestedPostMessageId,
    this.price,
  });

  /// [suggestedPostMessageId] Identifier of the message with the suggested
  /// post; may be 0 or an identifier of a deleted message
  final int suggestedPostMessageId;

  /// [price] Price of the suggested post
  final SuggestedPostPrice? price;

  static const String constructor = 'messageSuggestedPostApprovalFailed';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'suggested_post_message_id': suggestedPostMessageId,
    'price': price?.toJson(),
    '@type': constructor,
  };

  static MessageSuggestedPostApprovalFailed? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return MessageSuggestedPostApprovalFailed(
      suggestedPostMessageId: (json['suggested_post_message_id'] as int?) ?? 0,
      price: SuggestedPostPrice.fromJson(tdMapFromJson(json['price'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A suggested post was approved
@immutable
final class MessageSuggestedPostApproved extends MessageContent {
  MessageSuggestedPostApproved({
    required this.suggestedPostMessageId,
    this.price,
    required this.sendDate,
  });

  /// [suggestedPostMessageId] Identifier of the message with the suggested
  /// post; may be 0 or an identifier of a deleted message
  final int suggestedPostMessageId;

  /// [price] Price of the suggested post; may be null if the post is non-paid
  final SuggestedPostPrice? price;

  /// [sendDate] Point in time (Unix timestamp) when the post is expected to be
  /// published
  final int sendDate;

  static const String constructor = 'messageSuggestedPostApproved';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'suggested_post_message_id': suggestedPostMessageId,
    'price': price?.toJson(),
    'send_date': sendDate,
    '@type': constructor,
  };

  static MessageSuggestedPostApproved? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSuggestedPostApproved(
      suggestedPostMessageId: (json['suggested_post_message_id'] as int?) ?? 0,
      price: SuggestedPostPrice.fromJson(tdMapFromJson(json['price'])),
      sendDate: (json['send_date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A suggested post was declined
@immutable
final class MessageSuggestedPostDeclined extends MessageContent {
  MessageSuggestedPostDeclined({
    required this.suggestedPostMessageId,
    required this.comment,
  });

  /// [suggestedPostMessageId] Identifier of the message with the suggested
  /// post; may be 0 or an identifier of a deleted message
  final int suggestedPostMessageId;

  /// [comment] Comment added by administrator of the channel when the post was
  /// declined
  final String comment;

  static const String constructor = 'messageSuggestedPostDeclined';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'suggested_post_message_id': suggestedPostMessageId,
    'comment': comment,
    '@type': constructor,
  };

  static MessageSuggestedPostDeclined? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSuggestedPostDeclined(
      suggestedPostMessageId: (json['suggested_post_message_id'] as int?) ?? 0,
      comment: (json['comment'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A suggested post was published for
/// getOption("suggested_post_lifetime_min") seconds and payment for the post
/// was received
@immutable
final class MessageSuggestedPostPaid extends MessageContent {
  MessageSuggestedPostPaid({
    required this.suggestedPostMessageId,
    this.starAmount,
    required this.gramAmount,
  });

  /// [suggestedPostMessageId] Identifier of the message with the suggested
  /// post; may be 0 or an identifier of a deleted message
  final int suggestedPostMessageId;

  /// [starAmount] The amount of received Telegram Stars
  final StarAmount? starAmount;

  /// [gramAmount] The amount of received TON Grams; in the smallest units of
  /// the cryptocurrency
  final int gramAmount;

  static const String constructor = 'messageSuggestedPostPaid';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'suggested_post_message_id': suggestedPostMessageId,
    'star_amount': starAmount?.toJson(),
    'gram_amount': gramAmount,
    '@type': constructor,
  };

  static MessageSuggestedPostPaid? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSuggestedPostPaid(
      suggestedPostMessageId: (json['suggested_post_message_id'] as int?) ?? 0,
      starAmount: StarAmount.fromJson(tdMapFromJson(json['star_amount'])),
      gramAmount: (json['gram_amount'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A suggested post was refunded
@immutable
final class MessageSuggestedPostRefunded extends MessageContent {
  MessageSuggestedPostRefunded({
    required this.suggestedPostMessageId,
    this.reason,
  });

  /// [suggestedPostMessageId] Identifier of the message with the suggested
  /// post; may be 0 or an identifier of a deleted message
  final int suggestedPostMessageId;

  /// [reason] Reason of the refund
  final SuggestedPostRefundReason? reason;

  static const String constructor = 'messageSuggestedPostRefunded';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'suggested_post_message_id': suggestedPostMessageId,
    'reason': reason?.toJson(),
    '@type': constructor,
  };

  static MessageSuggestedPostRefunded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSuggestedPostRefunded(
      suggestedPostMessageId: (json['suggested_post_message_id'] as int?) ?? 0,
      reason: SuggestedPostRefundReason.fromJson(tdMapFromJson(json['reason'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A newly created supergroup or channel
@immutable
final class MessageSupergroupChatCreate extends MessageContent {
  MessageSupergroupChatCreate({required this.title});

  /// [title] Title of the supergroup or channel
  final String title;

  static const String constructor = 'messageSupergroupChatCreate';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'title': title,
    '@type': constructor,
  };

  static MessageSupergroupChatCreate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSupergroupChatCreate(title: (json['title'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A text message
@immutable
final class MessageText extends MessageContent {
  MessageText({this.text, this.linkPreview, this.linkPreviewOptions});

  /// [text] Text of the message
  final FormattedText? text;

  /// [linkPreview] A link preview attached to the message; may be null
  final LinkPreview? linkPreview;

  /// [linkPreviewOptions] Options which were used for generation of the link
  /// preview; may be null if default options were used
  final LinkPreviewOptions? linkPreviewOptions;

  static const String constructor = 'messageText';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'link_preview': linkPreview?.toJson(),
    'link_preview_options': linkPreviewOptions?.toJson(),
    '@type': constructor,
  };

  static MessageText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageText(
      text: FormattedText.fromJson(tdMapFromJson(json['text'])),
      linkPreview: LinkPreview.fromJson(tdMapFromJson(json['link_preview'])),
      linkPreviewOptions: LinkPreviewOptions.fromJson(
        tdMapFromJson(json['link_preview_options']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message content that is not supported in the current TDLib version
@immutable
final class MessageUnsupported extends MessageContent {
  const MessageUnsupported();

  static const String constructor = 'messageUnsupported';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageUnsupported? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageUnsupported();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An upgraded gift was received or sent by the current user, or the current
/// user was notified about a channel gift
@immutable
final class MessageUpgradedGift extends MessageContent {
  MessageUpgradedGift({
    this.gift,
    this.senderId,
    this.receiverId,
    this.origin,
    required this.receivedGiftId,
    required this.isSaved,
    required this.canBeTransferred,
    required this.wasTransferred,
    required this.transferStarCount,
    required this.dropOriginalDetailsStarCount,
    required this.nextTransferDate,
    required this.nextResaleDate,
    required this.exportDate,
    required this.craftDate,
  });

  /// [gift] The gift
  final UpgradedGift? gift;

  /// [senderId] Sender of the gift; may be null for anonymous gifts
  final MessageSender? senderId;

  /// [receiverId] Receiver of the gift
  final MessageSender? receiverId;

  /// [origin] Origin of the upgraded gift
  final UpgradedGiftOrigin? origin;

  /// [receivedGiftId] Unique identifier of the received gift for the current
  /// user; only for the receiver of the gift
  final String receivedGiftId;

  /// [isSaved] True, if the gift is displayed on the user's or the channel's
  /// profile page; only for the receiver of the gift
  final bool isSaved;

  /// [canBeTransferred] True, if the gift can be transferred to another owner;
  /// only for the receiver of the gift
  final bool canBeTransferred;

  /// [wasTransferred] True, if the gift has already been transferred to another
  /// owner; only for the receiver of the gift
  final bool wasTransferred;

  /// [transferStarCount] Number of Telegram Stars that must be paid to transfer
  /// the upgraded gift; only for the receiver of the gift
  final int transferStarCount;

  /// [dropOriginalDetailsStarCount] Number of Telegram Stars that must be paid
  /// to drop original details of the upgraded gift; 0 if not available; only
  /// for the receiver of the gift
  final int dropOriginalDetailsStarCount;

  /// [nextTransferDate] Point in time (Unix timestamp) when the gift can be
  /// transferred to another owner; can be in the past; 0 if the gift can be
  /// transferred immediately or transfer isn't possible; only for the receiver
  /// of the gift
  final int nextTransferDate;

  /// [nextResaleDate] Point in time (Unix timestamp) when the gift can be
  /// resold to another user; can be in the past; 0 if the gift can't be resold;
  /// only for the receiver of the gift
  final int nextResaleDate;

  /// [exportDate] Point in time (Unix timestamp) when the gift can be
  /// transferred to the TON blockchain as an NFT; can be in the past; 0 if NFT
  /// export isn't possible; only for the receiver of the gift
  final int exportDate;

  /// [craftDate] Point in time (Unix timestamp) when the gift can be used to
  /// craft another gift; can be in the past; only for the receiver of the gift
  final int craftDate;

  static const String constructor = 'messageUpgradedGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift': gift?.toJson(),
    'sender_id': senderId?.toJson(),
    'receiver_id': receiverId?.toJson(),
    'origin': origin?.toJson(),
    'received_gift_id': receivedGiftId,
    'is_saved': isSaved,
    'can_be_transferred': canBeTransferred,
    'was_transferred': wasTransferred,
    'transfer_star_count': transferStarCount,
    'drop_original_details_star_count': dropOriginalDetailsStarCount,
    'next_transfer_date': nextTransferDate,
    'next_resale_date': nextResaleDate,
    'export_date': exportDate,
    'craft_date': craftDate,
    '@type': constructor,
  };

  static MessageUpgradedGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageUpgradedGift(
      gift: UpgradedGift.fromJson(tdMapFromJson(json['gift'])),
      senderId: MessageSender.fromJson(tdMapFromJson(json['sender_id'])),
      receiverId: MessageSender.fromJson(tdMapFromJson(json['receiver_id'])),
      origin: UpgradedGiftOrigin.fromJson(tdMapFromJson(json['origin'])),
      receivedGiftId: (json['received_gift_id'] as String?) ?? '',
      isSaved: (json['is_saved'] as bool?) ?? false,
      canBeTransferred: (json['can_be_transferred'] as bool?) ?? false,
      wasTransferred: (json['was_transferred'] as bool?) ?? false,
      transferStarCount: (json['transfer_star_count'] as int?) ?? 0,
      dropOriginalDetailsStarCount:
          (json['drop_original_details_star_count'] as int?) ?? 0,
      nextTransferDate: (json['next_transfer_date'] as int?) ?? 0,
      nextResaleDate: (json['next_resale_date'] as int?) ?? 0,
      exportDate: (json['export_date'] as int?) ?? 0,
      craftDate: (json['craft_date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An offer to purchase an upgraded gift was sent or received
@immutable
final class MessageUpgradedGiftPurchaseOffer extends MessageContent {
  MessageUpgradedGiftPurchaseOffer({
    this.gift,
    this.state,
    this.price,
    required this.expirationDate,
  });

  /// [gift] The gift
  final UpgradedGift? gift;

  /// [state] State of the offer
  final GiftPurchaseOfferState? state;

  /// [price] The proposed price
  final GiftResalePrice? price;

  /// [expirationDate] Point in time (Unix timestamp) when the offer will expire
  /// or has expired
  final int expirationDate;

  static const String constructor = 'messageUpgradedGiftPurchaseOffer';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift': gift?.toJson(),
    'state': state?.toJson(),
    'price': price?.toJson(),
    'expiration_date': expirationDate,
    '@type': constructor,
  };

  static MessageUpgradedGiftPurchaseOffer? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return MessageUpgradedGiftPurchaseOffer(
      gift: UpgradedGift.fromJson(tdMapFromJson(json['gift'])),
      state: GiftPurchaseOfferState.fromJson(tdMapFromJson(json['state'])),
      price: GiftResalePrice.fromJson(tdMapFromJson(json['price'])),
      expirationDate: (json['expiration_date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An offer to purchase a gift was rejected or expired
@immutable
final class MessageUpgradedGiftPurchaseOfferRejected extends MessageContent {
  MessageUpgradedGiftPurchaseOfferRejected({
    this.gift,
    this.price,
    required this.offerMessageId,
    required this.wasExpired,
  });

  /// [gift] The gift
  final UpgradedGift? gift;

  /// [price] The proposed price
  final GiftResalePrice? price;

  /// [offerMessageId] Identifier of the message with purchase offer which was
  /// rejected or expired; may be 0 or an identifier of a deleted message
  final int offerMessageId;

  /// [wasExpired] True, if the offer has expired; otherwise, the offer was
  /// explicitly rejected
  final bool wasExpired;

  static const String constructor = 'messageUpgradedGiftPurchaseOfferRejected';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift': gift?.toJson(),
    'price': price?.toJson(),
    'offer_message_id': offerMessageId,
    'was_expired': wasExpired,
    '@type': constructor,
  };

  static MessageUpgradedGiftPurchaseOfferRejected? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return MessageUpgradedGiftPurchaseOfferRejected(
      gift: UpgradedGift.fromJson(tdMapFromJson(json['gift'])),
      price: GiftResalePrice.fromJson(tdMapFromJson(json['price'])),
      offerMessageId: (json['offer_message_id'] as int?) ?? 0,
      wasExpired: (json['was_expired'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The current user shared users, which were requested by the bot
@immutable
final class MessageUsersShared extends MessageContent {
  MessageUsersShared({required this.users, required this.buttonId});

  /// [users] The shared users
  final List<SharedUser> users;

  /// [buttonId] Identifier of the keyboard button with the request
  final int buttonId;

  static const String constructor = 'messageUsersShared';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'users': users.map((item) => item.toJson()).toList(),
    'button_id': buttonId,
    '@type': constructor,
  };

  static MessageUsersShared? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageUsersShared(
      users: List<SharedUser>.from(
        tdListFromJson(json['users'])
            .map((item) => SharedUser.fromJson(tdMapFromJson(item)))
            .whereType<SharedUser>(),
      ),
      buttonId: (json['button_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with information about a venue
@immutable
final class MessageVenue extends MessageContent {
  MessageVenue({this.venue});

  /// [venue] The venue description
  final Venue? venue;

  static const String constructor = 'messageVenue';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'venue': venue?.toJson(),
    '@type': constructor,
  };

  static MessageVenue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageVenue(venue: Venue.fromJson(tdMapFromJson(json['venue'])));
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A video message
@immutable
final class MessageVideo extends MessageContent {
  MessageVideo({
    this.video,
    required this.alternativeVideos,
    required this.storyboards,
    this.cover,
    required this.startTimestamp,
    this.caption,
    required this.showCaptionAboveMedia,
    required this.hasSpoiler,
    required this.isSecret,
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

  /// [caption] Video caption
  final FormattedText? caption;

  /// [showCaptionAboveMedia] True, if the caption must be shown above the
  /// video; otherwise, the caption must be shown below the video
  final bool showCaptionAboveMedia;

  /// [hasSpoiler] True, if the video preview must be covered by a spoiler
  /// animation
  final bool hasSpoiler;

  /// [isSecret] True, if the video thumbnail must be blurred and the video must
  /// be shown only while tapped
  final bool isSecret;

  static const String constructor = 'messageVideo';

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
    'caption': caption?.toJson(),
    'show_caption_above_media': showCaptionAboveMedia,
    'has_spoiler': hasSpoiler,
    'is_secret': isSecret,
    '@type': constructor,
  };

  static MessageVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageVideo(
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
      caption: FormattedText.fromJson(tdMapFromJson(json['caption'])),
      showCaptionAboveMedia:
          (json['show_caption_above_media'] as bool?) ?? false,
      hasSpoiler: (json['has_spoiler'] as bool?) ?? false,
      isSecret: (json['is_secret'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with information about an ended video chat
@immutable
final class MessageVideoChatEnded extends MessageContent {
  MessageVideoChatEnded({required this.duration});

  /// [duration] Call duration, in seconds
  final int duration;

  static const String constructor = 'messageVideoChatEnded';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'duration': duration,
    '@type': constructor,
  };

  static MessageVideoChatEnded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageVideoChatEnded(duration: (json['duration'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new video chat was scheduled
@immutable
final class MessageVideoChatScheduled extends MessageContent {
  MessageVideoChatScheduled({
    required this.groupCallId,
    required this.startDate,
  });

  /// [groupCallId] Identifier of the video chat. The video chat can be received
  /// through the method getGroupCall
  final int groupCallId;

  /// [startDate] Point in time (Unix timestamp) when the group call is expected
  /// to be started by an administrator
  final int startDate;

  static const String constructor = 'messageVideoChatScheduled';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call_id': groupCallId,
    'start_date': startDate,
    '@type': constructor,
  };

  static MessageVideoChatScheduled? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageVideoChatScheduled(
      groupCallId: (json['group_call_id'] as int?) ?? 0,
      startDate: (json['start_date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A newly created video chat
@immutable
final class MessageVideoChatStarted extends MessageContent {
  MessageVideoChatStarted({required this.groupCallId});

  /// [groupCallId] Identifier of the video chat. The video chat can be received
  /// through the method getGroupCall
  final int groupCallId;

  static const String constructor = 'messageVideoChatStarted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call_id': groupCallId,
    '@type': constructor,
  };

  static MessageVideoChatStarted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageVideoChatStarted(
      groupCallId: (json['group_call_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A video note message
@immutable
final class MessageVideoNote extends MessageContent {
  MessageVideoNote({
    this.videoNote,
    required this.isViewed,
    required this.isSecret,
  });

  /// [videoNote] The video note description
  final VideoNote? videoNote;

  /// [isViewed] True, if at least one of the recipients has viewed the video
  /// note
  final bool isViewed;

  /// [isSecret] True, if the video note thumbnail must be blurred and the video
  /// note must be shown only while tapped
  final bool isSecret;

  static const String constructor = 'messageVideoNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'video_note': videoNote?.toJson(),
    'is_viewed': isViewed,
    'is_secret': isSecret,
    '@type': constructor,
  };

  static MessageVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageVideoNote(
      videoNote: VideoNote.fromJson(tdMapFromJson(json['video_note'])),
      isViewed: (json['is_viewed'] as bool?) ?? false,
      isSecret: (json['is_secret'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A voice note message
@immutable
final class MessageVoiceNote extends MessageContent {
  MessageVoiceNote({this.voiceNote, this.caption, required this.isListened});

  /// [voiceNote] The voice note description
  final VoiceNote? voiceNote;

  /// [caption] Voice note caption
  final FormattedText? caption;

  /// [isListened] True, if at least one of the recipients has listened to the
  /// voice note
  final bool isListened;

  static const String constructor = 'messageVoiceNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'voice_note': voiceNote?.toJson(),
    'caption': caption?.toJson(),
    'is_listened': isListened,
    '@type': constructor,
  };

  static MessageVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageVoiceNote(
      voiceNote: VoiceNote.fromJson(tdMapFromJson(json['voice_note'])),
      caption: FormattedText.fromJson(tdMapFromJson(json['caption'])),
      isListened: (json['is_listened'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Data from a Web App has been received; for bots only
@immutable
final class MessageWebAppDataReceived extends MessageContent {
  MessageWebAppDataReceived({required this.buttonText, required this.data});

  /// [buttonText] Text of the keyboardButtonTypeWebApp button, which opened the
  /// Web App
  final String buttonText;

  /// [data] The data
  final String data;

  static const String constructor = 'messageWebAppDataReceived';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'button_text': buttonText,
    'data': data,
    '@type': constructor,
  };

  static MessageWebAppDataReceived? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageWebAppDataReceived(
      buttonText: (json['button_text'] as String?) ?? '',
      data: (json['data'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Data from a Web App has been sent to a bot
@immutable
final class MessageWebAppDataSent extends MessageContent {
  MessageWebAppDataSent({required this.buttonText});

  /// [buttonText] Text of the keyboardButtonTypeWebApp button, which opened the
  /// Web App
  final String buttonText;

  static const String constructor = 'messageWebAppDataSent';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'button_text': buttonText,
    '@type': constructor,
  };

  static MessageWebAppDataSent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageWebAppDataSent(
      buttonText: (json['button_text'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
