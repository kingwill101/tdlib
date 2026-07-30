import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a chat event
@immutable
sealed class ChatEventAction extends TdObject {
  const ChatEventAction();

  static const String constructor = 'chatEventAction';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ChatEventAccentColorChanged]
  /// [ChatEventActiveUsernamesChanged]
  /// [ChatEventAutomaticTranslationToggled]
  /// [ChatEventAvailableReactionsChanged]
  /// [ChatEventBackgroundChanged]
  /// [ChatEventCustomEmojiStickerSetChanged]
  /// [ChatEventDescriptionChanged]
  /// [ChatEventEmojiStatusChanged]
  /// [ChatEventForumTopicCreated]
  /// [ChatEventForumTopicDeleted]
  /// [ChatEventForumTopicEdited]
  /// [ChatEventForumTopicPinned]
  /// [ChatEventForumTopicToggleIsClosed]
  /// [ChatEventForumTopicToggleIsHidden]
  /// [ChatEventHasAggressiveAntiSpamEnabledToggled]
  /// [ChatEventHasProtectedContentToggled]
  /// [ChatEventInviteLinkDeleted]
  /// [ChatEventInviteLinkEdited]
  /// [ChatEventInviteLinkRevoked]
  /// [ChatEventInvitesToggled]
  /// [ChatEventIsAllHistoryAvailableToggled]
  /// [ChatEventIsForumToggled]
  /// [ChatEventLinkedChatChanged]
  /// [ChatEventLocationChanged]
  /// [ChatEventMemberInvited]
  /// [ChatEventMemberJoined]
  /// [ChatEventMemberJoinedByInviteLink]
  /// [ChatEventMemberJoinedByRequest]
  /// [ChatEventMemberLeft]
  /// [ChatEventMemberPromoted]
  /// [ChatEventMemberRestricted]
  /// [ChatEventMemberSubscriptionExtended]
  /// [ChatEventMemberTagChanged]
  /// [ChatEventMessageAutoDeleteTimeChanged]
  /// [ChatEventMessageDeleted]
  /// [ChatEventMessageEdited]
  /// [ChatEventMessagePinned]
  /// [ChatEventMessageUnpinned]
  /// [ChatEventPermissionsChanged]
  /// [ChatEventPhotoChanged]
  /// [ChatEventPollStopped]
  /// [ChatEventProfileAccentColorChanged]
  /// [ChatEventShowMessageSenderToggled]
  /// [ChatEventSignMessagesToggled]
  /// [ChatEventSlowModeDelayChanged]
  /// [ChatEventStickerSetChanged]
  /// [ChatEventTitleChanged]
  /// [ChatEventUsernameChanged]
  /// [ChatEventVideoChatCreated]
  /// [ChatEventVideoChatEnded]
  /// [ChatEventVideoChatMuteNewParticipantsToggled]
  /// [ChatEventVideoChatParticipantIsMutedToggled]
  /// [ChatEventVideoChatParticipantVolumeLevelChanged]
  static ChatEventAction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatEventAccentColorChanged.constructor:
        return ChatEventAccentColorChanged.fromJson(json);

      case ChatEventActiveUsernamesChanged.constructor:
        return ChatEventActiveUsernamesChanged.fromJson(json);

      case ChatEventAutomaticTranslationToggled.constructor:
        return ChatEventAutomaticTranslationToggled.fromJson(json);

      case ChatEventAvailableReactionsChanged.constructor:
        return ChatEventAvailableReactionsChanged.fromJson(json);

      case ChatEventBackgroundChanged.constructor:
        return ChatEventBackgroundChanged.fromJson(json);

      case ChatEventCustomEmojiStickerSetChanged.constructor:
        return ChatEventCustomEmojiStickerSetChanged.fromJson(json);

      case ChatEventDescriptionChanged.constructor:
        return ChatEventDescriptionChanged.fromJson(json);

      case ChatEventEmojiStatusChanged.constructor:
        return ChatEventEmojiStatusChanged.fromJson(json);

      case ChatEventForumTopicCreated.constructor:
        return ChatEventForumTopicCreated.fromJson(json);

      case ChatEventForumTopicDeleted.constructor:
        return ChatEventForumTopicDeleted.fromJson(json);

      case ChatEventForumTopicEdited.constructor:
        return ChatEventForumTopicEdited.fromJson(json);

      case ChatEventForumTopicPinned.constructor:
        return ChatEventForumTopicPinned.fromJson(json);

      case ChatEventForumTopicToggleIsClosed.constructor:
        return ChatEventForumTopicToggleIsClosed.fromJson(json);

      case ChatEventForumTopicToggleIsHidden.constructor:
        return ChatEventForumTopicToggleIsHidden.fromJson(json);

      case ChatEventHasAggressiveAntiSpamEnabledToggled.constructor:
        return ChatEventHasAggressiveAntiSpamEnabledToggled.fromJson(json);

      case ChatEventHasProtectedContentToggled.constructor:
        return ChatEventHasProtectedContentToggled.fromJson(json);

      case ChatEventInviteLinkDeleted.constructor:
        return ChatEventInviteLinkDeleted.fromJson(json);

      case ChatEventInviteLinkEdited.constructor:
        return ChatEventInviteLinkEdited.fromJson(json);

      case ChatEventInviteLinkRevoked.constructor:
        return ChatEventInviteLinkRevoked.fromJson(json);

      case ChatEventInvitesToggled.constructor:
        return ChatEventInvitesToggled.fromJson(json);

      case ChatEventIsAllHistoryAvailableToggled.constructor:
        return ChatEventIsAllHistoryAvailableToggled.fromJson(json);

      case ChatEventIsForumToggled.constructor:
        return ChatEventIsForumToggled.fromJson(json);

      case ChatEventLinkedChatChanged.constructor:
        return ChatEventLinkedChatChanged.fromJson(json);

      case ChatEventLocationChanged.constructor:
        return ChatEventLocationChanged.fromJson(json);

      case ChatEventMemberInvited.constructor:
        return ChatEventMemberInvited.fromJson(json);

      case ChatEventMemberJoined.constructor:
        return ChatEventMemberJoined.fromJson(json);

      case ChatEventMemberJoinedByInviteLink.constructor:
        return ChatEventMemberJoinedByInviteLink.fromJson(json);

      case ChatEventMemberJoinedByRequest.constructor:
        return ChatEventMemberJoinedByRequest.fromJson(json);

      case ChatEventMemberLeft.constructor:
        return ChatEventMemberLeft.fromJson(json);

      case ChatEventMemberPromoted.constructor:
        return ChatEventMemberPromoted.fromJson(json);

      case ChatEventMemberRestricted.constructor:
        return ChatEventMemberRestricted.fromJson(json);

      case ChatEventMemberSubscriptionExtended.constructor:
        return ChatEventMemberSubscriptionExtended.fromJson(json);

      case ChatEventMemberTagChanged.constructor:
        return ChatEventMemberTagChanged.fromJson(json);

      case ChatEventMessageAutoDeleteTimeChanged.constructor:
        return ChatEventMessageAutoDeleteTimeChanged.fromJson(json);

      case ChatEventMessageDeleted.constructor:
        return ChatEventMessageDeleted.fromJson(json);

      case ChatEventMessageEdited.constructor:
        return ChatEventMessageEdited.fromJson(json);

      case ChatEventMessagePinned.constructor:
        return ChatEventMessagePinned.fromJson(json);

      case ChatEventMessageUnpinned.constructor:
        return ChatEventMessageUnpinned.fromJson(json);

      case ChatEventPermissionsChanged.constructor:
        return ChatEventPermissionsChanged.fromJson(json);

      case ChatEventPhotoChanged.constructor:
        return ChatEventPhotoChanged.fromJson(json);

      case ChatEventPollStopped.constructor:
        return ChatEventPollStopped.fromJson(json);

      case ChatEventProfileAccentColorChanged.constructor:
        return ChatEventProfileAccentColorChanged.fromJson(json);

      case ChatEventShowMessageSenderToggled.constructor:
        return ChatEventShowMessageSenderToggled.fromJson(json);

      case ChatEventSignMessagesToggled.constructor:
        return ChatEventSignMessagesToggled.fromJson(json);

      case ChatEventSlowModeDelayChanged.constructor:
        return ChatEventSlowModeDelayChanged.fromJson(json);

      case ChatEventStickerSetChanged.constructor:
        return ChatEventStickerSetChanged.fromJson(json);

      case ChatEventTitleChanged.constructor:
        return ChatEventTitleChanged.fromJson(json);

      case ChatEventUsernameChanged.constructor:
        return ChatEventUsernameChanged.fromJson(json);

      case ChatEventVideoChatCreated.constructor:
        return ChatEventVideoChatCreated.fromJson(json);

      case ChatEventVideoChatEnded.constructor:
        return ChatEventVideoChatEnded.fromJson(json);

      case ChatEventVideoChatMuteNewParticipantsToggled.constructor:
        return ChatEventVideoChatMuteNewParticipantsToggled.fromJson(json);

      case ChatEventVideoChatParticipantIsMutedToggled.constructor:
        return ChatEventVideoChatParticipantIsMutedToggled.fromJson(json);

      case ChatEventVideoChatParticipantVolumeLevelChanged.constructor:
        return ChatEventVideoChatParticipantVolumeLevelChanged.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat accent color or background custom emoji were changed
@immutable
final class ChatEventAccentColorChanged extends ChatEventAction {
  ChatEventAccentColorChanged({
    required this.oldAccentColorId,
    required this.oldBackgroundCustomEmojiId,
    required this.newAccentColorId,
    required this.newBackgroundCustomEmojiId,
  });

  /// [oldAccentColorId] Previous identifier of chat accent color
  final int oldAccentColorId;

  /// [oldBackgroundCustomEmojiId] Previous identifier of the custom emoji; 0 if
  /// none
  final int oldBackgroundCustomEmojiId;

  /// [newAccentColorId] New identifier of chat accent color
  final int newAccentColorId;

  /// [newBackgroundCustomEmojiId] New identifier of the custom emoji; 0 if none
  final int newBackgroundCustomEmojiId;

  static const String constructor = 'chatEventAccentColorChanged';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'old_accent_color_id': oldAccentColorId,
    'old_background_custom_emoji_id': oldBackgroundCustomEmojiId.toString(),
    'new_accent_color_id': newAccentColorId,
    'new_background_custom_emoji_id': newBackgroundCustomEmojiId.toString(),
    '@type': constructor,
  };

  static ChatEventAccentColorChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventAccentColorChanged(
      oldAccentColorId: (json['old_accent_color_id'] as int?) ?? 0,
      oldBackgroundCustomEmojiId:
          int.tryParse(
            (json['old_background_custom_emoji_id'] as dynamic)?.toString() ??
                '',
          ) ??
          0,
      newAccentColorId: (json['new_accent_color_id'] as int?) ?? 0,
      newBackgroundCustomEmojiId:
          int.tryParse(
            (json['new_background_custom_emoji_id'] as dynamic)?.toString() ??
                '',
          ) ??
          0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat active usernames were changed
@immutable
final class ChatEventActiveUsernamesChanged extends ChatEventAction {
  ChatEventActiveUsernamesChanged({
    required this.oldUsernames,
    required this.newUsernames,
  });

  /// [oldUsernames] Previous list of active usernames
  final List<String> oldUsernames;

  /// [newUsernames] New list of active usernames
  final List<String> newUsernames;

  static const String constructor = 'chatEventActiveUsernamesChanged';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'old_usernames': oldUsernames.map((item) => item).toList(),
    'new_usernames': newUsernames.map((item) => item).toList(),
    '@type': constructor,
  };

  static ChatEventActiveUsernamesChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventActiveUsernamesChanged(
      oldUsernames: List<String>.from(
        tdListFromJson(
          json['old_usernames'],
        ).map((item) => (item as dynamic)?.toString() ?? ''),
      ),
      newUsernames: List<String>.from(
        tdListFromJson(
          json['new_usernames'],
        ).map((item) => (item as dynamic)?.toString() ?? ''),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The has_automatic_translation setting of a channel was toggled
@immutable
final class ChatEventAutomaticTranslationToggled extends ChatEventAction {
  ChatEventAutomaticTranslationToggled({required this.hasAutomaticTranslation});

  /// [hasAutomaticTranslation] New value of has_automatic_translation
  final bool hasAutomaticTranslation;

  static const String constructor = 'chatEventAutomaticTranslationToggled';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'has_automatic_translation': hasAutomaticTranslation,
    '@type': constructor,
  };

  static ChatEventAutomaticTranslationToggled? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatEventAutomaticTranslationToggled(
      hasAutomaticTranslation:
          (json['has_automatic_translation'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat available reactions were changed
@immutable
final class ChatEventAvailableReactionsChanged extends ChatEventAction {
  ChatEventAvailableReactionsChanged({
    this.oldAvailableReactions,
    this.newAvailableReactions,
  });

  /// [oldAvailableReactions] Previous chat available reactions
  final ChatAvailableReactions? oldAvailableReactions;

  /// [newAvailableReactions] New chat available reactions
  final ChatAvailableReactions? newAvailableReactions;

  static const String constructor = 'chatEventAvailableReactionsChanged';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'old_available_reactions': oldAvailableReactions?.toJson(),
    'new_available_reactions': newAvailableReactions?.toJson(),
    '@type': constructor,
  };

  static ChatEventAvailableReactionsChanged? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatEventAvailableReactionsChanged(
      oldAvailableReactions: ChatAvailableReactions.fromJson(
        tdMapFromJson(json['old_available_reactions']),
      ),
      newAvailableReactions: ChatAvailableReactions.fromJson(
        tdMapFromJson(json['new_available_reactions']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat background was changed
@immutable
final class ChatEventBackgroundChanged extends ChatEventAction {
  ChatEventBackgroundChanged({this.oldBackground, this.newBackground});

  /// [oldBackground] Previous background; may be null if none
  final ChatBackground? oldBackground;

  /// [newBackground] New background; may be null if none
  final ChatBackground? newBackground;

  static const String constructor = 'chatEventBackgroundChanged';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'old_background': oldBackground?.toJson(),
    'new_background': newBackground?.toJson(),
    '@type': constructor,
  };

  static ChatEventBackgroundChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventBackgroundChanged(
      oldBackground: ChatBackground.fromJson(
        tdMapFromJson(json['old_background']),
      ),
      newBackground: ChatBackground.fromJson(
        tdMapFromJson(json['new_background']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The supergroup sticker set with allowed custom emoji was changed
@immutable
final class ChatEventCustomEmojiStickerSetChanged extends ChatEventAction {
  ChatEventCustomEmojiStickerSetChanged({
    required this.oldStickerSetId,
    required this.newStickerSetId,
  });

  /// [oldStickerSetId] Previous identifier of the chat sticker set; 0 if none
  final int oldStickerSetId;

  /// [newStickerSetId] New identifier of the chat sticker set; 0 if none
  final int newStickerSetId;

  static const String constructor = 'chatEventCustomEmojiStickerSetChanged';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'old_sticker_set_id': oldStickerSetId.toString(),
    'new_sticker_set_id': newStickerSetId.toString(),
    '@type': constructor,
  };

  static ChatEventCustomEmojiStickerSetChanged? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatEventCustomEmojiStickerSetChanged(
      oldStickerSetId:
          int.tryParse(
            (json['old_sticker_set_id'] as dynamic)?.toString() ?? '',
          ) ??
          0,
      newStickerSetId:
          int.tryParse(
            (json['new_sticker_set_id'] as dynamic)?.toString() ?? '',
          ) ??
          0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat description was changed
@immutable
final class ChatEventDescriptionChanged extends ChatEventAction {
  ChatEventDescriptionChanged({
    required this.oldDescription,
    required this.newDescription,
  });

  /// [oldDescription] Previous chat description
  final String oldDescription;

  /// [newDescription] New chat description
  final String newDescription;

  static const String constructor = 'chatEventDescriptionChanged';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'old_description': oldDescription,
    'new_description': newDescription,
    '@type': constructor,
  };

  static ChatEventDescriptionChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventDescriptionChanged(
      oldDescription: (json['old_description'] as String?) ?? '',
      newDescription: (json['new_description'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat emoji status was changed
@immutable
final class ChatEventEmojiStatusChanged extends ChatEventAction {
  ChatEventEmojiStatusChanged({this.oldEmojiStatus, this.newEmojiStatus});

  /// [oldEmojiStatus] Previous emoji status; may be null if none
  final EmojiStatus? oldEmojiStatus;

  /// [newEmojiStatus] New emoji status; may be null if none
  final EmojiStatus? newEmojiStatus;

  static const String constructor = 'chatEventEmojiStatusChanged';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'old_emoji_status': oldEmojiStatus?.toJson(),
    'new_emoji_status': newEmojiStatus?.toJson(),
    '@type': constructor,
  };

  static ChatEventEmojiStatusChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventEmojiStatusChanged(
      oldEmojiStatus: EmojiStatus.fromJson(
        tdMapFromJson(json['old_emoji_status']),
      ),
      newEmojiStatus: EmojiStatus.fromJson(
        tdMapFromJson(json['new_emoji_status']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new forum topic was created
@immutable
final class ChatEventForumTopicCreated extends ChatEventAction {
  ChatEventForumTopicCreated({this.topicInfo});

  /// [topicInfo] Information about the topic
  final ForumTopicInfo? topicInfo;

  static const String constructor = 'chatEventForumTopicCreated';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'topic_info': topicInfo?.toJson(),
    '@type': constructor,
  };

  static ChatEventForumTopicCreated? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventForumTopicCreated(
      topicInfo: ForumTopicInfo.fromJson(tdMapFromJson(json['topic_info'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A forum topic was deleted
@immutable
final class ChatEventForumTopicDeleted extends ChatEventAction {
  ChatEventForumTopicDeleted({this.topicInfo});

  /// [topicInfo] Information about the topic
  final ForumTopicInfo? topicInfo;

  static const String constructor = 'chatEventForumTopicDeleted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'topic_info': topicInfo?.toJson(),
    '@type': constructor,
  };

  static ChatEventForumTopicDeleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventForumTopicDeleted(
      topicInfo: ForumTopicInfo.fromJson(tdMapFromJson(json['topic_info'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A forum topic was edited
@immutable
final class ChatEventForumTopicEdited extends ChatEventAction {
  ChatEventForumTopicEdited({this.oldTopicInfo, this.newTopicInfo});

  /// [oldTopicInfo] Old information about the topic
  final ForumTopicInfo? oldTopicInfo;

  /// [newTopicInfo] New information about the topic
  final ForumTopicInfo? newTopicInfo;

  static const String constructor = 'chatEventForumTopicEdited';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'old_topic_info': oldTopicInfo?.toJson(),
    'new_topic_info': newTopicInfo?.toJson(),
    '@type': constructor,
  };

  static ChatEventForumTopicEdited? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventForumTopicEdited(
      oldTopicInfo: ForumTopicInfo.fromJson(
        tdMapFromJson(json['old_topic_info']),
      ),
      newTopicInfo: ForumTopicInfo.fromJson(
        tdMapFromJson(json['new_topic_info']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A pinned forum topic was changed
@immutable
final class ChatEventForumTopicPinned extends ChatEventAction {
  ChatEventForumTopicPinned({this.oldTopicInfo, this.newTopicInfo});

  /// [oldTopicInfo] Information about the old pinned topic; may be null
  final ForumTopicInfo? oldTopicInfo;

  /// [newTopicInfo] Information about the new pinned topic; may be null
  final ForumTopicInfo? newTopicInfo;

  static const String constructor = 'chatEventForumTopicPinned';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'old_topic_info': oldTopicInfo?.toJson(),
    'new_topic_info': newTopicInfo?.toJson(),
    '@type': constructor,
  };

  static ChatEventForumTopicPinned? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventForumTopicPinned(
      oldTopicInfo: ForumTopicInfo.fromJson(
        tdMapFromJson(json['old_topic_info']),
      ),
      newTopicInfo: ForumTopicInfo.fromJson(
        tdMapFromJson(json['new_topic_info']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A forum topic was closed or reopened
@immutable
final class ChatEventForumTopicToggleIsClosed extends ChatEventAction {
  ChatEventForumTopicToggleIsClosed({this.topicInfo});

  /// [topicInfo] New information about the topic
  final ForumTopicInfo? topicInfo;

  static const String constructor = 'chatEventForumTopicToggleIsClosed';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'topic_info': topicInfo?.toJson(),
    '@type': constructor,
  };

  static ChatEventForumTopicToggleIsClosed? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatEventForumTopicToggleIsClosed(
      topicInfo: ForumTopicInfo.fromJson(tdMapFromJson(json['topic_info'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The General forum topic was hidden or unhidden
@immutable
final class ChatEventForumTopicToggleIsHidden extends ChatEventAction {
  ChatEventForumTopicToggleIsHidden({this.topicInfo});

  /// [topicInfo] New information about the topic
  final ForumTopicInfo? topicInfo;

  static const String constructor = 'chatEventForumTopicToggleIsHidden';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'topic_info': topicInfo?.toJson(),
    '@type': constructor,
  };

  static ChatEventForumTopicToggleIsHidden? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatEventForumTopicToggleIsHidden(
      topicInfo: ForumTopicInfo.fromJson(tdMapFromJson(json['topic_info'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The has_aggressive_anti_spam_enabled setting of a supergroup was toggled
@immutable
final class ChatEventHasAggressiveAntiSpamEnabledToggled
    extends ChatEventAction {
  ChatEventHasAggressiveAntiSpamEnabledToggled({
    required this.hasAggressiveAntiSpamEnabled,
  });

  /// [hasAggressiveAntiSpamEnabled] New value of
  /// has_aggressive_anti_spam_enabled
  final bool hasAggressiveAntiSpamEnabled;

  static const String constructor =
      'chatEventHasAggressiveAntiSpamEnabledToggled';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'has_aggressive_anti_spam_enabled': hasAggressiveAntiSpamEnabled,
    '@type': constructor,
  };

  static ChatEventHasAggressiveAntiSpamEnabledToggled? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatEventHasAggressiveAntiSpamEnabledToggled(
      hasAggressiveAntiSpamEnabled:
          (json['has_aggressive_anti_spam_enabled'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The has_protected_content setting of a channel was toggled
@immutable
final class ChatEventHasProtectedContentToggled extends ChatEventAction {
  ChatEventHasProtectedContentToggled({required this.hasProtectedContent});

  /// [hasProtectedContent] New value of has_protected_content
  final bool hasProtectedContent;

  static const String constructor = 'chatEventHasProtectedContentToggled';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'has_protected_content': hasProtectedContent,
    '@type': constructor,
  };

  static ChatEventHasProtectedContentToggled? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatEventHasProtectedContentToggled(
      hasProtectedContent: (json['has_protected_content'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A revoked chat invite link was deleted
@immutable
final class ChatEventInviteLinkDeleted extends ChatEventAction {
  ChatEventInviteLinkDeleted({this.inviteLink});

  /// [inviteLink] The invite link
  final ChatInviteLink? inviteLink;

  static const String constructor = 'chatEventInviteLinkDeleted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'invite_link': inviteLink?.toJson(),
    '@type': constructor,
  };

  static ChatEventInviteLinkDeleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventInviteLinkDeleted(
      inviteLink: ChatInviteLink.fromJson(tdMapFromJson(json['invite_link'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A chat invite link was edited
@immutable
final class ChatEventInviteLinkEdited extends ChatEventAction {
  ChatEventInviteLinkEdited({this.oldInviteLink, this.newInviteLink});

  /// [oldInviteLink] Previous information about the invite link
  final ChatInviteLink? oldInviteLink;

  /// [newInviteLink] New information about the invite link
  final ChatInviteLink? newInviteLink;

  static const String constructor = 'chatEventInviteLinkEdited';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'old_invite_link': oldInviteLink?.toJson(),
    'new_invite_link': newInviteLink?.toJson(),
    '@type': constructor,
  };

  static ChatEventInviteLinkEdited? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventInviteLinkEdited(
      oldInviteLink: ChatInviteLink.fromJson(
        tdMapFromJson(json['old_invite_link']),
      ),
      newInviteLink: ChatInviteLink.fromJson(
        tdMapFromJson(json['new_invite_link']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A chat invite link was revoked
@immutable
final class ChatEventInviteLinkRevoked extends ChatEventAction {
  ChatEventInviteLinkRevoked({this.inviteLink});

  /// [inviteLink] The invite link
  final ChatInviteLink? inviteLink;

  static const String constructor = 'chatEventInviteLinkRevoked';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'invite_link': inviteLink?.toJson(),
    '@type': constructor,
  };

  static ChatEventInviteLinkRevoked? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventInviteLinkRevoked(
      inviteLink: ChatInviteLink.fromJson(tdMapFromJson(json['invite_link'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The can_invite_users permission of a supergroup chat was toggled
@immutable
final class ChatEventInvitesToggled extends ChatEventAction {
  ChatEventInvitesToggled({required this.canInviteUsers});

  /// [canInviteUsers] New value of can_invite_users permission
  final bool canInviteUsers;

  static const String constructor = 'chatEventInvitesToggled';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'can_invite_users': canInviteUsers,
    '@type': constructor,
  };

  static ChatEventInvitesToggled? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventInvitesToggled(
      canInviteUsers: (json['can_invite_users'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The is_all_history_available setting of a supergroup was toggled
@immutable
final class ChatEventIsAllHistoryAvailableToggled extends ChatEventAction {
  ChatEventIsAllHistoryAvailableToggled({required this.isAllHistoryAvailable});

  /// [isAllHistoryAvailable] New value of is_all_history_available
  final bool isAllHistoryAvailable;

  static const String constructor = 'chatEventIsAllHistoryAvailableToggled';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_all_history_available': isAllHistoryAvailable,
    '@type': constructor,
  };

  static ChatEventIsAllHistoryAvailableToggled? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatEventIsAllHistoryAvailableToggled(
      isAllHistoryAvailable:
          (json['is_all_history_available'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The is_forum setting of a channel was toggled
@immutable
final class ChatEventIsForumToggled extends ChatEventAction {
  ChatEventIsForumToggled({required this.isForum});

  /// [isForum] New value of is_forum
  final bool isForum;

  static const String constructor = 'chatEventIsForumToggled';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_forum': isForum,
    '@type': constructor,
  };

  static ChatEventIsForumToggled? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventIsForumToggled(
      isForum: (json['is_forum'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The linked chat of a supergroup was changed
@immutable
final class ChatEventLinkedChatChanged extends ChatEventAction {
  ChatEventLinkedChatChanged({
    required this.oldLinkedChatId,
    required this.newLinkedChatId,
  });

  /// [oldLinkedChatId] Previous supergroup linked chat identifier
  final int oldLinkedChatId;

  /// [newLinkedChatId] New supergroup linked chat identifier
  final int newLinkedChatId;

  static const String constructor = 'chatEventLinkedChatChanged';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'old_linked_chat_id': oldLinkedChatId,
    'new_linked_chat_id': newLinkedChatId,
    '@type': constructor,
  };

  static ChatEventLinkedChatChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventLinkedChatChanged(
      oldLinkedChatId: (json['old_linked_chat_id'] as int?) ?? 0,
      newLinkedChatId: (json['new_linked_chat_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The supergroup location was changed
@immutable
final class ChatEventLocationChanged extends ChatEventAction {
  ChatEventLocationChanged({this.oldLocation, this.newLocation});

  /// [oldLocation] Previous location; may be null
  final ChatLocation? oldLocation;

  /// [newLocation] New location; may be null
  final ChatLocation? newLocation;

  static const String constructor = 'chatEventLocationChanged';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'old_location': oldLocation?.toJson(),
    'new_location': newLocation?.toJson(),
    '@type': constructor,
  };

  static ChatEventLocationChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventLocationChanged(
      oldLocation: ChatLocation.fromJson(tdMapFromJson(json['old_location'])),
      newLocation: ChatLocation.fromJson(tdMapFromJson(json['new_location'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new chat member was invited
@immutable
final class ChatEventMemberInvited extends ChatEventAction {
  ChatEventMemberInvited({required this.userId, this.status});

  /// [userId] New member user identifier
  final int userId;

  /// [status] New member status
  final ChatMemberStatus? status;

  static const String constructor = 'chatEventMemberInvited';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'status': status?.toJson(),
    '@type': constructor,
  };

  static ChatEventMemberInvited? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMemberInvited(
      userId: (json['user_id'] as int?) ?? 0,
      status: ChatMemberStatus.fromJson(tdMapFromJson(json['status'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new member joined the chat
@immutable
final class ChatEventMemberJoined extends ChatEventAction {
  const ChatEventMemberJoined();

  static const String constructor = 'chatEventMemberJoined';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatEventMemberJoined? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatEventMemberJoined();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new member joined the chat via an invite link
@immutable
final class ChatEventMemberJoinedByInviteLink extends ChatEventAction {
  ChatEventMemberJoinedByInviteLink({
    this.inviteLink,
    required this.viaChatFolderInviteLink,
  });

  /// [inviteLink] Invite link used to join the chat
  final ChatInviteLink? inviteLink;

  /// [viaChatFolderInviteLink] True, if the user has joined the chat using an
  /// invite link for a chat folder
  final bool viaChatFolderInviteLink;

  static const String constructor = 'chatEventMemberJoinedByInviteLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'invite_link': inviteLink?.toJson(),
    'via_chat_folder_invite_link': viaChatFolderInviteLink,
    '@type': constructor,
  };

  static ChatEventMemberJoinedByInviteLink? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatEventMemberJoinedByInviteLink(
      inviteLink: ChatInviteLink.fromJson(tdMapFromJson(json['invite_link'])),
      viaChatFolderInviteLink:
          (json['via_chat_folder_invite_link'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new member was accepted to the chat by an administrator
@immutable
final class ChatEventMemberJoinedByRequest extends ChatEventAction {
  ChatEventMemberJoinedByRequest({
    required this.approverUserId,
    this.inviteLink,
  });

  /// [approverUserId] User identifier of the chat administrator, approved user
  /// join request
  final int approverUserId;

  /// [inviteLink] Invite link used to join the chat; may be null
  final ChatInviteLink? inviteLink;

  static const String constructor = 'chatEventMemberJoinedByRequest';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'approver_user_id': approverUserId,
    'invite_link': inviteLink?.toJson(),
    '@type': constructor,
  };

  static ChatEventMemberJoinedByRequest? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMemberJoinedByRequest(
      approverUserId: (json['approver_user_id'] as int?) ?? 0,
      inviteLink: ChatInviteLink.fromJson(tdMapFromJson(json['invite_link'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A member left the chat
@immutable
final class ChatEventMemberLeft extends ChatEventAction {
  const ChatEventMemberLeft();

  static const String constructor = 'chatEventMemberLeft';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatEventMemberLeft? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatEventMemberLeft();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A chat member has gained/lost administrator status, or the list of their
/// administrator privileges has changed
@immutable
final class ChatEventMemberPromoted extends ChatEventAction {
  ChatEventMemberPromoted({
    required this.userId,
    this.oldStatus,
    this.newStatus,
  });

  /// [userId] Affected chat member user identifier
  final int userId;

  /// [oldStatus] Previous status of the chat member
  final ChatMemberStatus? oldStatus;

  /// [newStatus] New status of the chat member
  final ChatMemberStatus? newStatus;

  static const String constructor = 'chatEventMemberPromoted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'old_status': oldStatus?.toJson(),
    'new_status': newStatus?.toJson(),
    '@type': constructor,
  };

  static ChatEventMemberPromoted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMemberPromoted(
      userId: (json['user_id'] as int?) ?? 0,
      oldStatus: ChatMemberStatus.fromJson(tdMapFromJson(json['old_status'])),
      newStatus: ChatMemberStatus.fromJson(tdMapFromJson(json['new_status'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A chat member was restricted/unrestricted or banned/unbanned, or the list
/// of their restrictions has changed
@immutable
final class ChatEventMemberRestricted extends ChatEventAction {
  ChatEventMemberRestricted({this.memberId, this.oldStatus, this.newStatus});

  /// [memberId] Affected chat member identifier
  final MessageSender? memberId;

  /// [oldStatus] Previous status of the chat member
  final ChatMemberStatus? oldStatus;

  /// [newStatus] New status of the chat member
  final ChatMemberStatus? newStatus;

  static const String constructor = 'chatEventMemberRestricted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'member_id': memberId?.toJson(),
    'old_status': oldStatus?.toJson(),
    'new_status': newStatus?.toJson(),
    '@type': constructor,
  };

  static ChatEventMemberRestricted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMemberRestricted(
      memberId: MessageSender.fromJson(tdMapFromJson(json['member_id'])),
      oldStatus: ChatMemberStatus.fromJson(tdMapFromJson(json['old_status'])),
      newStatus: ChatMemberStatus.fromJson(tdMapFromJson(json['new_status'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A chat member extended their subscription to the chat
@immutable
final class ChatEventMemberSubscriptionExtended extends ChatEventAction {
  ChatEventMemberSubscriptionExtended({
    required this.userId,
    this.oldStatus,
    this.newStatus,
  });

  /// [userId] Affected chat member user identifier
  final int userId;

  /// [oldStatus] Previous status of the chat member
  final ChatMemberStatus? oldStatus;

  /// [newStatus] New status of the chat member
  final ChatMemberStatus? newStatus;

  static const String constructor = 'chatEventMemberSubscriptionExtended';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'old_status': oldStatus?.toJson(),
    'new_status': newStatus?.toJson(),
    '@type': constructor,
  };

  static ChatEventMemberSubscriptionExtended? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatEventMemberSubscriptionExtended(
      userId: (json['user_id'] as int?) ?? 0,
      oldStatus: ChatMemberStatus.fromJson(tdMapFromJson(json['old_status'])),
      newStatus: ChatMemberStatus.fromJson(tdMapFromJson(json['new_status'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A chat member tag has been changed
@immutable
final class ChatEventMemberTagChanged extends ChatEventAction {
  ChatEventMemberTagChanged({
    required this.userId,
    required this.oldTag,
    required this.newTag,
  });

  /// [userId] Affected chat member user identifier
  final int userId;

  /// [oldTag] Previous tag of the chat member
  final String oldTag;

  /// [newTag] New tag of the chat member
  final String newTag;

  static const String constructor = 'chatEventMemberTagChanged';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'old_tag': oldTag,
    'new_tag': newTag,
    '@type': constructor,
  };

  static ChatEventMemberTagChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMemberTagChanged(
      userId: (json['user_id'] as int?) ?? 0,
      oldTag: (json['old_tag'] as String?) ?? '',
      newTag: (json['new_tag'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message auto-delete timer was changed
@immutable
final class ChatEventMessageAutoDeleteTimeChanged extends ChatEventAction {
  ChatEventMessageAutoDeleteTimeChanged({
    required this.oldMessageAutoDeleteTime,
    required this.newMessageAutoDeleteTime,
  });

  /// [oldMessageAutoDeleteTime] Previous value of message_auto_delete_time
  final int oldMessageAutoDeleteTime;

  /// [newMessageAutoDeleteTime] New value of message_auto_delete_time
  final int newMessageAutoDeleteTime;

  static const String constructor = 'chatEventMessageAutoDeleteTimeChanged';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'old_message_auto_delete_time': oldMessageAutoDeleteTime,
    'new_message_auto_delete_time': newMessageAutoDeleteTime,
    '@type': constructor,
  };

  static ChatEventMessageAutoDeleteTimeChanged? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatEventMessageAutoDeleteTimeChanged(
      oldMessageAutoDeleteTime:
          (json['old_message_auto_delete_time'] as int?) ?? 0,
      newMessageAutoDeleteTime:
          (json['new_message_auto_delete_time'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message was deleted
@immutable
final class ChatEventMessageDeleted extends ChatEventAction {
  ChatEventMessageDeleted({
    this.message,
    required this.canReportAntiSpamFalsePositive,
  });

  /// [message] Deleted message
  final Message? message;

  /// [canReportAntiSpamFalsePositive] True, if the message deletion can be
  /// reported via reportSupergroupAntiSpamFalsePositive
  final bool canReportAntiSpamFalsePositive;

  static const String constructor = 'chatEventMessageDeleted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'message': message?.toJson(),
    'can_report_anti_spam_false_positive': canReportAntiSpamFalsePositive,
    '@type': constructor,
  };

  static ChatEventMessageDeleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMessageDeleted(
      message: Message.fromJson(tdMapFromJson(json['message'])),
      canReportAntiSpamFalsePositive:
          (json['can_report_anti_spam_false_positive'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message was edited
@immutable
final class ChatEventMessageEdited extends ChatEventAction {
  ChatEventMessageEdited({this.oldMessage, this.newMessage});

  /// [oldMessage] The original message before the edit
  final Message? oldMessage;

  /// [newMessage] The message after it was edited
  final Message? newMessage;

  static const String constructor = 'chatEventMessageEdited';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'old_message': oldMessage?.toJson(),
    'new_message': newMessage?.toJson(),
    '@type': constructor,
  };

  static ChatEventMessageEdited? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMessageEdited(
      oldMessage: Message.fromJson(tdMapFromJson(json['old_message'])),
      newMessage: Message.fromJson(tdMapFromJson(json['new_message'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message was pinned
@immutable
final class ChatEventMessagePinned extends ChatEventAction {
  ChatEventMessagePinned({this.message});

  /// [message] Pinned message
  final Message? message;

  static const String constructor = 'chatEventMessagePinned';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'message': message?.toJson(),
    '@type': constructor,
  };

  static ChatEventMessagePinned? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMessagePinned(
      message: Message.fromJson(tdMapFromJson(json['message'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message was unpinned
@immutable
final class ChatEventMessageUnpinned extends ChatEventAction {
  ChatEventMessageUnpinned({this.message});

  /// [message] Unpinned message
  final Message? message;

  static const String constructor = 'chatEventMessageUnpinned';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'message': message?.toJson(),
    '@type': constructor,
  };

  static ChatEventMessageUnpinned? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMessageUnpinned(
      message: Message.fromJson(tdMapFromJson(json['message'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat permissions were changed
@immutable
final class ChatEventPermissionsChanged extends ChatEventAction {
  ChatEventPermissionsChanged({this.oldPermissions, this.newPermissions});

  /// [oldPermissions] Previous chat permissions
  final ChatPermissions? oldPermissions;

  /// [newPermissions] New chat permissions
  final ChatPermissions? newPermissions;

  static const String constructor = 'chatEventPermissionsChanged';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'old_permissions': oldPermissions?.toJson(),
    'new_permissions': newPermissions?.toJson(),
    '@type': constructor,
  };

  static ChatEventPermissionsChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventPermissionsChanged(
      oldPermissions: ChatPermissions.fromJson(
        tdMapFromJson(json['old_permissions']),
      ),
      newPermissions: ChatPermissions.fromJson(
        tdMapFromJson(json['new_permissions']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat photo was changed
@immutable
final class ChatEventPhotoChanged extends ChatEventAction {
  ChatEventPhotoChanged({this.oldPhoto, this.newPhoto});

  /// [oldPhoto] Previous chat photo value; may be null
  final ChatPhoto? oldPhoto;

  /// [newPhoto] New chat photo value; may be null
  final ChatPhoto? newPhoto;

  static const String constructor = 'chatEventPhotoChanged';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'old_photo': oldPhoto?.toJson(),
    'new_photo': newPhoto?.toJson(),
    '@type': constructor,
  };

  static ChatEventPhotoChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventPhotoChanged(
      oldPhoto: ChatPhoto.fromJson(tdMapFromJson(json['old_photo'])),
      newPhoto: ChatPhoto.fromJson(tdMapFromJson(json['new_photo'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A poll in a message was stopped
@immutable
final class ChatEventPollStopped extends ChatEventAction {
  ChatEventPollStopped({this.message});

  /// [message] The message with the poll
  final Message? message;

  static const String constructor = 'chatEventPollStopped';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'message': message?.toJson(),
    '@type': constructor,
  };

  static ChatEventPollStopped? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventPollStopped(
      message: Message.fromJson(tdMapFromJson(json['message'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat's profile accent color or profile background custom emoji were
/// changed
@immutable
final class ChatEventProfileAccentColorChanged extends ChatEventAction {
  ChatEventProfileAccentColorChanged({
    required this.oldProfileAccentColorId,
    required this.oldProfileBackgroundCustomEmojiId,
    required this.newProfileAccentColorId,
    required this.newProfileBackgroundCustomEmojiId,
  });

  /// [oldProfileAccentColorId] Previous identifier of chat's profile accent
  /// color; -1 if none
  final int oldProfileAccentColorId;

  /// [oldProfileBackgroundCustomEmojiId] Previous identifier of the custom
  /// emoji; 0 if none
  final int oldProfileBackgroundCustomEmojiId;

  /// [newProfileAccentColorId] New identifier of chat's profile accent color;
  /// -1 if none
  final int newProfileAccentColorId;

  /// [newProfileBackgroundCustomEmojiId] New identifier of the custom emoji; 0
  /// if none
  final int newProfileBackgroundCustomEmojiId;

  static const String constructor = 'chatEventProfileAccentColorChanged';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'old_profile_accent_color_id': oldProfileAccentColorId,
    'old_profile_background_custom_emoji_id': oldProfileBackgroundCustomEmojiId
        .toString(),
    'new_profile_accent_color_id': newProfileAccentColorId,
    'new_profile_background_custom_emoji_id': newProfileBackgroundCustomEmojiId
        .toString(),
    '@type': constructor,
  };

  static ChatEventProfileAccentColorChanged? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatEventProfileAccentColorChanged(
      oldProfileAccentColorId:
          (json['old_profile_accent_color_id'] as int?) ?? 0,
      oldProfileBackgroundCustomEmojiId:
          int.tryParse(
            (json['old_profile_background_custom_emoji_id'] as dynamic)
                    ?.toString() ??
                '',
          ) ??
          0,
      newProfileAccentColorId:
          (json['new_profile_accent_color_id'] as int?) ?? 0,
      newProfileBackgroundCustomEmojiId:
          int.tryParse(
            (json['new_profile_background_custom_emoji_id'] as dynamic)
                    ?.toString() ??
                '',
          ) ??
          0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The show_message_sender setting of a channel was toggled
@immutable
final class ChatEventShowMessageSenderToggled extends ChatEventAction {
  ChatEventShowMessageSenderToggled({required this.showMessageSender});

  /// [showMessageSender] New value of show_message_sender
  final bool showMessageSender;

  static const String constructor = 'chatEventShowMessageSenderToggled';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'show_message_sender': showMessageSender,
    '@type': constructor,
  };

  static ChatEventShowMessageSenderToggled? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatEventShowMessageSenderToggled(
      showMessageSender: (json['show_message_sender'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The sign_messages setting of a channel was toggled
@immutable
final class ChatEventSignMessagesToggled extends ChatEventAction {
  ChatEventSignMessagesToggled({required this.signMessages});

  /// [signMessages] New value of sign_messages
  final bool signMessages;

  static const String constructor = 'chatEventSignMessagesToggled';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sign_messages': signMessages,
    '@type': constructor,
  };

  static ChatEventSignMessagesToggled? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventSignMessagesToggled(
      signMessages: (json['sign_messages'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The slow_mode_delay setting of a supergroup was changed
@immutable
final class ChatEventSlowModeDelayChanged extends ChatEventAction {
  ChatEventSlowModeDelayChanged({
    required this.oldSlowModeDelay,
    required this.newSlowModeDelay,
  });

  /// [oldSlowModeDelay] Previous value of slow_mode_delay, in seconds
  final int oldSlowModeDelay;

  /// [newSlowModeDelay] New value of slow_mode_delay, in seconds
  final int newSlowModeDelay;

  static const String constructor = 'chatEventSlowModeDelayChanged';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'old_slow_mode_delay': oldSlowModeDelay,
    'new_slow_mode_delay': newSlowModeDelay,
    '@type': constructor,
  };

  static ChatEventSlowModeDelayChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventSlowModeDelayChanged(
      oldSlowModeDelay: (json['old_slow_mode_delay'] as int?) ?? 0,
      newSlowModeDelay: (json['new_slow_mode_delay'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The supergroup sticker set was changed
@immutable
final class ChatEventStickerSetChanged extends ChatEventAction {
  ChatEventStickerSetChanged({
    required this.oldStickerSetId,
    required this.newStickerSetId,
  });

  /// [oldStickerSetId] Previous identifier of the chat sticker set; 0 if none
  final int oldStickerSetId;

  /// [newStickerSetId] New identifier of the chat sticker set; 0 if none
  final int newStickerSetId;

  static const String constructor = 'chatEventStickerSetChanged';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'old_sticker_set_id': oldStickerSetId.toString(),
    'new_sticker_set_id': newStickerSetId.toString(),
    '@type': constructor,
  };

  static ChatEventStickerSetChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventStickerSetChanged(
      oldStickerSetId:
          int.tryParse(
            (json['old_sticker_set_id'] as dynamic)?.toString() ?? '',
          ) ??
          0,
      newStickerSetId:
          int.tryParse(
            (json['new_sticker_set_id'] as dynamic)?.toString() ?? '',
          ) ??
          0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat title was changed
@immutable
final class ChatEventTitleChanged extends ChatEventAction {
  ChatEventTitleChanged({required this.oldTitle, required this.newTitle});

  /// [oldTitle] Previous chat title
  final String oldTitle;

  /// [newTitle] New chat title
  final String newTitle;

  static const String constructor = 'chatEventTitleChanged';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'old_title': oldTitle,
    'new_title': newTitle,
    '@type': constructor,
  };

  static ChatEventTitleChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventTitleChanged(
      oldTitle: (json['old_title'] as String?) ?? '',
      newTitle: (json['new_title'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat editable username was changed
@immutable
final class ChatEventUsernameChanged extends ChatEventAction {
  ChatEventUsernameChanged({
    required this.oldUsername,
    required this.newUsername,
  });

  /// [oldUsername] Previous chat username
  final String oldUsername;

  /// [newUsername] New chat username
  final String newUsername;

  static const String constructor = 'chatEventUsernameChanged';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'old_username': oldUsername,
    'new_username': newUsername,
    '@type': constructor,
  };

  static ChatEventUsernameChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventUsernameChanged(
      oldUsername: (json['old_username'] as String?) ?? '',
      newUsername: (json['new_username'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A video chat was created
@immutable
final class ChatEventVideoChatCreated extends ChatEventAction {
  ChatEventVideoChatCreated({required this.groupCallId});

  /// [groupCallId] Identifier of the video chat. The video chat can be received
  /// through the method getGroupCall
  final int groupCallId;

  static const String constructor = 'chatEventVideoChatCreated';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call_id': groupCallId,
    '@type': constructor,
  };

  static ChatEventVideoChatCreated? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventVideoChatCreated(
      groupCallId: (json['group_call_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A video chat was ended
@immutable
final class ChatEventVideoChatEnded extends ChatEventAction {
  ChatEventVideoChatEnded({required this.groupCallId});

  /// [groupCallId] Identifier of the video chat. The video chat can be received
  /// through the method getGroupCall
  final int groupCallId;

  static const String constructor = 'chatEventVideoChatEnded';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call_id': groupCallId,
    '@type': constructor,
  };

  static ChatEventVideoChatEnded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventVideoChatEnded(
      groupCallId: (json['group_call_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The mute_new_participants setting of a video chat was toggled
@immutable
final class ChatEventVideoChatMuteNewParticipantsToggled
    extends ChatEventAction {
  ChatEventVideoChatMuteNewParticipantsToggled({
    required this.muteNewParticipants,
  });

  /// [muteNewParticipants] New value of the mute_new_participants setting
  final bool muteNewParticipants;

  static const String constructor =
      'chatEventVideoChatMuteNewParticipantsToggled';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'mute_new_participants': muteNewParticipants,
    '@type': constructor,
  };

  static ChatEventVideoChatMuteNewParticipantsToggled? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatEventVideoChatMuteNewParticipantsToggled(
      muteNewParticipants: (json['mute_new_participants'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A video chat participant was muted or unmuted
@immutable
final class ChatEventVideoChatParticipantIsMutedToggled
    extends ChatEventAction {
  ChatEventVideoChatParticipantIsMutedToggled({
    this.participantId,
    required this.isMuted,
  });

  /// [participantId] Identifier of the affected group call participant
  final MessageSender? participantId;

  /// [isMuted] New value of is_muted
  final bool isMuted;

  static const String constructor =
      'chatEventVideoChatParticipantIsMutedToggled';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'participant_id': participantId?.toJson(),
    'is_muted': isMuted,
    '@type': constructor,
  };

  static ChatEventVideoChatParticipantIsMutedToggled? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatEventVideoChatParticipantIsMutedToggled(
      participantId: MessageSender.fromJson(
        tdMapFromJson(json['participant_id']),
      ),
      isMuted: (json['is_muted'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A video chat participant volume level was changed
@immutable
final class ChatEventVideoChatParticipantVolumeLevelChanged
    extends ChatEventAction {
  ChatEventVideoChatParticipantVolumeLevelChanged({
    this.participantId,
    required this.volumeLevel,
  });

  /// [participantId] Identifier of the affected group call participant
  final MessageSender? participantId;

  /// [volumeLevel] New value of volume_level; 1-20000 in hundreds of percents
  final int volumeLevel;

  static const String constructor =
      'chatEventVideoChatParticipantVolumeLevelChanged';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'participant_id': participantId?.toJson(),
    'volume_level': volumeLevel,
    '@type': constructor,
  };

  static ChatEventVideoChatParticipantVolumeLevelChanged? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatEventVideoChatParticipantVolumeLevelChanged(
      participantId: MessageSender.fromJson(
        tdMapFromJson(json['participant_id']),
      ),
      volumeLevel: (json['volume_level'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
