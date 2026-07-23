import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains notifications about data changes
@immutable
sealed class Update extends TdObject {
  const Update();

  static const String constructor = 'update';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [UpdateAccentColors]
  /// [UpdateActiveEmojiReactions]
  /// [UpdateActiveGiftAuctions]
  /// [UpdateActiveLiveLocationMessages]
  /// [UpdateActiveNotifications]
  /// [UpdateAgeVerificationParameters]
  /// [UpdateAnimatedEmojiMessageClicked]
  /// [UpdateAnimationSearchParameters]
  /// [UpdateApplicationRecaptchaVerificationRequired]
  /// [UpdateApplicationVerificationRequired]
  /// [UpdateAttachmentMenuBots]
  /// [UpdateAuthorizationState]
  /// [UpdateAutosaveSettings]
  /// [UpdateAvailableMessageEffects]
  /// [UpdateBasicGroup]
  /// [UpdateBasicGroupFullInfo]
  /// [UpdateBusinessConnection]
  /// [UpdateBusinessMessageEdited]
  /// [UpdateBusinessMessagesDeleted]
  /// [UpdateCall]
  /// [UpdateChatAccentColors]
  /// [UpdateChatAction]
  /// [UpdateChatActionBar]
  /// [UpdateChatActiveStories]
  /// [UpdateChatAddedToList]
  /// [UpdateChatAvailableReactions]
  /// [UpdateChatBackground]
  /// [UpdateChatBlockList]
  /// [UpdateChatBoost]
  /// [UpdateChatBusinessBotManageBar]
  /// [UpdateChatDefaultDisableNotification]
  /// [UpdateChatDraftMessage]
  /// [UpdateChatEmojiStatus]
  /// [UpdateChatFolders]
  /// [UpdateChatHasProtectedContent]
  /// [UpdateChatHasScheduledMessages]
  /// [UpdateChatIsMarkedAsUnread]
  /// [UpdateChatIsTranslatable]
  /// [UpdateChatLastMessage]
  /// [UpdateChatMember]
  /// [UpdateChatMessageAutoDeleteTime]
  /// [UpdateChatMessageSender]
  /// [UpdateChatNotificationSettings]
  /// [UpdateChatOnlineMemberCount]
  /// [UpdateChatPendingJoinRequests]
  /// [UpdateChatPermissions]
  /// [UpdateChatPhoto]
  /// [UpdateChatPosition]
  /// [UpdateChatReadInbox]
  /// [UpdateChatReadOutbox]
  /// [UpdateChatRemovedFromList]
  /// [UpdateChatReplyMarkup]
  /// [UpdateChatRevenueAmount]
  /// [UpdateChatTheme]
  /// [UpdateChatTitle]
  /// [UpdateChatUnreadMentionCount]
  /// [UpdateChatUnreadPollVoteCount]
  /// [UpdateChatUnreadReactionCount]
  /// [UpdateChatVideoChat]
  /// [UpdateChatViewAsTopics]
  /// [UpdateConnectionState]
  /// [UpdateContactCloseBirthdays]
  /// [UpdateDefaultBackground]
  /// [UpdateDefaultPaidReactionType]
  /// [UpdateDefaultReactionType]
  /// [UpdateDeleteMessages]
  /// [UpdateDiceEmojis]
  /// [UpdateDirectMessagesChatTopic]
  /// [UpdateEmojiChatThemes]
  /// [UpdateFavoriteStickers]
  /// [UpdateFile]
  /// [UpdateFileAddedToDownloads]
  /// [UpdateFileDownload]
  /// [UpdateFileDownloads]
  /// [UpdateFileGenerationStart]
  /// [UpdateFileGenerationStop]
  /// [UpdateFileRemovedFromDownloads]
  /// [UpdateForumTopic]
  /// [UpdateForumTopicInfo]
  /// [UpdateFreezeState]
  /// [UpdateGiftAuctionState]
  /// [UpdateGroupCall]
  /// [UpdateGroupCallMessageLevels]
  /// [UpdateGroupCallMessageSendFailed]
  /// [UpdateGroupCallMessagesDeleted]
  /// [UpdateGroupCallParticipant]
  /// [UpdateGroupCallParticipants]
  /// [UpdateGroupCallVerificationState]
  /// [UpdateHavePendingNotifications]
  /// [UpdateInstalledStickerSets]
  /// [UpdateLanguagePackStrings]
  /// [UpdateLiveStoryTopDonors]
  /// [UpdateManagedBot]
  /// [UpdateMessageContainsUnreadPollVotes]
  /// [UpdateMessageContent]
  /// [UpdateMessageContentOpened]
  /// [UpdateMessageEdited]
  /// [UpdateMessageFactCheck]
  /// [UpdateMessageInteractionInfo]
  /// [UpdateMessageIsPinned]
  /// [UpdateMessageLiveLocationViewed]
  /// [UpdateMessageMentionRead]
  /// [UpdateMessageReaction]
  /// [UpdateMessageReactions]
  /// [UpdateMessageSendAcknowledged]
  /// [UpdateMessageSendFailed]
  /// [UpdateMessageSendSucceeded]
  /// [UpdateMessageSuggestedPostInfo]
  /// [UpdateMessageUnreadReactions]
  /// [UpdateNewBusinessCallbackQuery]
  /// [UpdateNewBusinessMessage]
  /// [UpdateNewCallSignalingData]
  /// [UpdateNewCallbackQuery]
  /// [UpdateNewChat]
  /// [UpdateNewChatJoinRequest]
  /// [UpdateNewChosenInlineResult]
  /// [UpdateNewCustomEvent]
  /// [UpdateNewCustomQuery]
  /// [UpdateNewGroupCallMessage]
  /// [UpdateNewGroupCallPaidReaction]
  /// [UpdateNewGuestQuery]
  /// [UpdateNewInlineCallbackQuery]
  /// [UpdateNewInlineQuery]
  /// [UpdateNewMessage]
  /// [UpdateNewOauthRequest]
  /// [UpdateNewPreCheckoutQuery]
  /// [UpdateNewShippingQuery]
  /// [UpdateNotification]
  /// [UpdateNotificationGroup]
  /// [UpdateOption]
  /// [UpdateOwnedStarCount]
  /// [UpdateOwnedTonCount]
  /// [UpdatePaidMediaPurchased]
  /// [UpdatePendingTextMessage]
  /// [UpdatePoll]
  /// [UpdatePollAnswer]
  /// [UpdateProfileAccentColors]
  /// [UpdateQuickReplyShortcut]
  /// [UpdateQuickReplyShortcutDeleted]
  /// [UpdateQuickReplyShortcutMessages]
  /// [UpdateQuickReplyShortcuts]
  /// [UpdateReactionNotificationSettings]
  /// [UpdateRecentStickers]
  /// [UpdateSavedAnimations]
  /// [UpdateSavedMessagesTags]
  /// [UpdateSavedMessagesTopic]
  /// [UpdateSavedMessagesTopicCount]
  /// [UpdateSavedNotificationSounds]
  /// [UpdateScopeNotificationSettings]
  /// [UpdateSecretChat]
  /// [UpdateServiceNotification]
  /// [UpdateSpeechRecognitionTrial]
  /// [UpdateSpeedLimitNotification]
  /// [UpdateStakeDiceState]
  /// [UpdateStarRevenueStatus]
  /// [UpdateStickerSet]
  /// [UpdateStory]
  /// [UpdateStoryDeleted]
  /// [UpdateStoryListChatCount]
  /// [UpdateStoryPostFailed]
  /// [UpdateStoryPostSucceeded]
  /// [UpdateStoryStealthMode]
  /// [UpdateSuggestedActions]
  /// [UpdateSupergroup]
  /// [UpdateSupergroupFullInfo]
  /// [UpdateTermsOfService]
  /// [UpdateTextCompositionStyles]
  /// [UpdateTonRevenueStatus]
  /// [UpdateTopicMessageCount]
  /// [UpdateTrendingStickerSets]
  /// [UpdateTrustedMiniAppBots]
  /// [UpdateUnconfirmedSession]
  /// [UpdateUnreadChatCount]
  /// [UpdateUnreadMessageCount]
  /// [UpdateUser]
  /// [UpdateUserFullInfo]
  /// [UpdateUserPrivacySettingRules]
  /// [UpdateUserStatus]
  /// [UpdateVideoPublished]
  /// [UpdateWebAppMessageSent]
  static Update? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case UpdateAccentColors.constructor:
        return UpdateAccentColors.fromJson(json);

      case UpdateActiveEmojiReactions.constructor:
        return UpdateActiveEmojiReactions.fromJson(json);

      case UpdateActiveGiftAuctions.constructor:
        return UpdateActiveGiftAuctions.fromJson(json);

      case UpdateActiveLiveLocationMessages.constructor:
        return UpdateActiveLiveLocationMessages.fromJson(json);

      case UpdateActiveNotifications.constructor:
        return UpdateActiveNotifications.fromJson(json);

      case UpdateAgeVerificationParameters.constructor:
        return UpdateAgeVerificationParameters.fromJson(json);

      case UpdateAnimatedEmojiMessageClicked.constructor:
        return UpdateAnimatedEmojiMessageClicked.fromJson(json);

      case UpdateAnimationSearchParameters.constructor:
        return UpdateAnimationSearchParameters.fromJson(json);

      case UpdateApplicationRecaptchaVerificationRequired.constructor:
        return UpdateApplicationRecaptchaVerificationRequired.fromJson(json);

      case UpdateApplicationVerificationRequired.constructor:
        return UpdateApplicationVerificationRequired.fromJson(json);

      case UpdateAttachmentMenuBots.constructor:
        return UpdateAttachmentMenuBots.fromJson(json);

      case UpdateAuthorizationState.constructor:
        return UpdateAuthorizationState.fromJson(json);

      case UpdateAutosaveSettings.constructor:
        return UpdateAutosaveSettings.fromJson(json);

      case UpdateAvailableMessageEffects.constructor:
        return UpdateAvailableMessageEffects.fromJson(json);

      case UpdateBasicGroup.constructor:
        return UpdateBasicGroup.fromJson(json);

      case UpdateBasicGroupFullInfo.constructor:
        return UpdateBasicGroupFullInfo.fromJson(json);

      case UpdateBusinessConnection.constructor:
        return UpdateBusinessConnection.fromJson(json);

      case UpdateBusinessMessageEdited.constructor:
        return UpdateBusinessMessageEdited.fromJson(json);

      case UpdateBusinessMessagesDeleted.constructor:
        return UpdateBusinessMessagesDeleted.fromJson(json);

      case UpdateCall.constructor:
        return UpdateCall.fromJson(json);

      case UpdateChatAccentColors.constructor:
        return UpdateChatAccentColors.fromJson(json);

      case UpdateChatAction.constructor:
        return UpdateChatAction.fromJson(json);

      case UpdateChatActionBar.constructor:
        return UpdateChatActionBar.fromJson(json);

      case UpdateChatActiveStories.constructor:
        return UpdateChatActiveStories.fromJson(json);

      case UpdateChatAddedToList.constructor:
        return UpdateChatAddedToList.fromJson(json);

      case UpdateChatAvailableReactions.constructor:
        return UpdateChatAvailableReactions.fromJson(json);

      case UpdateChatBackground.constructor:
        return UpdateChatBackground.fromJson(json);

      case UpdateChatBlockList.constructor:
        return UpdateChatBlockList.fromJson(json);

      case UpdateChatBoost.constructor:
        return UpdateChatBoost.fromJson(json);

      case UpdateChatBusinessBotManageBar.constructor:
        return UpdateChatBusinessBotManageBar.fromJson(json);

      case UpdateChatDefaultDisableNotification.constructor:
        return UpdateChatDefaultDisableNotification.fromJson(json);

      case UpdateChatDraftMessage.constructor:
        return UpdateChatDraftMessage.fromJson(json);

      case UpdateChatEmojiStatus.constructor:
        return UpdateChatEmojiStatus.fromJson(json);

      case UpdateChatFolders.constructor:
        return UpdateChatFolders.fromJson(json);

      case UpdateChatHasProtectedContent.constructor:
        return UpdateChatHasProtectedContent.fromJson(json);

      case UpdateChatHasScheduledMessages.constructor:
        return UpdateChatHasScheduledMessages.fromJson(json);

      case UpdateChatIsMarkedAsUnread.constructor:
        return UpdateChatIsMarkedAsUnread.fromJson(json);

      case UpdateChatIsTranslatable.constructor:
        return UpdateChatIsTranslatable.fromJson(json);

      case UpdateChatLastMessage.constructor:
        return UpdateChatLastMessage.fromJson(json);

      case UpdateChatMember.constructor:
        return UpdateChatMember.fromJson(json);

      case UpdateChatMessageAutoDeleteTime.constructor:
        return UpdateChatMessageAutoDeleteTime.fromJson(json);

      case UpdateChatMessageSender.constructor:
        return UpdateChatMessageSender.fromJson(json);

      case UpdateChatNotificationSettings.constructor:
        return UpdateChatNotificationSettings.fromJson(json);

      case UpdateChatOnlineMemberCount.constructor:
        return UpdateChatOnlineMemberCount.fromJson(json);

      case UpdateChatPendingJoinRequests.constructor:
        return UpdateChatPendingJoinRequests.fromJson(json);

      case UpdateChatPermissions.constructor:
        return UpdateChatPermissions.fromJson(json);

      case UpdateChatPhoto.constructor:
        return UpdateChatPhoto.fromJson(json);

      case UpdateChatPosition.constructor:
        return UpdateChatPosition.fromJson(json);

      case UpdateChatReadInbox.constructor:
        return UpdateChatReadInbox.fromJson(json);

      case UpdateChatReadOutbox.constructor:
        return UpdateChatReadOutbox.fromJson(json);

      case UpdateChatRemovedFromList.constructor:
        return UpdateChatRemovedFromList.fromJson(json);

      case UpdateChatReplyMarkup.constructor:
        return UpdateChatReplyMarkup.fromJson(json);

      case UpdateChatRevenueAmount.constructor:
        return UpdateChatRevenueAmount.fromJson(json);

      case UpdateChatTheme.constructor:
        return UpdateChatTheme.fromJson(json);

      case UpdateChatTitle.constructor:
        return UpdateChatTitle.fromJson(json);

      case UpdateChatUnreadMentionCount.constructor:
        return UpdateChatUnreadMentionCount.fromJson(json);

      case UpdateChatUnreadPollVoteCount.constructor:
        return UpdateChatUnreadPollVoteCount.fromJson(json);

      case UpdateChatUnreadReactionCount.constructor:
        return UpdateChatUnreadReactionCount.fromJson(json);

      case UpdateChatVideoChat.constructor:
        return UpdateChatVideoChat.fromJson(json);

      case UpdateChatViewAsTopics.constructor:
        return UpdateChatViewAsTopics.fromJson(json);

      case UpdateConnectionState.constructor:
        return UpdateConnectionState.fromJson(json);

      case UpdateContactCloseBirthdays.constructor:
        return UpdateContactCloseBirthdays.fromJson(json);

      case UpdateDefaultBackground.constructor:
        return UpdateDefaultBackground.fromJson(json);

      case UpdateDefaultPaidReactionType.constructor:
        return UpdateDefaultPaidReactionType.fromJson(json);

      case UpdateDefaultReactionType.constructor:
        return UpdateDefaultReactionType.fromJson(json);

      case UpdateDeleteMessages.constructor:
        return UpdateDeleteMessages.fromJson(json);

      case UpdateDiceEmojis.constructor:
        return UpdateDiceEmojis.fromJson(json);

      case UpdateDirectMessagesChatTopic.constructor:
        return UpdateDirectMessagesChatTopic.fromJson(json);

      case UpdateEmojiChatThemes.constructor:
        return UpdateEmojiChatThemes.fromJson(json);

      case UpdateFavoriteStickers.constructor:
        return UpdateFavoriteStickers.fromJson(json);

      case UpdateFile.constructor:
        return UpdateFile.fromJson(json);

      case UpdateFileAddedToDownloads.constructor:
        return UpdateFileAddedToDownloads.fromJson(json);

      case UpdateFileDownload.constructor:
        return UpdateFileDownload.fromJson(json);

      case UpdateFileDownloads.constructor:
        return UpdateFileDownloads.fromJson(json);

      case UpdateFileGenerationStart.constructor:
        return UpdateFileGenerationStart.fromJson(json);

      case UpdateFileGenerationStop.constructor:
        return UpdateFileGenerationStop.fromJson(json);

      case UpdateFileRemovedFromDownloads.constructor:
        return UpdateFileRemovedFromDownloads.fromJson(json);

      case UpdateForumTopic.constructor:
        return UpdateForumTopic.fromJson(json);

      case UpdateForumTopicInfo.constructor:
        return UpdateForumTopicInfo.fromJson(json);

      case UpdateFreezeState.constructor:
        return UpdateFreezeState.fromJson(json);

      case UpdateGiftAuctionState.constructor:
        return UpdateGiftAuctionState.fromJson(json);

      case UpdateGroupCall.constructor:
        return UpdateGroupCall.fromJson(json);

      case UpdateGroupCallMessageLevels.constructor:
        return UpdateGroupCallMessageLevels.fromJson(json);

      case UpdateGroupCallMessageSendFailed.constructor:
        return UpdateGroupCallMessageSendFailed.fromJson(json);

      case UpdateGroupCallMessagesDeleted.constructor:
        return UpdateGroupCallMessagesDeleted.fromJson(json);

      case UpdateGroupCallParticipant.constructor:
        return UpdateGroupCallParticipant.fromJson(json);

      case UpdateGroupCallParticipants.constructor:
        return UpdateGroupCallParticipants.fromJson(json);

      case UpdateGroupCallVerificationState.constructor:
        return UpdateGroupCallVerificationState.fromJson(json);

      case UpdateHavePendingNotifications.constructor:
        return UpdateHavePendingNotifications.fromJson(json);

      case UpdateInstalledStickerSets.constructor:
        return UpdateInstalledStickerSets.fromJson(json);

      case UpdateLanguagePackStrings.constructor:
        return UpdateLanguagePackStrings.fromJson(json);

      case UpdateLiveStoryTopDonors.constructor:
        return UpdateLiveStoryTopDonors.fromJson(json);

      case UpdateManagedBot.constructor:
        return UpdateManagedBot.fromJson(json);

      case UpdateMessageContainsUnreadPollVotes.constructor:
        return UpdateMessageContainsUnreadPollVotes.fromJson(json);

      case UpdateMessageContent.constructor:
        return UpdateMessageContent.fromJson(json);

      case UpdateMessageContentOpened.constructor:
        return UpdateMessageContentOpened.fromJson(json);

      case UpdateMessageEdited.constructor:
        return UpdateMessageEdited.fromJson(json);

      case UpdateMessageFactCheck.constructor:
        return UpdateMessageFactCheck.fromJson(json);

      case UpdateMessageInteractionInfo.constructor:
        return UpdateMessageInteractionInfo.fromJson(json);

      case UpdateMessageIsPinned.constructor:
        return UpdateMessageIsPinned.fromJson(json);

      case UpdateMessageLiveLocationViewed.constructor:
        return UpdateMessageLiveLocationViewed.fromJson(json);

      case UpdateMessageMentionRead.constructor:
        return UpdateMessageMentionRead.fromJson(json);

      case UpdateMessageReaction.constructor:
        return UpdateMessageReaction.fromJson(json);

      case UpdateMessageReactions.constructor:
        return UpdateMessageReactions.fromJson(json);

      case UpdateMessageSendAcknowledged.constructor:
        return UpdateMessageSendAcknowledged.fromJson(json);

      case UpdateMessageSendFailed.constructor:
        return UpdateMessageSendFailed.fromJson(json);

      case UpdateMessageSendSucceeded.constructor:
        return UpdateMessageSendSucceeded.fromJson(json);

      case UpdateMessageSuggestedPostInfo.constructor:
        return UpdateMessageSuggestedPostInfo.fromJson(json);

      case UpdateMessageUnreadReactions.constructor:
        return UpdateMessageUnreadReactions.fromJson(json);

      case UpdateNewBusinessCallbackQuery.constructor:
        return UpdateNewBusinessCallbackQuery.fromJson(json);

      case UpdateNewBusinessMessage.constructor:
        return UpdateNewBusinessMessage.fromJson(json);

      case UpdateNewCallSignalingData.constructor:
        return UpdateNewCallSignalingData.fromJson(json);

      case UpdateNewCallbackQuery.constructor:
        return UpdateNewCallbackQuery.fromJson(json);

      case UpdateNewChat.constructor:
        return UpdateNewChat.fromJson(json);

      case UpdateNewChatJoinRequest.constructor:
        return UpdateNewChatJoinRequest.fromJson(json);

      case UpdateNewChosenInlineResult.constructor:
        return UpdateNewChosenInlineResult.fromJson(json);

      case UpdateNewCustomEvent.constructor:
        return UpdateNewCustomEvent.fromJson(json);

      case UpdateNewCustomQuery.constructor:
        return UpdateNewCustomQuery.fromJson(json);

      case UpdateNewGroupCallMessage.constructor:
        return UpdateNewGroupCallMessage.fromJson(json);

      case UpdateNewGroupCallPaidReaction.constructor:
        return UpdateNewGroupCallPaidReaction.fromJson(json);

      case UpdateNewGuestQuery.constructor:
        return UpdateNewGuestQuery.fromJson(json);

      case UpdateNewInlineCallbackQuery.constructor:
        return UpdateNewInlineCallbackQuery.fromJson(json);

      case UpdateNewInlineQuery.constructor:
        return UpdateNewInlineQuery.fromJson(json);

      case UpdateNewMessage.constructor:
        return UpdateNewMessage.fromJson(json);

      case UpdateNewOauthRequest.constructor:
        return UpdateNewOauthRequest.fromJson(json);

      case UpdateNewPreCheckoutQuery.constructor:
        return UpdateNewPreCheckoutQuery.fromJson(json);

      case UpdateNewShippingQuery.constructor:
        return UpdateNewShippingQuery.fromJson(json);

      case UpdateNotification.constructor:
        return UpdateNotification.fromJson(json);

      case UpdateNotificationGroup.constructor:
        return UpdateNotificationGroup.fromJson(json);

      case UpdateOption.constructor:
        return UpdateOption.fromJson(json);

      case UpdateOwnedStarCount.constructor:
        return UpdateOwnedStarCount.fromJson(json);

      case UpdateOwnedTonCount.constructor:
        return UpdateOwnedTonCount.fromJson(json);

      case UpdatePaidMediaPurchased.constructor:
        return UpdatePaidMediaPurchased.fromJson(json);

      case UpdatePendingTextMessage.constructor:
        return UpdatePendingTextMessage.fromJson(json);

      case UpdatePoll.constructor:
        return UpdatePoll.fromJson(json);

      case UpdatePollAnswer.constructor:
        return UpdatePollAnswer.fromJson(json);

      case UpdateProfileAccentColors.constructor:
        return UpdateProfileAccentColors.fromJson(json);

      case UpdateQuickReplyShortcut.constructor:
        return UpdateQuickReplyShortcut.fromJson(json);

      case UpdateQuickReplyShortcutDeleted.constructor:
        return UpdateQuickReplyShortcutDeleted.fromJson(json);

      case UpdateQuickReplyShortcutMessages.constructor:
        return UpdateQuickReplyShortcutMessages.fromJson(json);

      case UpdateQuickReplyShortcuts.constructor:
        return UpdateQuickReplyShortcuts.fromJson(json);

      case UpdateReactionNotificationSettings.constructor:
        return UpdateReactionNotificationSettings.fromJson(json);

      case UpdateRecentStickers.constructor:
        return UpdateRecentStickers.fromJson(json);

      case UpdateSavedAnimations.constructor:
        return UpdateSavedAnimations.fromJson(json);

      case UpdateSavedMessagesTags.constructor:
        return UpdateSavedMessagesTags.fromJson(json);

      case UpdateSavedMessagesTopic.constructor:
        return UpdateSavedMessagesTopic.fromJson(json);

      case UpdateSavedMessagesTopicCount.constructor:
        return UpdateSavedMessagesTopicCount.fromJson(json);

      case UpdateSavedNotificationSounds.constructor:
        return UpdateSavedNotificationSounds.fromJson(json);

      case UpdateScopeNotificationSettings.constructor:
        return UpdateScopeNotificationSettings.fromJson(json);

      case UpdateSecretChat.constructor:
        return UpdateSecretChat.fromJson(json);

      case UpdateServiceNotification.constructor:
        return UpdateServiceNotification.fromJson(json);

      case UpdateSpeechRecognitionTrial.constructor:
        return UpdateSpeechRecognitionTrial.fromJson(json);

      case UpdateSpeedLimitNotification.constructor:
        return UpdateSpeedLimitNotification.fromJson(json);

      case UpdateStakeDiceState.constructor:
        return UpdateStakeDiceState.fromJson(json);

      case UpdateStarRevenueStatus.constructor:
        return UpdateStarRevenueStatus.fromJson(json);

      case UpdateStickerSet.constructor:
        return UpdateStickerSet.fromJson(json);

      case UpdateStory.constructor:
        return UpdateStory.fromJson(json);

      case UpdateStoryDeleted.constructor:
        return UpdateStoryDeleted.fromJson(json);

      case UpdateStoryListChatCount.constructor:
        return UpdateStoryListChatCount.fromJson(json);

      case UpdateStoryPostFailed.constructor:
        return UpdateStoryPostFailed.fromJson(json);

      case UpdateStoryPostSucceeded.constructor:
        return UpdateStoryPostSucceeded.fromJson(json);

      case UpdateStoryStealthMode.constructor:
        return UpdateStoryStealthMode.fromJson(json);

      case UpdateSuggestedActions.constructor:
        return UpdateSuggestedActions.fromJson(json);

      case UpdateSupergroup.constructor:
        return UpdateSupergroup.fromJson(json);

      case UpdateSupergroupFullInfo.constructor:
        return UpdateSupergroupFullInfo.fromJson(json);

      case UpdateTermsOfService.constructor:
        return UpdateTermsOfService.fromJson(json);

      case UpdateTextCompositionStyles.constructor:
        return UpdateTextCompositionStyles.fromJson(json);

      case UpdateTonRevenueStatus.constructor:
        return UpdateTonRevenueStatus.fromJson(json);

      case UpdateTopicMessageCount.constructor:
        return UpdateTopicMessageCount.fromJson(json);

      case UpdateTrendingStickerSets.constructor:
        return UpdateTrendingStickerSets.fromJson(json);

      case UpdateTrustedMiniAppBots.constructor:
        return UpdateTrustedMiniAppBots.fromJson(json);

      case UpdateUnconfirmedSession.constructor:
        return UpdateUnconfirmedSession.fromJson(json);

      case UpdateUnreadChatCount.constructor:
        return UpdateUnreadChatCount.fromJson(json);

      case UpdateUnreadMessageCount.constructor:
        return UpdateUnreadMessageCount.fromJson(json);

      case UpdateUser.constructor:
        return UpdateUser.fromJson(json);

      case UpdateUserFullInfo.constructor:
        return UpdateUserFullInfo.fromJson(json);

      case UpdateUserPrivacySettingRules.constructor:
        return UpdateUserPrivacySettingRules.fromJson(json);

      case UpdateUserStatus.constructor:
        return UpdateUserStatus.fromJson(json);

      case UpdateVideoPublished.constructor:
        return UpdateVideoPublished.fromJson(json);

      case UpdateWebAppMessageSent.constructor:
        return UpdateWebAppMessageSent.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of supported accent colors has changed
@immutable
final class UpdateAccentColors extends Update {
  UpdateAccentColors({
    required this.colors,
    required this.availableAccentColorIds,
  });

  /// [colors] Information about supported colors; colors with identifiers 0
  /// (red), 1 (orange), 2 (purple/violet), 3 (green), 4 (cyan), 5 (blue), 6
  /// (pink) must always be supported and aren't included in the list. The exact
  /// colors for the accent colors with identifiers 0-6 must be taken from the
  /// application theme
  final List<AccentColor> colors;

  /// [availableAccentColorIds] The list of accent color identifiers, which can
  /// be set through setAccentColor and setChatAccentColor. The colors must be
  /// shown in the specified order
  final List<int> availableAccentColorIds;

  static const String constructor = 'updateAccentColors';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'colors': colors.map((item) => item.toJson()).toList(),
    'available_accent_color_ids': availableAccentColorIds
        .map((item) => item)
        .toList(),
    '@type': constructor,
  };

  static UpdateAccentColors? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateAccentColors(
      colors: List<AccentColor>.from(
        tdListFromJson(json['colors'])
            .map((item) => AccentColor.fromJson(tdMapFromJson(item)))
            .whereType<AccentColor>(),
      ),
      availableAccentColorIds: List<int>.from(
        tdListFromJson(
          json['available_accent_color_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of active emoji reactions has changed
@immutable
final class UpdateActiveEmojiReactions extends Update {
  UpdateActiveEmojiReactions({required this.emojis});

  /// [emojis] The new list of active emoji reactions
  final List<String> emojis;

  static const String constructor = 'updateActiveEmojiReactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'emojis': emojis.map((item) => item).toList(),
    '@type': constructor,
  };

  static UpdateActiveEmojiReactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateActiveEmojiReactions(
      emojis: List<String>.from(
        tdListFromJson(
          json['emojis'],
        ).map((item) => (item as dynamic)?.toString() ?? ''),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of auctions in which participate the current user has changed
@immutable
final class UpdateActiveGiftAuctions extends Update {
  UpdateActiveGiftAuctions({required this.states});

  /// [states] New states of the auctions
  final List<GiftAuctionState> states;

  static const String constructor = 'updateActiveGiftAuctions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'states': states.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static UpdateActiveGiftAuctions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateActiveGiftAuctions(
      states: List<GiftAuctionState>.from(
        tdListFromJson(json['states'])
            .map((item) => GiftAuctionState.fromJson(tdMapFromJson(item)))
            .whereType<GiftAuctionState>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of messages with active live location that need to be updated by
/// the application has changed. The list is persistent across application
/// restarts only if the message database is used
@immutable
final class UpdateActiveLiveLocationMessages extends Update {
  UpdateActiveLiveLocationMessages({required this.messages});

  /// [messages] The list of messages with active live locations
  final List<Message> messages;

  static const String constructor = 'updateActiveLiveLocationMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'messages': messages.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static UpdateActiveLiveLocationMessages? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return UpdateActiveLiveLocationMessages(
      messages: List<Message>.from(
        tdListFromJson(json['messages'])
            .map((item) => Message.fromJson(tdMapFromJson(item)))
            .whereType<Message>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Contains active notifications that were shown on previous application
/// launches. This update is sent only if the message database is used. In
/// that case it comes once before any updateNotification and
/// updateNotificationGroup update
@immutable
final class UpdateActiveNotifications extends Update {
  UpdateActiveNotifications({required this.groups});

  /// [groups] Lists of active notification groups
  final List<NotificationGroup> groups;

  static const String constructor = 'updateActiveNotifications';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'groups': groups.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static UpdateActiveNotifications? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateActiveNotifications(
      groups: List<NotificationGroup>.from(
        tdListFromJson(json['groups'])
            .map((item) => NotificationGroup.fromJson(tdMapFromJson(item)))
            .whereType<NotificationGroup>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The parameters for age verification of the current user's account has
/// changed
@immutable
final class UpdateAgeVerificationParameters extends Update {
  UpdateAgeVerificationParameters({this.parameters});

  /// [parameters] Parameters for the age verification; may be null if age
  /// verification isn't needed
  final AgeVerificationParameters? parameters;

  static const String constructor = 'updateAgeVerificationParameters';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'parameters': parameters?.toJson(),
    '@type': constructor,
  };

  static UpdateAgeVerificationParameters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateAgeVerificationParameters(
      parameters: AgeVerificationParameters.fromJson(
        tdMapFromJson(json['parameters']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Some animated emoji message was clicked and a big animated sticker must be
/// played if the message is visible on the screen.
/// chatActionWatchingAnimations with the text of the message needs to be sent
/// if the sticker is played
@immutable
final class UpdateAnimatedEmojiMessageClicked extends Update {
  UpdateAnimatedEmojiMessageClicked({
    required this.chatId,
    required this.messageId,
    this.sticker,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [sticker] The animated sticker to be played
  final Sticker? sticker;

  static const String constructor = 'updateAnimatedEmojiMessageClicked';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    'sticker': sticker?.toJson(),
    '@type': constructor,
  };

  static UpdateAnimatedEmojiMessageClicked? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return UpdateAnimatedEmojiMessageClicked(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      sticker: Sticker.fromJson(tdMapFromJson(json['sticker'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The parameters of animation search through
/// getOption("animation_search_bot_username") bot has changed
@immutable
final class UpdateAnimationSearchParameters extends Update {
  UpdateAnimationSearchParameters({
    required this.provider,
    required this.emojis,
  });

  /// [provider] Name of the animation search provider
  final String provider;

  /// [emojis] The new list of emojis suggested for searching
  final List<String> emojis;

  static const String constructor = 'updateAnimationSearchParameters';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'provider': provider,
    'emojis': emojis.map((item) => item).toList(),
    '@type': constructor,
  };

  static UpdateAnimationSearchParameters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateAnimationSearchParameters(
      provider: (json['provider'] as String?) ?? '',
      emojis: List<String>.from(
        tdListFromJson(
          json['emojis'],
        ).map((item) => (item as dynamic)?.toString() ?? ''),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A request can't be completed unless reCAPTCHA verification is performed;
/// for official mobile applications only. The method
/// setApplicationVerificationToken must be called once the verification is
/// completed or failed
@immutable
final class UpdateApplicationRecaptchaVerificationRequired extends Update {
  UpdateApplicationRecaptchaVerificationRequired({
    required this.verificationId,
    required this.action,
    required this.recaptchaKeyId,
  });

  /// [verificationId] Unique identifier for the verification process
  final int verificationId;

  /// [action] The action for the check
  final String action;

  /// [recaptchaKeyId] Identifier of the reCAPTCHA key
  final String recaptchaKeyId;

  static const String constructor =
      'updateApplicationRecaptchaVerificationRequired';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'verification_id': verificationId,
    'action': action,
    'recaptcha_key_id': recaptchaKeyId,
    '@type': constructor,
  };

  static UpdateApplicationRecaptchaVerificationRequired? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return UpdateApplicationRecaptchaVerificationRequired(
      verificationId: (json['verification_id'] as int?) ?? 0,
      action: (json['action'] as String?) ?? '',
      recaptchaKeyId: (json['recaptcha_key_id'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A request can't be completed unless application verification is performed;
/// for official mobile applications only. The method
/// setApplicationVerificationToken must be called once the verification is
/// completed or failed
@immutable
final class UpdateApplicationVerificationRequired extends Update {
  UpdateApplicationVerificationRequired({
    required this.verificationId,
    required this.nonce,
    required this.cloudProjectNumber,
  });

  /// [verificationId] Unique identifier for the verification process
  final int verificationId;

  /// [nonce] Unique base64url-encoded nonce for the classic Play Integrity
  /// verification (https://developer.android.com/google/play/integrity/classic)
  /// for Android, or a unique string to compare with verify_nonce field from a
  /// push notification for iOS
  final String nonce;

  /// [cloudProjectNumber] Cloud project number to pass to the Play Integrity
  /// API on Android
  final int cloudProjectNumber;

  static const String constructor = 'updateApplicationVerificationRequired';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'verification_id': verificationId,
    'nonce': nonce,
    'cloud_project_number': cloudProjectNumber.toString(),
    '@type': constructor,
  };

  static UpdateApplicationVerificationRequired? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return UpdateApplicationVerificationRequired(
      verificationId: (json['verification_id'] as int?) ?? 0,
      nonce: (json['nonce'] as String?) ?? '',
      cloudProjectNumber:
          int.tryParse(
            (json['cloud_project_number'] as dynamic)?.toString() ?? '',
          ) ??
          0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of bots added to attachment or side menu has changed
@immutable
final class UpdateAttachmentMenuBots extends Update {
  UpdateAttachmentMenuBots({required this.bots});

  /// [bots] The new list of bots. The bots must not be shown on scheduled
  /// messages screen
  final List<AttachmentMenuBot> bots;

  static const String constructor = 'updateAttachmentMenuBots';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bots': bots.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static UpdateAttachmentMenuBots? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateAttachmentMenuBots(
      bots: List<AttachmentMenuBot>.from(
        tdListFromJson(json['bots'])
            .map((item) => AttachmentMenuBot.fromJson(tdMapFromJson(item)))
            .whereType<AttachmentMenuBot>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user authorization state has changed
@immutable
final class UpdateAuthorizationState extends Update {
  UpdateAuthorizationState({this.authorizationState});

  /// [authorizationState] New authorization state
  final AuthorizationState? authorizationState;

  static const String constructor = 'updateAuthorizationState';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'authorization_state': authorizationState?.toJson(),
    '@type': constructor,
  };

  static UpdateAuthorizationState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateAuthorizationState(
      authorizationState: AuthorizationState.fromJson(
        tdMapFromJson(json['authorization_state']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Autosave settings for some type of chats were updated
@immutable
final class UpdateAutosaveSettings extends Update {
  UpdateAutosaveSettings({this.scope, this.settings});

  /// [scope] Type of chats for which autosave settings were updated
  final AutosaveSettingsScope? scope;

  /// [settings] The new autosave settings; may be null if the settings are
  /// reset to default
  final ScopeAutosaveSettings? settings;

  static const String constructor = 'updateAutosaveSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'scope': scope?.toJson(),
    'settings': settings?.toJson(),
    '@type': constructor,
  };

  static UpdateAutosaveSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateAutosaveSettings(
      scope: AutosaveSettingsScope.fromJson(tdMapFromJson(json['scope'])),
      settings: ScopeAutosaveSettings.fromJson(tdMapFromJson(json['settings'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of available message effects has changed
@immutable
final class UpdateAvailableMessageEffects extends Update {
  UpdateAvailableMessageEffects({
    required this.reactionEffectIds,
    required this.stickerEffectIds,
  });

  /// [reactionEffectIds] The new list of available message effects from emoji
  /// reactions
  final List<int> reactionEffectIds;

  /// [stickerEffectIds] The new list of available message effects from Premium
  /// stickers
  final List<int> stickerEffectIds;

  static const String constructor = 'updateAvailableMessageEffects';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'reaction_effect_ids': reactionEffectIds.map((item) => item).toList(),
    'sticker_effect_ids': stickerEffectIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static UpdateAvailableMessageEffects? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateAvailableMessageEffects(
      reactionEffectIds: List<int>.from(
        tdListFromJson(
          json['reaction_effect_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      stickerEffectIds: List<int>.from(
        tdListFromJson(
          json['sticker_effect_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Some data of a basic group has changed. This update is guaranteed to come
/// before the basic group identifier is returned to the application
@immutable
final class UpdateBasicGroup extends Update {
  UpdateBasicGroup({this.basicGroup});

  /// [basicGroup] New data about the group
  final BasicGroup? basicGroup;

  static const String constructor = 'updateBasicGroup';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'basic_group': basicGroup?.toJson(),
    '@type': constructor,
  };

  static UpdateBasicGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateBasicGroup(
      basicGroup: BasicGroup.fromJson(tdMapFromJson(json['basic_group'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Some data in basicGroupFullInfo has been changed
@immutable
final class UpdateBasicGroupFullInfo extends Update {
  UpdateBasicGroupFullInfo({
    required this.basicGroupId,
    this.basicGroupFullInfo,
  });

  /// [basicGroupId] Identifier of a basic group
  final int basicGroupId;

  /// [basicGroupFullInfo] New full information about the group
  final BasicGroupFullInfo? basicGroupFullInfo;

  static const String constructor = 'updateBasicGroupFullInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'basic_group_id': basicGroupId,
    'basic_group_full_info': basicGroupFullInfo?.toJson(),
    '@type': constructor,
  };

  static UpdateBasicGroupFullInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateBasicGroupFullInfo(
      basicGroupId: (json['basic_group_id'] as int?) ?? 0,
      basicGroupFullInfo: BasicGroupFullInfo.fromJson(
        tdMapFromJson(json['basic_group_full_info']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A business connection has changed; for bots only
@immutable
final class UpdateBusinessConnection extends Update {
  UpdateBusinessConnection({this.connection});

  /// [connection] New data about the connection
  final BusinessConnection? connection;

  static const String constructor = 'updateBusinessConnection';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'connection': connection?.toJson(),
    '@type': constructor,
  };

  static UpdateBusinessConnection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateBusinessConnection(
      connection: BusinessConnection.fromJson(
        tdMapFromJson(json['connection']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message in a business account was edited; for bots only
@immutable
final class UpdateBusinessMessageEdited extends Update {
  UpdateBusinessMessageEdited({required this.connectionId, this.message});

  /// [connectionId] Unique identifier of the business connection
  final String connectionId;

  /// [message] The edited message
  final BusinessMessage? message;

  static const String constructor = 'updateBusinessMessageEdited';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'connection_id': connectionId,
    'message': message?.toJson(),
    '@type': constructor,
  };

  static UpdateBusinessMessageEdited? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateBusinessMessageEdited(
      connectionId: (json['connection_id'] as String?) ?? '',
      message: BusinessMessage.fromJson(tdMapFromJson(json['message'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Messages in a business account were deleted; for bots only
@immutable
final class UpdateBusinessMessagesDeleted extends Update {
  UpdateBusinessMessagesDeleted({
    required this.connectionId,
    required this.chatId,
    required this.messageIds,
  });

  /// [connectionId] Unique identifier of the business connection
  final String connectionId;

  /// [chatId] Identifier of a chat in the business account in which messages
  /// were deleted
  final int chatId;

  /// [messageIds] Unique message identifiers of the deleted messages
  final List<int> messageIds;

  static const String constructor = 'updateBusinessMessagesDeleted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'connection_id': connectionId,
    'chat_id': chatId,
    'message_ids': messageIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static UpdateBusinessMessagesDeleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateBusinessMessagesDeleted(
      connectionId: (json['connection_id'] as String?) ?? '',
      chatId: (json['chat_id'] as int?) ?? 0,
      messageIds: List<int>.from(
        tdListFromJson(
          json['message_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// New call was created or information about a call was updated
@immutable
final class UpdateCall extends Update {
  UpdateCall({this.call});

  /// [call] New data about a call
  final Call? call;

  static const String constructor = 'updateCall';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'call': call?.toJson(),
    '@type': constructor,
  };

  static UpdateCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateCall(call: Call.fromJson(tdMapFromJson(json['call'])));
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Chat accent colors have changed
@immutable
final class UpdateChatAccentColors extends Update {
  UpdateChatAccentColors({
    required this.chatId,
    required this.accentColorId,
    required this.backgroundCustomEmojiId,
    this.upgradedGiftColors,
    required this.profileAccentColorId,
    required this.profileBackgroundCustomEmojiId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [accentColorId] The new chat accent color identifier
  final int accentColorId;

  /// [backgroundCustomEmojiId] The new identifier of a custom emoji to be shown
  /// on the reply header and link preview background; 0 if none
  final int backgroundCustomEmojiId;

  /// [upgradedGiftColors] Color scheme based on an upgraded gift to be used for
  /// the chat instead of accent_color_id and background_custom_emoji_id; may be
  /// null if none
  final UpgradedGiftColors? upgradedGiftColors;

  /// [profileAccentColorId] The new chat profile accent color identifier; -1 if
  /// none
  final int profileAccentColorId;

  /// [profileBackgroundCustomEmojiId] The new identifier of a custom emoji to
  /// be shown on the profile background; 0 if none
  final int profileBackgroundCustomEmojiId;

  static const String constructor = 'updateChatAccentColors';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'accent_color_id': accentColorId,
    'background_custom_emoji_id': backgroundCustomEmojiId.toString(),
    'upgraded_gift_colors': upgradedGiftColors?.toJson(),
    'profile_accent_color_id': profileAccentColorId,
    'profile_background_custom_emoji_id': profileBackgroundCustomEmojiId
        .toString(),
    '@type': constructor,
  };

  static UpdateChatAccentColors? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatAccentColors(
      chatId: (json['chat_id'] as int?) ?? 0,
      accentColorId: (json['accent_color_id'] as int?) ?? 0,
      backgroundCustomEmojiId:
          int.tryParse(
            (json['background_custom_emoji_id'] as dynamic)?.toString() ?? '',
          ) ??
          0,
      upgradedGiftColors: UpgradedGiftColors.fromJson(
        tdMapFromJson(json['upgraded_gift_colors']),
      ),
      profileAccentColorId: (json['profile_accent_color_id'] as int?) ?? 0,
      profileBackgroundCustomEmojiId:
          int.tryParse(
            (json['profile_background_custom_emoji_id'] as dynamic)
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

/// A message sender activity in the chat has changed
@immutable
final class UpdateChatAction extends Update {
  UpdateChatAction({
    required this.chatId,
    this.topicId,
    this.senderId,
    this.action,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [topicId] Identifier of the specific topic in which the action was
  /// performed; may be null if none
  final MessageTopic? topicId;

  /// [senderId] Identifier of a message sender performing the action
  final MessageSender? senderId;

  /// [action] The action
  final ChatAction? action;

  static const String constructor = 'updateChatAction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'topic_id': topicId?.toJson(),
    'sender_id': senderId?.toJson(),
    'action': action?.toJson(),
    '@type': constructor,
  };

  static UpdateChatAction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatAction(
      chatId: (json['chat_id'] as int?) ?? 0,
      topicId: MessageTopic.fromJson(tdMapFromJson(json['topic_id'])),
      senderId: MessageSender.fromJson(tdMapFromJson(json['sender_id'])),
      action: ChatAction.fromJson(tdMapFromJson(json['action'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat action bar was changed
@immutable
final class UpdateChatActionBar extends Update {
  UpdateChatActionBar({required this.chatId, this.actionBar});

  /// [chatId] Chat identifier
  final int chatId;

  /// [actionBar] The new value of the action bar; may be null
  final ChatActionBar? actionBar;

  static const String constructor = 'updateChatActionBar';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'action_bar': actionBar?.toJson(),
    '@type': constructor,
  };

  static UpdateChatActionBar? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatActionBar(
      chatId: (json['chat_id'] as int?) ?? 0,
      actionBar: ChatActionBar.fromJson(tdMapFromJson(json['action_bar'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of active stories posted by a specific chat has changed
@immutable
final class UpdateChatActiveStories extends Update {
  UpdateChatActiveStories({this.activeStories});

  /// [activeStories] The new list of active stories
  final ChatActiveStories? activeStories;

  static const String constructor = 'updateChatActiveStories';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'active_stories': activeStories?.toJson(),
    '@type': constructor,
  };

  static UpdateChatActiveStories? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatActiveStories(
      activeStories: ChatActiveStories.fromJson(
        tdMapFromJson(json['active_stories']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A chat was added to a chat list
@immutable
final class UpdateChatAddedToList extends Update {
  UpdateChatAddedToList({required this.chatId, this.chatList});

  /// [chatId] Chat identifier
  final int chatId;

  /// [chatList] The chat list to which the chat was added
  final ChatList? chatList;

  static const String constructor = 'updateChatAddedToList';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'chat_list': chatList?.toJson(),
    '@type': constructor,
  };

  static UpdateChatAddedToList? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatAddedToList(
      chatId: (json['chat_id'] as int?) ?? 0,
      chatList: ChatList.fromJson(tdMapFromJson(json['chat_list'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat available reactions were changed
@immutable
final class UpdateChatAvailableReactions extends Update {
  UpdateChatAvailableReactions({required this.chatId, this.availableReactions});

  /// [chatId] Chat identifier
  final int chatId;

  /// [availableReactions] The new reactions, available in the chat
  final ChatAvailableReactions? availableReactions;

  static const String constructor = 'updateChatAvailableReactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'available_reactions': availableReactions?.toJson(),
    '@type': constructor,
  };

  static UpdateChatAvailableReactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatAvailableReactions(
      chatId: (json['chat_id'] as int?) ?? 0,
      availableReactions: ChatAvailableReactions.fromJson(
        tdMapFromJson(json['available_reactions']),
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
final class UpdateChatBackground extends Update {
  UpdateChatBackground({required this.chatId, this.background});

  /// [chatId] Chat identifier
  final int chatId;

  /// [background] The new chat background; may be null if background was reset
  /// to default
  final ChatBackground? background;

  static const String constructor = 'updateChatBackground';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'background': background?.toJson(),
    '@type': constructor,
  };

  static UpdateChatBackground? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatBackground(
      chatId: (json['chat_id'] as int?) ?? 0,
      background: ChatBackground.fromJson(tdMapFromJson(json['background'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A chat was blocked or unblocked
@immutable
final class UpdateChatBlockList extends Update {
  UpdateChatBlockList({required this.chatId, this.blockList});

  /// [chatId] Chat identifier
  final int chatId;

  /// [blockList] Block list to which the chat is added; may be null if none
  final BlockList? blockList;

  static const String constructor = 'updateChatBlockList';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'block_list': blockList?.toJson(),
    '@type': constructor,
  };

  static UpdateChatBlockList? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatBlockList(
      chatId: (json['chat_id'] as int?) ?? 0,
      blockList: BlockList.fromJson(tdMapFromJson(json['block_list'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A chat boost has changed; for bots only
@immutable
final class UpdateChatBoost extends Update {
  UpdateChatBoost({required this.chatId, this.boost});

  /// [chatId] Chat identifier
  final int chatId;

  /// [boost] New information about the boost
  final ChatBoost? boost;

  static const String constructor = 'updateChatBoost';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'boost': boost?.toJson(),
    '@type': constructor,
  };

  static UpdateChatBoost? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatBoost(
      chatId: (json['chat_id'] as int?) ?? 0,
      boost: ChatBoost.fromJson(tdMapFromJson(json['boost'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The bar for managing business bot was changed in a chat
@immutable
final class UpdateChatBusinessBotManageBar extends Update {
  UpdateChatBusinessBotManageBar({
    required this.chatId,
    this.businessBotManageBar,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [businessBotManageBar] The new value of the business bot manage bar; may
  /// be null
  final BusinessBotManageBar? businessBotManageBar;

  static const String constructor = 'updateChatBusinessBotManageBar';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'business_bot_manage_bar': businessBotManageBar?.toJson(),
    '@type': constructor,
  };

  static UpdateChatBusinessBotManageBar? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatBusinessBotManageBar(
      chatId: (json['chat_id'] as int?) ?? 0,
      businessBotManageBar: BusinessBotManageBar.fromJson(
        tdMapFromJson(json['business_bot_manage_bar']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The value of the default disable_notification parameter, used when a
/// message is sent to the chat, was changed
@immutable
final class UpdateChatDefaultDisableNotification extends Update {
  UpdateChatDefaultDisableNotification({
    required this.chatId,
    required this.defaultDisableNotification,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [defaultDisableNotification] The new default_disable_notification value
  final bool defaultDisableNotification;

  static const String constructor = 'updateChatDefaultDisableNotification';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'default_disable_notification': defaultDisableNotification,
    '@type': constructor,
  };

  static UpdateChatDefaultDisableNotification? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return UpdateChatDefaultDisableNotification(
      chatId: (json['chat_id'] as int?) ?? 0,
      defaultDisableNotification:
          (json['default_disable_notification'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A chat draft has changed. Be aware that the update may come in the
/// currently opened chat but with old content of the draft. If the user has
/// changed the content of the draft, this update mustn't be applied
@immutable
final class UpdateChatDraftMessage extends Update {
  UpdateChatDraftMessage({
    required this.chatId,
    this.draftMessage,
    required this.positions,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [draftMessage] The new draft message; may be null if none
  final DraftMessage? draftMessage;

  /// [positions] The new chat positions in the chat lists
  final List<ChatPosition> positions;

  static const String constructor = 'updateChatDraftMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'draft_message': draftMessage?.toJson(),
    'positions': positions.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static UpdateChatDraftMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatDraftMessage(
      chatId: (json['chat_id'] as int?) ?? 0,
      draftMessage: DraftMessage.fromJson(tdMapFromJson(json['draft_message'])),
      positions: List<ChatPosition>.from(
        tdListFromJson(json['positions'])
            .map((item) => ChatPosition.fromJson(tdMapFromJson(item)))
            .whereType<ChatPosition>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Chat emoji status has changed
@immutable
final class UpdateChatEmojiStatus extends Update {
  UpdateChatEmojiStatus({required this.chatId, this.emojiStatus});

  /// [chatId] Chat identifier
  final int chatId;

  /// [emojiStatus] The new chat emoji status; may be null
  final EmojiStatus? emojiStatus;

  static const String constructor = 'updateChatEmojiStatus';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'emoji_status': emojiStatus?.toJson(),
    '@type': constructor,
  };

  static UpdateChatEmojiStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatEmojiStatus(
      chatId: (json['chat_id'] as int?) ?? 0,
      emojiStatus: EmojiStatus.fromJson(tdMapFromJson(json['emoji_status'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of chat folders or a chat folder has changed
@immutable
final class UpdateChatFolders extends Update {
  UpdateChatFolders({
    required this.chatFolders,
    required this.mainChatListPosition,
    required this.areTagsEnabled,
  });

  /// [chatFolders] The new list of chat folders
  final List<ChatFolderInfo> chatFolders;

  /// [mainChatListPosition] Position of the main chat list among chat folders,
  /// 0-based
  final int mainChatListPosition;

  /// [areTagsEnabled] True, if folder tags are enabled
  final bool areTagsEnabled;

  static const String constructor = 'updateChatFolders';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_folders': chatFolders.map((item) => item.toJson()).toList(),
    'main_chat_list_position': mainChatListPosition,
    'are_tags_enabled': areTagsEnabled,
    '@type': constructor,
  };

  static UpdateChatFolders? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatFolders(
      chatFolders: List<ChatFolderInfo>.from(
        tdListFromJson(json['chat_folders'])
            .map((item) => ChatFolderInfo.fromJson(tdMapFromJson(item)))
            .whereType<ChatFolderInfo>(),
      ),
      mainChatListPosition: (json['main_chat_list_position'] as int?) ?? 0,
      areTagsEnabled: (json['are_tags_enabled'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A chat content was allowed or restricted for saving
@immutable
final class UpdateChatHasProtectedContent extends Update {
  UpdateChatHasProtectedContent({
    required this.chatId,
    required this.hasProtectedContent,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [hasProtectedContent] New value of has_protected_content
  final bool hasProtectedContent;

  static const String constructor = 'updateChatHasProtectedContent';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'has_protected_content': hasProtectedContent,
    '@type': constructor,
  };

  static UpdateChatHasProtectedContent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatHasProtectedContent(
      chatId: (json['chat_id'] as int?) ?? 0,
      hasProtectedContent: (json['has_protected_content'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A chat's has_scheduled_messages field has changed
@immutable
final class UpdateChatHasScheduledMessages extends Update {
  UpdateChatHasScheduledMessages({
    required this.chatId,
    required this.hasScheduledMessages,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [hasScheduledMessages] New value of has_scheduled_messages
  final bool hasScheduledMessages;

  static const String constructor = 'updateChatHasScheduledMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'has_scheduled_messages': hasScheduledMessages,
    '@type': constructor,
  };

  static UpdateChatHasScheduledMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatHasScheduledMessages(
      chatId: (json['chat_id'] as int?) ?? 0,
      hasScheduledMessages: (json['has_scheduled_messages'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A chat was marked as unread or was read
@immutable
final class UpdateChatIsMarkedAsUnread extends Update {
  UpdateChatIsMarkedAsUnread({
    required this.chatId,
    required this.isMarkedAsUnread,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [isMarkedAsUnread] New value of is_marked_as_unread
  final bool isMarkedAsUnread;

  static const String constructor = 'updateChatIsMarkedAsUnread';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'is_marked_as_unread': isMarkedAsUnread,
    '@type': constructor,
  };

  static UpdateChatIsMarkedAsUnread? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatIsMarkedAsUnread(
      chatId: (json['chat_id'] as int?) ?? 0,
      isMarkedAsUnread: (json['is_marked_as_unread'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Translation of chat messages was enabled or disabled
@immutable
final class UpdateChatIsTranslatable extends Update {
  UpdateChatIsTranslatable({
    required this.chatId,
    required this.isTranslatable,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [isTranslatable] New value of is_translatable
  final bool isTranslatable;

  static const String constructor = 'updateChatIsTranslatable';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'is_translatable': isTranslatable,
    '@type': constructor,
  };

  static UpdateChatIsTranslatable? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatIsTranslatable(
      chatId: (json['chat_id'] as int?) ?? 0,
      isTranslatable: (json['is_translatable'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The last message of a chat was changed
@immutable
final class UpdateChatLastMessage extends Update {
  UpdateChatLastMessage({
    required this.chatId,
    this.lastMessage,
    required this.positions,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [lastMessage] The new last message in the chat; may be null if the last
  /// message became unknown. While the last message is unknown, new messages
  /// can be added to the chat without corresponding updateNewMessage update
  final Message? lastMessage;

  /// [positions] The new chat positions in the chat lists
  final List<ChatPosition> positions;

  static const String constructor = 'updateChatLastMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'last_message': lastMessage?.toJson(),
    'positions': positions.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static UpdateChatLastMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatLastMessage(
      chatId: (json['chat_id'] as int?) ?? 0,
      lastMessage: Message.fromJson(tdMapFromJson(json['last_message'])),
      positions: List<ChatPosition>.from(
        tdListFromJson(json['positions'])
            .map((item) => ChatPosition.fromJson(tdMapFromJson(item)))
            .whereType<ChatPosition>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// User rights changed in a chat; for bots only
@immutable
final class UpdateChatMember extends Update {
  UpdateChatMember({
    required this.chatId,
    required this.actorUserId,
    required this.date,
    this.inviteLink,
    required this.viaJoinRequest,
    required this.viaChatFolderInviteLink,
    this.oldChatMember,
    this.newChatMember,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [actorUserId] Identifier of the user, changing the rights
  final int actorUserId;

  /// [date] Point in time (Unix timestamp) when the user rights were changed
  final int date;

  /// [inviteLink] If user has joined the chat using an invite link, the invite
  /// link; may be null
  final ChatInviteLink? inviteLink;

  /// [viaJoinRequest] True, if the user has joined the chat after sending a
  /// join request and being approved by an administrator
  final bool viaJoinRequest;

  /// [viaChatFolderInviteLink] True, if the user has joined the chat using an
  /// invite link for a chat folder
  final bool viaChatFolderInviteLink;

  /// [oldChatMember] Previous chat member
  final ChatMember? oldChatMember;

  /// [newChatMember] New chat member
  final ChatMember? newChatMember;

  static const String constructor = 'updateChatMember';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'actor_user_id': actorUserId,
    'date': date,
    'invite_link': inviteLink?.toJson(),
    'via_join_request': viaJoinRequest,
    'via_chat_folder_invite_link': viaChatFolderInviteLink,
    'old_chat_member': oldChatMember?.toJson(),
    'new_chat_member': newChatMember?.toJson(),
    '@type': constructor,
  };

  static UpdateChatMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatMember(
      chatId: (json['chat_id'] as int?) ?? 0,
      actorUserId: (json['actor_user_id'] as int?) ?? 0,
      date: (json['date'] as int?) ?? 0,
      inviteLink: ChatInviteLink.fromJson(tdMapFromJson(json['invite_link'])),
      viaJoinRequest: (json['via_join_request'] as bool?) ?? false,
      viaChatFolderInviteLink:
          (json['via_chat_folder_invite_link'] as bool?) ?? false,
      oldChatMember: ChatMember.fromJson(
        tdMapFromJson(json['old_chat_member']),
      ),
      newChatMember: ChatMember.fromJson(
        tdMapFromJson(json['new_chat_member']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message auto-delete or self-destruct timer setting for a chat was
/// changed
@immutable
final class UpdateChatMessageAutoDeleteTime extends Update {
  UpdateChatMessageAutoDeleteTime({
    required this.chatId,
    required this.messageAutoDeleteTime,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageAutoDeleteTime] New value of message_auto_delete_time
  final int messageAutoDeleteTime;

  static const String constructor = 'updateChatMessageAutoDeleteTime';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_auto_delete_time': messageAutoDeleteTime,
    '@type': constructor,
  };

  static UpdateChatMessageAutoDeleteTime? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatMessageAutoDeleteTime(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageAutoDeleteTime: (json['message_auto_delete_time'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message sender that is selected to send messages in a chat has changed
@immutable
final class UpdateChatMessageSender extends Update {
  UpdateChatMessageSender({required this.chatId, this.messageSenderId});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageSenderId] New value of message_sender_id; may be null if the user
  /// can't change message sender
  final MessageSender? messageSenderId;

  static const String constructor = 'updateChatMessageSender';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_sender_id': messageSenderId?.toJson(),
    '@type': constructor,
  };

  static UpdateChatMessageSender? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatMessageSender(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageSenderId: MessageSender.fromJson(
        tdMapFromJson(json['message_sender_id']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Notification settings for a chat were changed
@immutable
final class UpdateChatNotificationSettings extends Update {
  UpdateChatNotificationSettings({
    required this.chatId,
    this.notificationSettings,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [notificationSettings] The new notification settings
  final ChatNotificationSettings? notificationSettings;

  static const String constructor = 'updateChatNotificationSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'notification_settings': notificationSettings?.toJson(),
    '@type': constructor,
  };

  static UpdateChatNotificationSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatNotificationSettings(
      chatId: (json['chat_id'] as int?) ?? 0,
      notificationSettings: ChatNotificationSettings.fromJson(
        tdMapFromJson(json['notification_settings']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The number of online group members has changed. This update with non-zero
/// number of online group members is sent only for currently opened chats.
/// There is no guarantee that it is sent just after the number of online
/// users has changed
@immutable
final class UpdateChatOnlineMemberCount extends Update {
  UpdateChatOnlineMemberCount({
    required this.chatId,
    required this.onlineMemberCount,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [onlineMemberCount] New number of online members in the chat, or 0 if
  /// unknown
  final int onlineMemberCount;

  static const String constructor = 'updateChatOnlineMemberCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'online_member_count': onlineMemberCount,
    '@type': constructor,
  };

  static UpdateChatOnlineMemberCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatOnlineMemberCount(
      chatId: (json['chat_id'] as int?) ?? 0,
      onlineMemberCount: (json['online_member_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat pending join requests were changed
@immutable
final class UpdateChatPendingJoinRequests extends Update {
  UpdateChatPendingJoinRequests({
    required this.chatId,
    this.pendingJoinRequests,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [pendingJoinRequests] The new data about pending join requests; may be
  /// null
  final ChatJoinRequestsInfo? pendingJoinRequests;

  static const String constructor = 'updateChatPendingJoinRequests';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'pending_join_requests': pendingJoinRequests?.toJson(),
    '@type': constructor,
  };

  static UpdateChatPendingJoinRequests? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatPendingJoinRequests(
      chatId: (json['chat_id'] as int?) ?? 0,
      pendingJoinRequests: ChatJoinRequestsInfo.fromJson(
        tdMapFromJson(json['pending_join_requests']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Chat permissions were changed
@immutable
final class UpdateChatPermissions extends Update {
  UpdateChatPermissions({required this.chatId, this.permissions});

  /// [chatId] Chat identifier
  final int chatId;

  /// [permissions] The new chat permissions
  final ChatPermissions? permissions;

  static const String constructor = 'updateChatPermissions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'permissions': permissions?.toJson(),
    '@type': constructor,
  };

  static UpdateChatPermissions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatPermissions(
      chatId: (json['chat_id'] as int?) ?? 0,
      permissions: ChatPermissions.fromJson(tdMapFromJson(json['permissions'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A chat photo was changed
@immutable
final class UpdateChatPhoto extends Update {
  UpdateChatPhoto({required this.chatId, this.photo});

  /// [chatId] Chat identifier
  final int chatId;

  /// [photo] The new chat photo; may be null
  final ChatPhotoInfo? photo;

  static const String constructor = 'updateChatPhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'photo': photo?.toJson(),
    '@type': constructor,
  };

  static UpdateChatPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatPhoto(
      chatId: (json['chat_id'] as int?) ?? 0,
      photo: ChatPhotoInfo.fromJson(tdMapFromJson(json['photo'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The position of a chat in a chat list has changed. An
/// updateChatLastMessage or updateChatDraftMessage update might be sent
/// instead of the update
@immutable
final class UpdateChatPosition extends Update {
  UpdateChatPosition({required this.chatId, this.position});

  /// [chatId] Chat identifier
  final int chatId;

  /// [position] New chat position. If new order is 0, then the chat needs to be
  /// removed from the list
  final ChatPosition? position;

  static const String constructor = 'updateChatPosition';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'position': position?.toJson(),
    '@type': constructor,
  };

  static UpdateChatPosition? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatPosition(
      chatId: (json['chat_id'] as int?) ?? 0,
      position: ChatPosition.fromJson(tdMapFromJson(json['position'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Incoming messages were read or the number of unread messages has been
/// changed
@immutable
final class UpdateChatReadInbox extends Update {
  UpdateChatReadInbox({
    required this.chatId,
    required this.lastReadInboxMessageId,
    required this.unreadCount,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [lastReadInboxMessageId] Identifier of the last read incoming message
  final int lastReadInboxMessageId;

  /// [unreadCount] The number of unread messages left in the chat
  final int unreadCount;

  static const String constructor = 'updateChatReadInbox';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'last_read_inbox_message_id': lastReadInboxMessageId,
    'unread_count': unreadCount,
    '@type': constructor,
  };

  static UpdateChatReadInbox? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatReadInbox(
      chatId: (json['chat_id'] as int?) ?? 0,
      lastReadInboxMessageId: (json['last_read_inbox_message_id'] as int?) ?? 0,
      unreadCount: (json['unread_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Outgoing messages were read
@immutable
final class UpdateChatReadOutbox extends Update {
  UpdateChatReadOutbox({
    required this.chatId,
    required this.lastReadOutboxMessageId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [lastReadOutboxMessageId] Identifier of last read outgoing message
  final int lastReadOutboxMessageId;

  static const String constructor = 'updateChatReadOutbox';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'last_read_outbox_message_id': lastReadOutboxMessageId,
    '@type': constructor,
  };

  static UpdateChatReadOutbox? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatReadOutbox(
      chatId: (json['chat_id'] as int?) ?? 0,
      lastReadOutboxMessageId:
          (json['last_read_outbox_message_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A chat was removed from a chat list
@immutable
final class UpdateChatRemovedFromList extends Update {
  UpdateChatRemovedFromList({required this.chatId, this.chatList});

  /// [chatId] Chat identifier
  final int chatId;

  /// [chatList] The chat list from which the chat was removed
  final ChatList? chatList;

  static const String constructor = 'updateChatRemovedFromList';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'chat_list': chatList?.toJson(),
    '@type': constructor,
  };

  static UpdateChatRemovedFromList? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatRemovedFromList(
      chatId: (json['chat_id'] as int?) ?? 0,
      chatList: ChatList.fromJson(tdMapFromJson(json['chat_list'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat reply markup was changed
@immutable
final class UpdateChatReplyMarkup extends Update {
  UpdateChatReplyMarkup({required this.chatId, this.replyMarkupMessage});

  /// [chatId] Chat identifier
  final int chatId;

  /// [replyMarkupMessage] The message from which the reply markup must be used;
  /// may be null if there is no default reply markup in the chat
  final Message? replyMarkupMessage;

  static const String constructor = 'updateChatReplyMarkup';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'reply_markup_message': replyMarkupMessage?.toJson(),
    '@type': constructor,
  };

  static UpdateChatReplyMarkup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatReplyMarkup(
      chatId: (json['chat_id'] as int?) ?? 0,
      replyMarkupMessage: Message.fromJson(
        tdMapFromJson(json['reply_markup_message']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The revenue earned from sponsored messages in a chat has changed. If chat
/// revenue screen is opened, then getChatRevenueTransactions may be called to
/// fetch new transactions
@immutable
final class UpdateChatRevenueAmount extends Update {
  UpdateChatRevenueAmount({required this.chatId, this.revenueAmount});

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [revenueAmount] New amount of earned revenue
  final ChatRevenueAmount? revenueAmount;

  static const String constructor = 'updateChatRevenueAmount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'revenue_amount': revenueAmount?.toJson(),
    '@type': constructor,
  };

  static UpdateChatRevenueAmount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatRevenueAmount(
      chatId: (json['chat_id'] as int?) ?? 0,
      revenueAmount: ChatRevenueAmount.fromJson(
        tdMapFromJson(json['revenue_amount']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat theme was changed
@immutable
final class UpdateChatTheme extends Update {
  UpdateChatTheme({required this.chatId, this.theme});

  /// [chatId] Chat identifier
  final int chatId;

  /// [theme] The new theme of the chat; may be null if theme was reset to
  /// default
  final ChatTheme? theme;

  static const String constructor = 'updateChatTheme';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'theme': theme?.toJson(),
    '@type': constructor,
  };

  static UpdateChatTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatTheme(
      chatId: (json['chat_id'] as int?) ?? 0,
      theme: ChatTheme.fromJson(tdMapFromJson(json['theme'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The title of a chat was changed
@immutable
final class UpdateChatTitle extends Update {
  UpdateChatTitle({required this.chatId, required this.title});

  /// [chatId] Chat identifier
  final int chatId;

  /// [title] The new chat title
  final String title;

  static const String constructor = 'updateChatTitle';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'title': title,
    '@type': constructor,
  };

  static UpdateChatTitle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatTitle(
      chatId: (json['chat_id'] as int?) ?? 0,
      title: (json['title'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat unread_mention_count has changed
@immutable
final class UpdateChatUnreadMentionCount extends Update {
  UpdateChatUnreadMentionCount({
    required this.chatId,
    required this.unreadMentionCount,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [unreadMentionCount] The number of unread mention messages left in the
  /// chat
  final int unreadMentionCount;

  static const String constructor = 'updateChatUnreadMentionCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'unread_mention_count': unreadMentionCount,
    '@type': constructor,
  };

  static UpdateChatUnreadMentionCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatUnreadMentionCount(
      chatId: (json['chat_id'] as int?) ?? 0,
      unreadMentionCount: (json['unread_mention_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat unread_poll_vote_count has changed
@immutable
final class UpdateChatUnreadPollVoteCount extends Update {
  UpdateChatUnreadPollVoteCount({
    required this.chatId,
    required this.unreadPollVoteCount,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [unreadPollVoteCount] The number of messages with unread poll votes left
  /// in the chat
  final int unreadPollVoteCount;

  static const String constructor = 'updateChatUnreadPollVoteCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'unread_poll_vote_count': unreadPollVoteCount,
    '@type': constructor,
  };

  static UpdateChatUnreadPollVoteCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatUnreadPollVoteCount(
      chatId: (json['chat_id'] as int?) ?? 0,
      unreadPollVoteCount: (json['unread_poll_vote_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat unread_reaction_count has changed
@immutable
final class UpdateChatUnreadReactionCount extends Update {
  UpdateChatUnreadReactionCount({
    required this.chatId,
    required this.unreadReactionCount,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [unreadReactionCount] The number of messages with unread reactions left in
  /// the chat
  final int unreadReactionCount;

  static const String constructor = 'updateChatUnreadReactionCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'unread_reaction_count': unreadReactionCount,
    '@type': constructor,
  };

  static UpdateChatUnreadReactionCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatUnreadReactionCount(
      chatId: (json['chat_id'] as int?) ?? 0,
      unreadReactionCount: (json['unread_reaction_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A chat video chat state has changed
@immutable
final class UpdateChatVideoChat extends Update {
  UpdateChatVideoChat({required this.chatId, this.videoChat});

  /// [chatId] Chat identifier
  final int chatId;

  /// [videoChat] New value of video_chat
  final VideoChat? videoChat;

  static const String constructor = 'updateChatVideoChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'video_chat': videoChat?.toJson(),
    '@type': constructor,
  };

  static UpdateChatVideoChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatVideoChat(
      chatId: (json['chat_id'] as int?) ?? 0,
      videoChat: VideoChat.fromJson(tdMapFromJson(json['video_chat'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A chat default appearance has changed
@immutable
final class UpdateChatViewAsTopics extends Update {
  UpdateChatViewAsTopics({required this.chatId, required this.viewAsTopics});

  /// [chatId] Chat identifier
  final int chatId;

  /// [viewAsTopics] New value of view_as_topics
  final bool viewAsTopics;

  static const String constructor = 'updateChatViewAsTopics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'view_as_topics': viewAsTopics,
    '@type': constructor,
  };

  static UpdateChatViewAsTopics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatViewAsTopics(
      chatId: (json['chat_id'] as int?) ?? 0,
      viewAsTopics: (json['view_as_topics'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The connection state has changed. This update must be used only to show a
/// human-readable description of the connection state
@immutable
final class UpdateConnectionState extends Update {
  UpdateConnectionState({this.state});

  /// [state] The new connection state
  final ConnectionState? state;

  static const String constructor = 'updateConnectionState';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'state': state?.toJson(),
    '@type': constructor,
  };

  static UpdateConnectionState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateConnectionState(
      state: ConnectionState.fromJson(tdMapFromJson(json['state'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of contacts that had birthdays recently or will have birthday
/// soon has changed
@immutable
final class UpdateContactCloseBirthdays extends Update {
  UpdateContactCloseBirthdays({required this.closeBirthdayUsers});

  /// [closeBirthdayUsers] List of contact users with close birthday
  final List<CloseBirthdayUser> closeBirthdayUsers;

  static const String constructor = 'updateContactCloseBirthdays';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'close_birthday_users': closeBirthdayUsers
        .map((item) => item.toJson())
        .toList(),
    '@type': constructor,
  };

  static UpdateContactCloseBirthdays? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateContactCloseBirthdays(
      closeBirthdayUsers: List<CloseBirthdayUser>.from(
        tdListFromJson(json['close_birthday_users'])
            .map((item) => CloseBirthdayUser.fromJson(tdMapFromJson(item)))
            .whereType<CloseBirthdayUser>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The default background has changed
@immutable
final class UpdateDefaultBackground extends Update {
  UpdateDefaultBackground({required this.forDarkTheme, this.background});

  /// [forDarkTheme] True, if default background for dark theme has changed
  final bool forDarkTheme;

  /// [background] The new default background; may be null
  final Background? background;

  static const String constructor = 'updateDefaultBackground';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'for_dark_theme': forDarkTheme,
    'background': background?.toJson(),
    '@type': constructor,
  };

  static UpdateDefaultBackground? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateDefaultBackground(
      forDarkTheme: (json['for_dark_theme'] as bool?) ?? false,
      background: Background.fromJson(tdMapFromJson(json['background'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The type of default paid reaction has changed
@immutable
final class UpdateDefaultPaidReactionType extends Update {
  UpdateDefaultPaidReactionType({this.type});

  /// [type] The new type of the default paid reaction
  final PaidReactionType? type;

  static const String constructor = 'updateDefaultPaidReactionType';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'type': type?.toJson(),
    '@type': constructor,
  };

  static UpdateDefaultPaidReactionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateDefaultPaidReactionType(
      type: PaidReactionType.fromJson(tdMapFromJson(json['type'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The type of default reaction has changed
@immutable
final class UpdateDefaultReactionType extends Update {
  UpdateDefaultReactionType({this.reactionType});

  /// [reactionType] The new type of the default reaction
  final ReactionType? reactionType;

  static const String constructor = 'updateDefaultReactionType';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'reaction_type': reactionType?.toJson(),
    '@type': constructor,
  };

  static UpdateDefaultReactionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateDefaultReactionType(
      reactionType: ReactionType.fromJson(tdMapFromJson(json['reaction_type'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Some messages were deleted
@immutable
final class UpdateDeleteMessages extends Update {
  UpdateDeleteMessages({
    required this.chatId,
    required this.messageIds,
    required this.isPermanent,
    required this.fromCache,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageIds] Identifiers of the deleted messages
  final List<int> messageIds;

  /// [isPermanent] True, if the messages are permanently deleted by a user (as
  /// opposed to just becoming inaccessible)
  final bool isPermanent;

  /// [fromCache] True, if the messages are deleted only from the cache and can
  /// possibly be retrieved again in the future
  final bool fromCache;

  static const String constructor = 'updateDeleteMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_ids': messageIds.map((item) => item).toList(),
    'is_permanent': isPermanent,
    'from_cache': fromCache,
    '@type': constructor,
  };

  static UpdateDeleteMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateDeleteMessages(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageIds: List<int>.from(
        tdListFromJson(
          json['message_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      isPermanent: (json['is_permanent'] as bool?) ?? false,
      fromCache: (json['from_cache'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of supported dice emojis has changed
@immutable
final class UpdateDiceEmojis extends Update {
  UpdateDiceEmojis({required this.emojis});

  /// [emojis] The new list of supported dice emojis
  final List<String> emojis;

  static const String constructor = 'updateDiceEmojis';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'emojis': emojis.map((item) => item).toList(),
    '@type': constructor,
  };

  static UpdateDiceEmojis? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateDiceEmojis(
      emojis: List<String>.from(
        tdListFromJson(
          json['emojis'],
        ).map((item) => (item as dynamic)?.toString() ?? ''),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Basic information about a topic in a channel direct messages chat
/// administered by the current user has changed. This update is guaranteed to
/// come before the topic identifier is returned to the application
@immutable
final class UpdateDirectMessagesChatTopic extends Update {
  UpdateDirectMessagesChatTopic({this.topic});

  /// [topic] New data about the topic
  final DirectMessagesChatTopic? topic;

  static const String constructor = 'updateDirectMessagesChatTopic';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'topic': topic?.toJson(),
    '@type': constructor,
  };

  static UpdateDirectMessagesChatTopic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateDirectMessagesChatTopic(
      topic: DirectMessagesChatTopic.fromJson(tdMapFromJson(json['topic'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of available emoji chat themes has changed
@immutable
final class UpdateEmojiChatThemes extends Update {
  UpdateEmojiChatThemes({required this.chatThemes});

  /// [chatThemes] The new list of emoji chat themes
  final List<EmojiChatTheme> chatThemes;

  static const String constructor = 'updateEmojiChatThemes';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_themes': chatThemes.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static UpdateEmojiChatThemes? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateEmojiChatThemes(
      chatThemes: List<EmojiChatTheme>.from(
        tdListFromJson(json['chat_themes'])
            .map((item) => EmojiChatTheme.fromJson(tdMapFromJson(item)))
            .whereType<EmojiChatTheme>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of favorite stickers was updated
@immutable
final class UpdateFavoriteStickers extends Update {
  UpdateFavoriteStickers({required this.stickerIds});

  /// [stickerIds] The new list of file identifiers of favorite stickers
  final List<int> stickerIds;

  static const String constructor = 'updateFavoriteStickers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sticker_ids': stickerIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static UpdateFavoriteStickers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFavoriteStickers(
      stickerIds: List<int>.from(
        tdListFromJson(
          json['sticker_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Information about a file was updated
@immutable
final class UpdateFile extends Update {
  UpdateFile({this.file});

  /// [file] New data about the file
  final File? file;

  static const String constructor = 'updateFile';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'file': file?.toJson(),
    '@type': constructor,
  };

  static UpdateFile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFile(file: File.fromJson(tdMapFromJson(json['file'])));
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A file was added to the file download list. This update is sent only after
/// file download list is loaded for the first time
@immutable
final class UpdateFileAddedToDownloads extends Update {
  UpdateFileAddedToDownloads({this.fileDownload, this.counts});

  /// [fileDownload] The added file download
  final FileDownload? fileDownload;

  /// [counts] New number of being downloaded and recently downloaded files
  /// found
  final DownloadedFileCounts? counts;

  static const String constructor = 'updateFileAddedToDownloads';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'file_download': fileDownload?.toJson(),
    'counts': counts?.toJson(),
    '@type': constructor,
  };

  static UpdateFileAddedToDownloads? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFileAddedToDownloads(
      fileDownload: FileDownload.fromJson(tdMapFromJson(json['file_download'])),
      counts: DownloadedFileCounts.fromJson(tdMapFromJson(json['counts'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A file download was changed. This update is sent only after file download
/// list is loaded for the first time
@immutable
final class UpdateFileDownload extends Update {
  UpdateFileDownload({
    required this.fileId,
    required this.completeDate,
    required this.isPaused,
    this.counts,
  });

  /// [fileId] File identifier
  final int fileId;

  /// [completeDate] Point in time (Unix timestamp) when the file downloading
  /// was completed; 0 if the file downloading isn't completed
  final int completeDate;

  /// [isPaused] True, if downloading of the file is paused
  final bool isPaused;

  /// [counts] New number of being downloaded and recently downloaded files
  /// found
  final DownloadedFileCounts? counts;

  static const String constructor = 'updateFileDownload';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'file_id': fileId,
    'complete_date': completeDate,
    'is_paused': isPaused,
    'counts': counts?.toJson(),
    '@type': constructor,
  };

  static UpdateFileDownload? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFileDownload(
      fileId: (json['file_id'] as int?) ?? 0,
      completeDate: (json['complete_date'] as int?) ?? 0,
      isPaused: (json['is_paused'] as bool?) ?? false,
      counts: DownloadedFileCounts.fromJson(tdMapFromJson(json['counts'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The state of the file download list has changed
@immutable
final class UpdateFileDownloads extends Update {
  UpdateFileDownloads({
    required this.totalSize,
    required this.totalCount,
    required this.downloadedSize,
  });

  /// [totalSize] Total size of files in the file download list, in bytes
  final int totalSize;

  /// [totalCount] Total number of files in the file download list
  final int totalCount;

  /// [downloadedSize] Total downloaded size of files in the file download list,
  /// in bytes
  final int downloadedSize;

  static const String constructor = 'updateFileDownloads';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_size': totalSize,
    'total_count': totalCount,
    'downloaded_size': downloadedSize,
    '@type': constructor,
  };

  static UpdateFileDownloads? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFileDownloads(
      totalSize: (json['total_size'] as int?) ?? 0,
      totalCount: (json['total_count'] as int?) ?? 0,
      downloadedSize: (json['downloaded_size'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file generation process needs to be started by the application. Use
/// setFileGenerationProgress and finishFileGeneration to generate the file
@immutable
final class UpdateFileGenerationStart extends Update {
  UpdateFileGenerationStart({
    required this.generationId,
    required this.originalPath,
    required this.destinationPath,
    required this.conversion,
  });

  /// [generationId] Unique identifier for the generation process
  final int generationId;

  /// [originalPath] The original path specified by the application in
  /// inputFileGenerated
  final String originalPath;

  /// [destinationPath] The path to a file that must be created and where the
  /// new file must be generated by the application. If the application has no
  /// access to the path, it can use writeGeneratedFilePart to generate the file
  final String destinationPath;

  /// [conversion] If the conversion is "#url#" than original_path contains an
  /// HTTP/HTTPS URL of a file that must be downloaded by the application.
  /// Otherwise, this is the conversion specified by the application in
  /// inputFileGenerated
  final String conversion;

  static const String constructor = 'updateFileGenerationStart';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'generation_id': generationId.toString(),
    'original_path': originalPath,
    'destination_path': destinationPath,
    'conversion': conversion,
    '@type': constructor,
  };

  static UpdateFileGenerationStart? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFileGenerationStart(
      generationId:
          int.tryParse((json['generation_id'] as dynamic)?.toString() ?? '') ??
          0,
      originalPath: (json['original_path'] as String?) ?? '',
      destinationPath: (json['destination_path'] as String?) ?? '',
      conversion: (json['conversion'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// File generation is no longer needed
@immutable
final class UpdateFileGenerationStop extends Update {
  UpdateFileGenerationStop({required this.generationId});

  /// [generationId] Unique identifier for the generation process
  final int generationId;

  static const String constructor = 'updateFileGenerationStop';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'generation_id': generationId.toString(),
    '@type': constructor,
  };

  static UpdateFileGenerationStop? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFileGenerationStop(
      generationId:
          int.tryParse((json['generation_id'] as dynamic)?.toString() ?? '') ??
          0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A file was removed from the file download list. This update is sent only
/// after file download list is loaded for the first time
@immutable
final class UpdateFileRemovedFromDownloads extends Update {
  UpdateFileRemovedFromDownloads({required this.fileId, this.counts});

  /// [fileId] File identifier
  final int fileId;

  /// [counts] New number of being downloaded and recently downloaded files
  /// found
  final DownloadedFileCounts? counts;

  static const String constructor = 'updateFileRemovedFromDownloads';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'file_id': fileId,
    'counts': counts?.toJson(),
    '@type': constructor,
  };

  static UpdateFileRemovedFromDownloads? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFileRemovedFromDownloads(
      fileId: (json['file_id'] as int?) ?? 0,
      counts: DownloadedFileCounts.fromJson(tdMapFromJson(json['counts'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Information about a topic in a forum chat was changed
@immutable
final class UpdateForumTopic extends Update {
  UpdateForumTopic({
    required this.chatId,
    required this.forumTopicId,
    required this.isPinned,
    required this.lastReadInboxMessageId,
    required this.lastReadOutboxMessageId,
    required this.unreadMentionCount,
    required this.unreadReactionCount,
    required this.unreadPollVoteCount,
    this.notificationSettings,
    this.draftMessage,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [forumTopicId] Forum topic identifier of the topic
  final int forumTopicId;

  /// [isPinned] True, if the topic is pinned in the topic list
  final bool isPinned;

  /// [lastReadInboxMessageId] Identifier of the last read incoming message
  final int lastReadInboxMessageId;

  /// [lastReadOutboxMessageId] Identifier of the last read outgoing message
  final int lastReadOutboxMessageId;

  /// [unreadMentionCount] Number of unread messages with a mention/reply in the
  /// topic
  final int unreadMentionCount;

  /// [unreadReactionCount] Number of messages with unread reactions in the
  /// topic
  final int unreadReactionCount;

  /// [unreadPollVoteCount] Number of messages with unread poll votes in the
  /// topic
  final int unreadPollVoteCount;

  /// [notificationSettings] Notification settings for the topic
  final ChatNotificationSettings? notificationSettings;

  /// [draftMessage] A draft of a message in the topic; may be null if none
  final DraftMessage? draftMessage;

  static const String constructor = 'updateForumTopic';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'forum_topic_id': forumTopicId,
    'is_pinned': isPinned,
    'last_read_inbox_message_id': lastReadInboxMessageId,
    'last_read_outbox_message_id': lastReadOutboxMessageId,
    'unread_mention_count': unreadMentionCount,
    'unread_reaction_count': unreadReactionCount,
    'unread_poll_vote_count': unreadPollVoteCount,
    'notification_settings': notificationSettings?.toJson(),
    'draft_message': draftMessage?.toJson(),
    '@type': constructor,
  };

  static UpdateForumTopic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateForumTopic(
      chatId: (json['chat_id'] as int?) ?? 0,
      forumTopicId: (json['forum_topic_id'] as int?) ?? 0,
      isPinned: (json['is_pinned'] as bool?) ?? false,
      lastReadInboxMessageId: (json['last_read_inbox_message_id'] as int?) ?? 0,
      lastReadOutboxMessageId:
          (json['last_read_outbox_message_id'] as int?) ?? 0,
      unreadMentionCount: (json['unread_mention_count'] as int?) ?? 0,
      unreadReactionCount: (json['unread_reaction_count'] as int?) ?? 0,
      unreadPollVoteCount: (json['unread_poll_vote_count'] as int?) ?? 0,
      notificationSettings: ChatNotificationSettings.fromJson(
        tdMapFromJson(json['notification_settings']),
      ),
      draftMessage: DraftMessage.fromJson(tdMapFromJson(json['draft_message'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Basic information about a topic in a forum chat was changed
@immutable
final class UpdateForumTopicInfo extends Update {
  UpdateForumTopicInfo({this.info});

  /// [info] New information about the topic
  final ForumTopicInfo? info;

  static const String constructor = 'updateForumTopicInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'info': info?.toJson(),
    '@type': constructor,
  };

  static UpdateForumTopicInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateForumTopicInfo(
      info: ForumTopicInfo.fromJson(tdMapFromJson(json['info'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The freeze state of the current user's account has changed
@immutable
final class UpdateFreezeState extends Update {
  UpdateFreezeState({
    required this.isFrozen,
    required this.freezingDate,
    required this.deletionDate,
    required this.appealLink,
  });

  /// [isFrozen] True, if the account is frozen
  final bool isFrozen;

  /// [freezingDate] Point in time (Unix timestamp) when the account was frozen;
  /// 0 if the account isn't frozen
  final int freezingDate;

  /// [deletionDate] Point in time (Unix timestamp) when the account will be
  /// deleted and can't be unfrozen; 0 if the account isn't frozen
  final int deletionDate;

  /// [appealLink] The link to open to send an appeal to unfreeze the account
  final String appealLink;

  static const String constructor = 'updateFreezeState';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_frozen': isFrozen,
    'freezing_date': freezingDate,
    'deletion_date': deletionDate,
    'appeal_link': appealLink,
    '@type': constructor,
  };

  static UpdateFreezeState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFreezeState(
      isFrozen: (json['is_frozen'] as bool?) ?? false,
      freezingDate: (json['freezing_date'] as int?) ?? 0,
      deletionDate: (json['deletion_date'] as int?) ?? 0,
      appealLink: (json['appeal_link'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// State of a gift auction was updated
@immutable
final class UpdateGiftAuctionState extends Update {
  UpdateGiftAuctionState({this.state});

  /// [state] New state of the auction
  final GiftAuctionState? state;

  static const String constructor = 'updateGiftAuctionState';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'state': state?.toJson(),
    '@type': constructor,
  };

  static UpdateGiftAuctionState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateGiftAuctionState(
      state: GiftAuctionState.fromJson(tdMapFromJson(json['state'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Information about a group call was updated
@immutable
final class UpdateGroupCall extends Update {
  UpdateGroupCall({this.groupCall});

  /// [groupCall] New data about the group call
  final GroupCall? groupCall;

  static const String constructor = 'updateGroupCall';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call': groupCall?.toJson(),
    '@type': constructor,
  };

  static UpdateGroupCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateGroupCall(
      groupCall: GroupCall.fromJson(tdMapFromJson(json['group_call'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The levels of live story group call messages have changed
@immutable
final class UpdateGroupCallMessageLevels extends Update {
  UpdateGroupCallMessageLevels({required this.levels});

  /// [levels] New description of the levels in decreasing order of
  /// groupCallMessageLevel.min_star_count
  final List<GroupCallMessageLevel> levels;

  static const String constructor = 'updateGroupCallMessageLevels';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'levels': levels.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static UpdateGroupCallMessageLevels? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateGroupCallMessageLevels(
      levels: List<GroupCallMessageLevel>.from(
        tdListFromJson(json['levels'])
            .map((item) => GroupCallMessageLevel.fromJson(tdMapFromJson(item)))
            .whereType<GroupCallMessageLevel>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A group call message failed to send
@immutable
final class UpdateGroupCallMessageSendFailed extends Update {
  UpdateGroupCallMessageSendFailed({
    required this.groupCallId,
    required this.messageId,
    this.error,
  });

  /// [groupCallId] Identifier of the group call
  final int groupCallId;

  /// [messageId] Message identifier
  final int messageId;

  /// [error] The cause of the message sending failure
  final TdError? error;

  static const String constructor = 'updateGroupCallMessageSendFailed';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call_id': groupCallId,
    'message_id': messageId,
    'error': error?.toJson(),
    '@type': constructor,
  };

  static UpdateGroupCallMessageSendFailed? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return UpdateGroupCallMessageSendFailed(
      groupCallId: (json['group_call_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      error: TdError.fromJson(tdMapFromJson(json['error'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Some group call messages were deleted
@immutable
final class UpdateGroupCallMessagesDeleted extends Update {
  UpdateGroupCallMessagesDeleted({
    required this.groupCallId,
    required this.messageIds,
  });

  /// [groupCallId] Identifier of the group call
  final int groupCallId;

  /// [messageIds] Identifiers of the deleted messages
  final List<int> messageIds;

  static const String constructor = 'updateGroupCallMessagesDeleted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call_id': groupCallId,
    'message_ids': messageIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static UpdateGroupCallMessagesDeleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateGroupCallMessagesDeleted(
      groupCallId: (json['group_call_id'] as int?) ?? 0,
      messageIds: List<int>.from(
        tdListFromJson(
          json['message_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Information about a group call participant was changed. The updates are
/// sent only after the group call is received through getGroupCall and only
/// if the call is joined or being joined
@immutable
final class UpdateGroupCallParticipant extends Update {
  UpdateGroupCallParticipant({required this.groupCallId, this.participant});

  /// [groupCallId] Identifier of the group call
  final int groupCallId;

  /// [participant] New data about the participant
  final GroupCallParticipant? participant;

  static const String constructor = 'updateGroupCallParticipant';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call_id': groupCallId,
    'participant': participant?.toJson(),
    '@type': constructor,
  };

  static UpdateGroupCallParticipant? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateGroupCallParticipant(
      groupCallId: (json['group_call_id'] as int?) ?? 0,
      participant: GroupCallParticipant.fromJson(
        tdMapFromJson(json['participant']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of group call participants that can send and receive encrypted
/// call data has changed; for group calls not bound to a chat only
@immutable
final class UpdateGroupCallParticipants extends Update {
  UpdateGroupCallParticipants({
    required this.groupCallId,
    required this.participantUserIds,
  });

  /// [groupCallId] Identifier of the group call
  final int groupCallId;

  /// [participantUserIds] New list of group call participant user identifiers.
  /// The identifiers may be invalid or the corresponding users may be unknown.
  /// The participants must be shown in the list of group call participants even
  /// if there is no information about them
  final List<int> participantUserIds;

  static const String constructor = 'updateGroupCallParticipants';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call_id': groupCallId,
    'participant_user_ids': participantUserIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static UpdateGroupCallParticipants? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateGroupCallParticipants(
      groupCallId: (json['group_call_id'] as int?) ?? 0,
      participantUserIds: List<int>.from(
        tdListFromJson(
          json['participant_user_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The verification state of an encrypted group call has changed; for group
/// calls not bound to a chat only
@immutable
final class UpdateGroupCallVerificationState extends Update {
  UpdateGroupCallVerificationState({
    required this.groupCallId,
    required this.generation,
    required this.emojis,
  });

  /// [groupCallId] Identifier of the group call
  final int groupCallId;

  /// [generation] The call state generation to which the emoji corresponds. If
  /// generation is different for two users, then their emoji may be also
  /// different
  final int generation;

  /// [emojis] Group call state fingerprint represented as 4 emoji; may be empty
  /// if the state isn't verified yet
  final List<String> emojis;

  static const String constructor = 'updateGroupCallVerificationState';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call_id': groupCallId,
    'generation': generation,
    'emojis': emojis.map((item) => item).toList(),
    '@type': constructor,
  };

  static UpdateGroupCallVerificationState? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return UpdateGroupCallVerificationState(
      groupCallId: (json['group_call_id'] as int?) ?? 0,
      generation: (json['generation'] as int?) ?? 0,
      emojis: List<String>.from(
        tdListFromJson(
          json['emojis'],
        ).map((item) => (item as dynamic)?.toString() ?? ''),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes whether there are some pending notification updates. Can be used
/// to prevent application from killing, while there are some pending
/// notifications
@immutable
final class UpdateHavePendingNotifications extends Update {
  UpdateHavePendingNotifications({
    required this.haveDelayedNotifications,
    required this.haveUnreceivedNotifications,
  });

  /// [haveDelayedNotifications] True, if there are some delayed notification
  /// updates, which will be sent soon
  final bool haveDelayedNotifications;

  /// [haveUnreceivedNotifications] True, if there can be some yet unreceived
  /// notifications, which are being fetched from the server
  final bool haveUnreceivedNotifications;

  static const String constructor = 'updateHavePendingNotifications';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'have_delayed_notifications': haveDelayedNotifications,
    'have_unreceived_notifications': haveUnreceivedNotifications,
    '@type': constructor,
  };

  static UpdateHavePendingNotifications? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateHavePendingNotifications(
      haveDelayedNotifications:
          (json['have_delayed_notifications'] as bool?) ?? false,
      haveUnreceivedNotifications:
          (json['have_unreceived_notifications'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of installed sticker sets was updated
@immutable
final class UpdateInstalledStickerSets extends Update {
  UpdateInstalledStickerSets({this.stickerType, required this.stickerSetIds});

  /// [stickerType] Type of the affected stickers
  final StickerType? stickerType;

  /// [stickerSetIds] The new list of installed ordinary sticker sets
  final List<int> stickerSetIds;

  static const String constructor = 'updateInstalledStickerSets';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sticker_type': stickerType?.toJson(),
    'sticker_set_ids': stickerSetIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static UpdateInstalledStickerSets? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateInstalledStickerSets(
      stickerType: StickerType.fromJson(tdMapFromJson(json['sticker_type'])),
      stickerSetIds: List<int>.from(
        tdListFromJson(
          json['sticker_set_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Some language pack strings have been updated
@immutable
final class UpdateLanguagePackStrings extends Update {
  UpdateLanguagePackStrings({
    required this.localizationTarget,
    required this.languagePackId,
    required this.strings,
  });

  /// [localizationTarget] Localization target to which the language pack
  /// belongs
  final String localizationTarget;

  /// [languagePackId] Identifier of the updated language pack
  final String languagePackId;

  /// [strings] List of changed language pack strings; empty if all strings have
  /// changed
  final List<LanguagePackString> strings;

  static const String constructor = 'updateLanguagePackStrings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'localization_target': localizationTarget,
    'language_pack_id': languagePackId,
    'strings': strings.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static UpdateLanguagePackStrings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateLanguagePackStrings(
      localizationTarget: (json['localization_target'] as String?) ?? '',
      languagePackId: (json['language_pack_id'] as String?) ?? '',
      strings: List<LanguagePackString>.from(
        tdListFromJson(json['strings'])
            .map((item) => LanguagePackString.fromJson(tdMapFromJson(item)))
            .whereType<LanguagePackString>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of top donors in live story group call has changed
@immutable
final class UpdateLiveStoryTopDonors extends Update {
  UpdateLiveStoryTopDonors({required this.groupCallId, this.donors});

  /// [groupCallId] Identifier of the group call
  final int groupCallId;

  /// [donors] New list of live story donors
  final LiveStoryDonors? donors;

  static const String constructor = 'updateLiveStoryTopDonors';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call_id': groupCallId,
    'donors': donors?.toJson(),
    '@type': constructor,
  };

  static UpdateLiveStoryTopDonors? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateLiveStoryTopDonors(
      groupCallId: (json['group_call_id'] as int?) ?? 0,
      donors: LiveStoryDonors.fromJson(tdMapFromJson(json['donors'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A bot that can be managed by the current bot was created or updated; for
/// bots only
@immutable
final class UpdateManagedBot extends Update {
  UpdateManagedBot({required this.userId, required this.botUserId});

  /// [userId] Identifier of the user who created the bot
  final int userId;

  /// [botUserId] Identifier of the created managed bot
  final int botUserId;

  static const String constructor = 'updateManagedBot';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'bot_user_id': botUserId,
    '@type': constructor,
  };

  static UpdateManagedBot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateManagedBot(
      userId: (json['user_id'] as int?) ?? 0,
      botUserId: (json['bot_user_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Unread votes were added or removed from a poll message
@immutable
final class UpdateMessageContainsUnreadPollVotes extends Update {
  UpdateMessageContainsUnreadPollVotes({
    required this.chatId,
    required this.messageId,
    required this.containsUnreadPollVotes,
    required this.unreadPollVoteCount,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [containsUnreadPollVotes] True, if the message is a poll message with
  /// unread votes
  final bool containsUnreadPollVotes;

  /// [unreadPollVoteCount] The new number of messages with unread poll votes in
  /// the chat
  final int unreadPollVoteCount;

  static const String constructor = 'updateMessageContainsUnreadPollVotes';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    'contains_unread_poll_votes': containsUnreadPollVotes,
    'unread_poll_vote_count': unreadPollVoteCount,
    '@type': constructor,
  };

  static UpdateMessageContainsUnreadPollVotes? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return UpdateMessageContainsUnreadPollVotes(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      containsUnreadPollVotes:
          (json['contains_unread_poll_votes'] as bool?) ?? false,
      unreadPollVoteCount: (json['unread_poll_vote_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message content has changed
@immutable
final class UpdateMessageContent extends Update {
  UpdateMessageContent({
    required this.chatId,
    required this.messageId,
    this.newContent,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [newContent] New message content
  final MessageContent? newContent;

  static const String constructor = 'updateMessageContent';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    'new_content': newContent?.toJson(),
    '@type': constructor,
  };

  static UpdateMessageContent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageContent(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      newContent: MessageContent.fromJson(tdMapFromJson(json['new_content'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message content was opened. Updates voice note messages to "listened",
/// video note messages to "viewed" and starts the self-destruct timer
@immutable
final class UpdateMessageContentOpened extends Update {
  UpdateMessageContentOpened({required this.chatId, required this.messageId});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  static const String constructor = 'updateMessageContentOpened';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    '@type': constructor,
  };

  static UpdateMessageContentOpened? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageContentOpened(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message was edited. Changes in the message content will come in a
/// separate updateMessageContent
@immutable
final class UpdateMessageEdited extends Update {
  UpdateMessageEdited({
    required this.chatId,
    required this.messageId,
    required this.editDate,
    this.replyMarkup,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [editDate] Point in time (Unix timestamp) when the message was edited
  final int editDate;

  /// [replyMarkup] New message reply markup; may be null
  final ReplyMarkup? replyMarkup;

  static const String constructor = 'updateMessageEdited';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    'edit_date': editDate,
    'reply_markup': replyMarkup?.toJson(),
    '@type': constructor,
  };

  static UpdateMessageEdited? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageEdited(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      editDate: (json['edit_date'] as int?) ?? 0,
      replyMarkup: ReplyMarkup.fromJson(tdMapFromJson(json['reply_markup'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A fact-check added to a message was changed
@immutable
final class UpdateMessageFactCheck extends Update {
  UpdateMessageFactCheck({
    required this.chatId,
    required this.messageId,
    this.factCheck,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [factCheck] The new fact-check
  final FactCheck? factCheck;

  static const String constructor = 'updateMessageFactCheck';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    'fact_check': factCheck?.toJson(),
    '@type': constructor,
  };

  static UpdateMessageFactCheck? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageFactCheck(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      factCheck: FactCheck.fromJson(tdMapFromJson(json['fact_check'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The information about interactions with a message has changed
@immutable
final class UpdateMessageInteractionInfo extends Update {
  UpdateMessageInteractionInfo({
    required this.chatId,
    required this.messageId,
    this.interactionInfo,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [interactionInfo] New information about interactions with the message; may
  /// be null
  final MessageInteractionInfo? interactionInfo;

  static const String constructor = 'updateMessageInteractionInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    'interaction_info': interactionInfo?.toJson(),
    '@type': constructor,
  };

  static UpdateMessageInteractionInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageInteractionInfo(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      interactionInfo: MessageInteractionInfo.fromJson(
        tdMapFromJson(json['interaction_info']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message pinned state was changed
@immutable
final class UpdateMessageIsPinned extends Update {
  UpdateMessageIsPinned({
    required this.chatId,
    required this.messageId,
    required this.isPinned,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] The message identifier
  final int messageId;

  /// [isPinned] True, if the message is pinned
  final bool isPinned;

  static const String constructor = 'updateMessageIsPinned';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    'is_pinned': isPinned,
    '@type': constructor,
  };

  static UpdateMessageIsPinned? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageIsPinned(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with a live location was viewed. When the update is received,
/// the application is expected to update the live location
@immutable
final class UpdateMessageLiveLocationViewed extends Update {
  UpdateMessageLiveLocationViewed({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the chat with the live location message
  final int chatId;

  /// [messageId] Identifier of the message with live location
  final int messageId;

  static const String constructor = 'updateMessageLiveLocationViewed';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    '@type': constructor,
  };

  static UpdateMessageLiveLocationViewed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageLiveLocationViewed(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with an unread mention was read
@immutable
final class UpdateMessageMentionRead extends Update {
  UpdateMessageMentionRead({
    required this.chatId,
    required this.messageId,
    required this.unreadMentionCount,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [unreadMentionCount] The new number of unread mention messages left in the
  /// chat
  final int unreadMentionCount;

  static const String constructor = 'updateMessageMentionRead';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    'unread_mention_count': unreadMentionCount,
    '@type': constructor,
  };

  static UpdateMessageMentionRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageMentionRead(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      unreadMentionCount: (json['unread_mention_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// User changed its reactions on a message with public reactions; for bots
/// only
@immutable
final class UpdateMessageReaction extends Update {
  UpdateMessageReaction({
    required this.chatId,
    required this.messageId,
    this.actorId,
    required this.date,
    required this.oldReactionTypes,
    required this.newReactionTypes,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [actorId] Identifier of the user or chat that changed reactions
  final MessageSender? actorId;

  /// [date] Point in time (Unix timestamp) when the reactions were changed
  final int date;

  /// [oldReactionTypes] Old list of chosen reactions
  final List<ReactionType> oldReactionTypes;

  /// [newReactionTypes] New list of chosen reactions
  final List<ReactionType> newReactionTypes;

  static const String constructor = 'updateMessageReaction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    'actor_id': actorId?.toJson(),
    'date': date,
    'old_reaction_types': oldReactionTypes
        .map((item) => item.toJson())
        .toList(),
    'new_reaction_types': newReactionTypes
        .map((item) => item.toJson())
        .toList(),
    '@type': constructor,
  };

  static UpdateMessageReaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageReaction(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      actorId: MessageSender.fromJson(tdMapFromJson(json['actor_id'])),
      date: (json['date'] as int?) ?? 0,
      oldReactionTypes: List<ReactionType>.from(
        tdListFromJson(json['old_reaction_types'])
            .map((item) => ReactionType.fromJson(tdMapFromJson(item)))
            .whereType<ReactionType>(),
      ),
      newReactionTypes: List<ReactionType>.from(
        tdListFromJson(json['new_reaction_types'])
            .map((item) => ReactionType.fromJson(tdMapFromJson(item)))
            .whereType<ReactionType>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Reactions added to a message with anonymous reactions have changed; for
/// bots only
@immutable
final class UpdateMessageReactions extends Update {
  UpdateMessageReactions({
    required this.chatId,
    required this.messageId,
    required this.date,
    required this.reactions,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [date] Point in time (Unix timestamp) when the reactions were changed
  final int date;

  /// [reactions] The list of reactions added to the message
  final List<MessageReaction> reactions;

  static const String constructor = 'updateMessageReactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    'date': date,
    'reactions': reactions.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static UpdateMessageReactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageReactions(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      date: (json['date'] as int?) ?? 0,
      reactions: List<MessageReaction>.from(
        tdListFromJson(json['reactions'])
            .map((item) => MessageReaction.fromJson(tdMapFromJson(item)))
            .whereType<MessageReaction>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A request to send a message has reached the Telegram server. This doesn't
/// mean that the message will be sent successfully. This update is sent only
/// if the option "use_quick_ack" is set to true. This update may be sent
/// multiple times for the same message
@immutable
final class UpdateMessageSendAcknowledged extends Update {
  UpdateMessageSendAcknowledged({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] The chat identifier of the sent message
  final int chatId;

  /// [messageId] A temporary message identifier
  final int messageId;

  static const String constructor = 'updateMessageSendAcknowledged';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    '@type': constructor,
  };

  static UpdateMessageSendAcknowledged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageSendAcknowledged(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message failed to send. Be aware that some messages being sent can be
/// irrecoverably deleted, in which case updateDeleteMessages will be received
/// instead of this update
@immutable
final class UpdateMessageSendFailed extends Update {
  UpdateMessageSendFailed({
    this.message,
    required this.oldMessageId,
    this.error,
  });

  /// [message] The failed to send message
  final Message? message;

  /// [oldMessageId] The previous temporary message identifier
  final int oldMessageId;

  /// [error] The cause of the message sending failure
  final TdError? error;

  static const String constructor = 'updateMessageSendFailed';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'message': message?.toJson(),
    'old_message_id': oldMessageId,
    'error': error?.toJson(),
    '@type': constructor,
  };

  static UpdateMessageSendFailed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageSendFailed(
      message: Message.fromJson(tdMapFromJson(json['message'])),
      oldMessageId: (json['old_message_id'] as int?) ?? 0,
      error: TdError.fromJson(tdMapFromJson(json['error'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message has been successfully sent
@immutable
final class UpdateMessageSendSucceeded extends Update {
  UpdateMessageSendSucceeded({this.message, required this.oldMessageId});

  /// [message] The sent message. Almost any field of the new message can be
  /// different from the corresponding field of the original message. For
  /// example, the field scheduling_state may change, making the message
  /// scheduled, or non-scheduled
  final Message? message;

  /// [oldMessageId] The previous temporary message identifier
  final int oldMessageId;

  static const String constructor = 'updateMessageSendSucceeded';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'message': message?.toJson(),
    'old_message_id': oldMessageId,
    '@type': constructor,
  };

  static UpdateMessageSendSucceeded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageSendSucceeded(
      message: Message.fromJson(tdMapFromJson(json['message'])),
      oldMessageId: (json['old_message_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Information about suggested post of a message was changed
@immutable
final class UpdateMessageSuggestedPostInfo extends Update {
  UpdateMessageSuggestedPostInfo({
    required this.chatId,
    required this.messageId,
    this.suggestedPostInfo,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [suggestedPostInfo] The new information about the suggested post
  final SuggestedPostInfo? suggestedPostInfo;

  static const String constructor = 'updateMessageSuggestedPostInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    'suggested_post_info': suggestedPostInfo?.toJson(),
    '@type': constructor,
  };

  static UpdateMessageSuggestedPostInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageSuggestedPostInfo(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      suggestedPostInfo: SuggestedPostInfo.fromJson(
        tdMapFromJson(json['suggested_post_info']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of unread reactions added to a message was changed
@immutable
final class UpdateMessageUnreadReactions extends Update {
  UpdateMessageUnreadReactions({
    required this.chatId,
    required this.messageId,
    required this.unreadReactions,
    required this.unreadReactionCount,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [unreadReactions] The new list of unread reactions
  final List<UnreadReaction> unreadReactions;

  /// [unreadReactionCount] The new number of messages with unread reactions in
  /// the chat
  final int unreadReactionCount;

  static const String constructor = 'updateMessageUnreadReactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    'unread_reactions': unreadReactions.map((item) => item.toJson()).toList(),
    'unread_reaction_count': unreadReactionCount,
    '@type': constructor,
  };

  static UpdateMessageUnreadReactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageUnreadReactions(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      unreadReactions: List<UnreadReaction>.from(
        tdListFromJson(json['unread_reactions'])
            .map((item) => UnreadReaction.fromJson(tdMapFromJson(item)))
            .whereType<UnreadReaction>(),
      ),
      unreadReactionCount: (json['unread_reaction_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new incoming callback query from a business message; for bots only
@immutable
final class UpdateNewBusinessCallbackQuery extends Update {
  UpdateNewBusinessCallbackQuery({
    required this.id,
    required this.senderUserId,
    required this.connectionId,
    this.message,
    required this.chatInstance,
    this.payload,
  });

  /// [id] Unique query identifier
  final int id;

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [connectionId] Unique identifier of the business connection
  final String connectionId;

  /// [message] The message from the business account from which the query
  /// originated
  final BusinessMessage? message;

  /// [chatInstance] An identifier uniquely corresponding to the chat a message
  /// was sent to
  final int chatInstance;

  /// [payload] Query payload
  final CallbackQueryPayload? payload;

  static const String constructor = 'updateNewBusinessCallbackQuery';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id.toString(),
    'sender_user_id': senderUserId,
    'connection_id': connectionId,
    'message': message?.toJson(),
    'chat_instance': chatInstance.toString(),
    'payload': payload?.toJson(),
    '@type': constructor,
  };

  static UpdateNewBusinessCallbackQuery? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewBusinessCallbackQuery(
      id: int.tryParse((json['id'] as dynamic)?.toString() ?? '') ?? 0,
      senderUserId: (json['sender_user_id'] as int?) ?? 0,
      connectionId: (json['connection_id'] as String?) ?? '',
      message: BusinessMessage.fromJson(tdMapFromJson(json['message'])),
      chatInstance:
          int.tryParse((json['chat_instance'] as dynamic)?.toString() ?? '') ??
          0,
      payload: CallbackQueryPayload.fromJson(tdMapFromJson(json['payload'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new message was added to a business account; for bots only
@immutable
final class UpdateNewBusinessMessage extends Update {
  UpdateNewBusinessMessage({required this.connectionId, this.message});

  /// [connectionId] Unique identifier of the business connection
  final String connectionId;

  /// [message] The new message
  final BusinessMessage? message;

  static const String constructor = 'updateNewBusinessMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'connection_id': connectionId,
    'message': message?.toJson(),
    '@type': constructor,
  };

  static UpdateNewBusinessMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewBusinessMessage(
      connectionId: (json['connection_id'] as String?) ?? '',
      message: BusinessMessage.fromJson(tdMapFromJson(json['message'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// New call signaling data arrived
@immutable
final class UpdateNewCallSignalingData extends Update {
  UpdateNewCallSignalingData({required this.callId, required this.data});

  /// [callId] The call identifier
  final int callId;

  /// [data] The data
  final String data;

  static const String constructor = 'updateNewCallSignalingData';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'call_id': callId,
    'data': data,
    '@type': constructor,
  };

  static UpdateNewCallSignalingData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewCallSignalingData(
      callId: (json['call_id'] as int?) ?? 0,
      data: (json['data'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new incoming callback query; for bots only
@immutable
final class UpdateNewCallbackQuery extends Update {
  UpdateNewCallbackQuery({
    required this.id,
    required this.senderUserId,
    required this.chatId,
    required this.messageId,
    required this.chatInstance,
    this.payload,
  });

  /// [id] Unique query identifier
  final int id;

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [chatId] Identifier of the chat where the query was sent
  final int chatId;

  /// [messageId] Identifier of the message from which the query originated
  final int messageId;

  /// [chatInstance] Identifier that uniquely corresponds to the chat to which
  /// the message was sent
  final int chatInstance;

  /// [payload] Query payload
  final CallbackQueryPayload? payload;

  static const String constructor = 'updateNewCallbackQuery';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id.toString(),
    'sender_user_id': senderUserId,
    'chat_id': chatId,
    'message_id': messageId,
    'chat_instance': chatInstance.toString(),
    'payload': payload?.toJson(),
    '@type': constructor,
  };

  static UpdateNewCallbackQuery? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewCallbackQuery(
      id: int.tryParse((json['id'] as dynamic)?.toString() ?? '') ?? 0,
      senderUserId: (json['sender_user_id'] as int?) ?? 0,
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      chatInstance:
          int.tryParse((json['chat_instance'] as dynamic)?.toString() ?? '') ??
          0,
      payload: CallbackQueryPayload.fromJson(tdMapFromJson(json['payload'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new chat has been loaded/created. This update is guaranteed to come
/// before the chat identifier is returned to the application. The chat field
/// changes will be reported through separate updates
@immutable
final class UpdateNewChat extends Update {
  UpdateNewChat({this.chat});

  /// [chat] The chat
  final Chat? chat;

  static const String constructor = 'updateNewChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat': chat?.toJson(),
    '@type': constructor,
  };

  static UpdateNewChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewChat(chat: Chat.fromJson(tdMapFromJson(json['chat'])));
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A user sent a join request to a chat; for bots only
@immutable
final class UpdateNewChatJoinRequest extends Update {
  UpdateNewChatJoinRequest({
    required this.chatId,
    this.request,
    required this.userChatId,
    this.inviteLink,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [request] Join request
  final ChatJoinRequest? request;

  /// [userChatId] Chat identifier of the private chat with the user
  final int userChatId;

  /// [inviteLink] The invite link, which was used to send join request; may be
  /// null
  final ChatInviteLink? inviteLink;

  static const String constructor = 'updateNewChatJoinRequest';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'request': request?.toJson(),
    'user_chat_id': userChatId,
    'invite_link': inviteLink?.toJson(),
    '@type': constructor,
  };

  static UpdateNewChatJoinRequest? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewChatJoinRequest(
      chatId: (json['chat_id'] as int?) ?? 0,
      request: ChatJoinRequest.fromJson(tdMapFromJson(json['request'])),
      userChatId: (json['user_chat_id'] as int?) ?? 0,
      inviteLink: ChatInviteLink.fromJson(tdMapFromJson(json['invite_link'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user has chosen a result of an inline query; for bots only
@immutable
final class UpdateNewChosenInlineResult extends Update {
  UpdateNewChosenInlineResult({
    required this.senderUserId,
    this.userLocation,
    required this.query,
    required this.resultId,
    required this.inlineMessageId,
  });

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [userLocation] User location; may be null
  final Location? userLocation;

  /// [query] Text of the query
  final String query;

  /// [resultId] Identifier of the chosen result
  final String resultId;

  /// [inlineMessageId] Identifier of the sent inline message, if known
  final String inlineMessageId;

  static const String constructor = 'updateNewChosenInlineResult';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sender_user_id': senderUserId,
    'user_location': userLocation?.toJson(),
    'query': query,
    'result_id': resultId,
    'inline_message_id': inlineMessageId,
    '@type': constructor,
  };

  static UpdateNewChosenInlineResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewChosenInlineResult(
      senderUserId: (json['sender_user_id'] as int?) ?? 0,
      userLocation: Location.fromJson(tdMapFromJson(json['user_location'])),
      query: (json['query'] as String?) ?? '',
      resultId: (json['result_id'] as String?) ?? '',
      inlineMessageId: (json['inline_message_id'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new incoming event; for bots only
@immutable
final class UpdateNewCustomEvent extends Update {
  UpdateNewCustomEvent({required this.event});

  /// [event] A JSON-serialized event
  final String event;

  static const String constructor = 'updateNewCustomEvent';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'event': event,
    '@type': constructor,
  };

  static UpdateNewCustomEvent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewCustomEvent(event: (json['event'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new incoming query; for bots only
@immutable
final class UpdateNewCustomQuery extends Update {
  UpdateNewCustomQuery({
    required this.id,
    required this.data,
    required this.timeout,
  });

  /// [id] The query identifier
  final int id;

  /// [data] JSON-serialized query data
  final String data;

  /// [timeout] Query timeout
  final int timeout;

  static const String constructor = 'updateNewCustomQuery';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id.toString(),
    'data': data,
    'timeout': timeout,
    '@type': constructor,
  };

  static UpdateNewCustomQuery? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewCustomQuery(
      id: int.tryParse((json['id'] as dynamic)?.toString() ?? '') ?? 0,
      data: (json['data'] as String?) ?? '',
      timeout: (json['timeout'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new message was received in a group call
@immutable
final class UpdateNewGroupCallMessage extends Update {
  UpdateNewGroupCallMessage({required this.groupCallId, this.message});

  /// [groupCallId] Identifier of the group call
  final int groupCallId;

  /// [message] The message
  final GroupCallMessage? message;

  static const String constructor = 'updateNewGroupCallMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call_id': groupCallId,
    'message': message?.toJson(),
    '@type': constructor,
  };

  static UpdateNewGroupCallMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewGroupCallMessage(
      groupCallId: (json['group_call_id'] as int?) ?? 0,
      message: GroupCallMessage.fromJson(tdMapFromJson(json['message'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new paid reaction was received in a live story group call
@immutable
final class UpdateNewGroupCallPaidReaction extends Update {
  UpdateNewGroupCallPaidReaction({
    required this.groupCallId,
    this.senderId,
    required this.starCount,
  });

  /// [groupCallId] Identifier of the group call
  final int groupCallId;

  /// [senderId] Identifier of the sender of the reaction
  final MessageSender? senderId;

  /// [starCount] The number of Telegram Stars that were paid to send the
  /// reaction
  final int starCount;

  static const String constructor = 'updateNewGroupCallPaidReaction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call_id': groupCallId,
    'sender_id': senderId?.toJson(),
    'star_count': starCount,
    '@type': constructor,
  };

  static UpdateNewGroupCallPaidReaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewGroupCallPaidReaction(
      groupCallId: (json['group_call_id'] as int?) ?? 0,
      senderId: MessageSender.fromJson(tdMapFromJson(json['sender_id'])),
      starCount: (json['star_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new incoming guest query; for bots only
@immutable
final class UpdateNewGuestQuery extends Update {
  UpdateNewGuestQuery({
    required this.id,
    this.message,
    required this.referenceMessages,
  });

  /// [id] Unique query identifier
  final int id;

  /// [message] The message with the query
  final Message? message;

  /// [referenceMessages] The list of reference messages
  final List<Message> referenceMessages;

  static const String constructor = 'updateNewGuestQuery';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id.toString(),
    'message': message?.toJson(),
    'reference_messages': referenceMessages
        .map((item) => item.toJson())
        .toList(),
    '@type': constructor,
  };

  static UpdateNewGuestQuery? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewGuestQuery(
      id: int.tryParse((json['id'] as dynamic)?.toString() ?? '') ?? 0,
      message: Message.fromJson(tdMapFromJson(json['message'])),
      referenceMessages: List<Message>.from(
        tdListFromJson(json['reference_messages'])
            .map((item) => Message.fromJson(tdMapFromJson(item)))
            .whereType<Message>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new incoming callback query from a message sent via a bot; for bots only
@immutable
final class UpdateNewInlineCallbackQuery extends Update {
  UpdateNewInlineCallbackQuery({
    required this.id,
    required this.senderUserId,
    required this.inlineMessageId,
    required this.chatInstance,
    this.payload,
  });

  /// [id] Unique query identifier
  final int id;

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [inlineMessageId] Identifier of the inline message from which the query
  /// originated
  final String inlineMessageId;

  /// [chatInstance] An identifier uniquely corresponding to the chat a message
  /// was sent to
  final int chatInstance;

  /// [payload] Query payload
  final CallbackQueryPayload? payload;

  static const String constructor = 'updateNewInlineCallbackQuery';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id.toString(),
    'sender_user_id': senderUserId,
    'inline_message_id': inlineMessageId,
    'chat_instance': chatInstance.toString(),
    'payload': payload?.toJson(),
    '@type': constructor,
  };

  static UpdateNewInlineCallbackQuery? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewInlineCallbackQuery(
      id: int.tryParse((json['id'] as dynamic)?.toString() ?? '') ?? 0,
      senderUserId: (json['sender_user_id'] as int?) ?? 0,
      inlineMessageId: (json['inline_message_id'] as String?) ?? '',
      chatInstance:
          int.tryParse((json['chat_instance'] as dynamic)?.toString() ?? '') ??
          0,
      payload: CallbackQueryPayload.fromJson(tdMapFromJson(json['payload'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new incoming inline query; for bots only
@immutable
final class UpdateNewInlineQuery extends Update {
  UpdateNewInlineQuery({
    required this.id,
    required this.senderUserId,
    this.userLocation,
    this.chatType,
    required this.query,
    required this.offset,
  });

  /// [id] Unique query identifier
  final int id;

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [userLocation] User location; may be null
  final Location? userLocation;

  /// [chatType] The type of the chat from which the query originated; may be
  /// null if unknown
  final ChatType? chatType;

  /// [query] Text of the query
  final String query;

  /// [offset] Offset of the first entry to return
  final String offset;

  static const String constructor = 'updateNewInlineQuery';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id.toString(),
    'sender_user_id': senderUserId,
    'user_location': userLocation?.toJson(),
    'chat_type': chatType?.toJson(),
    'query': query,
    'offset': offset,
    '@type': constructor,
  };

  static UpdateNewInlineQuery? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewInlineQuery(
      id: int.tryParse((json['id'] as dynamic)?.toString() ?? '') ?? 0,
      senderUserId: (json['sender_user_id'] as int?) ?? 0,
      userLocation: Location.fromJson(tdMapFromJson(json['user_location'])),
      chatType: ChatType.fromJson(tdMapFromJson(json['chat_type'])),
      query: (json['query'] as String?) ?? '',
      offset: (json['offset'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new message was received; can also be an outgoing message
@immutable
final class UpdateNewMessage extends Update {
  UpdateNewMessage({this.message});

  /// [message] The new message
  final Message? message;

  static const String constructor = 'updateNewMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'message': message?.toJson(),
    '@type': constructor,
  };

  static UpdateNewMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewMessage(
      message: Message.fromJson(tdMapFromJson(json['message'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An OAuth authorization request was received
@immutable
final class UpdateNewOauthRequest extends Update {
  UpdateNewOauthRequest({
    required this.domain,
    required this.location,
    required this.url,
  });

  /// [domain] A domain of the URL where the user authorizes
  final String domain;

  /// [location] Human-readable description of a country and a region from which
  /// the authorization is performed, based on the IP address
  final String location;

  /// [url] The URL to pass to getOauthLinkInfo; the link is valid for 60
  /// seconds
  final String url;

  static const String constructor = 'updateNewOauthRequest';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'domain': domain,
    'location': location,
    'url': url,
    '@type': constructor,
  };

  static UpdateNewOauthRequest? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewOauthRequest(
      domain: (json['domain'] as String?) ?? '',
      location: (json['location'] as String?) ?? '',
      url: (json['url'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new incoming pre-checkout query; for bots only. Contains full
/// information about a checkout
@immutable
final class UpdateNewPreCheckoutQuery extends Update {
  UpdateNewPreCheckoutQuery({
    required this.id,
    required this.senderUserId,
    required this.currency,
    required this.totalAmount,
    required this.invoicePayload,
    required this.shippingOptionId,
    this.orderInfo,
  });

  /// [id] Unique query identifier
  final int id;

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [currency] Currency for the product price
  final String currency;

  /// [totalAmount] Total price for the product, in the smallest units of the
  /// currency
  final int totalAmount;

  /// [invoicePayload] Invoice payload
  final String invoicePayload;

  /// [shippingOptionId] Identifier of a shipping option chosen by the user; may
  /// be empty if not applicable
  final String shippingOptionId;

  /// [orderInfo] Information about the order; may be null
  final OrderInfo? orderInfo;

  static const String constructor = 'updateNewPreCheckoutQuery';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id.toString(),
    'sender_user_id': senderUserId,
    'currency': currency,
    'total_amount': totalAmount,
    'invoice_payload': invoicePayload,
    'shipping_option_id': shippingOptionId,
    'order_info': orderInfo?.toJson(),
    '@type': constructor,
  };

  static UpdateNewPreCheckoutQuery? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewPreCheckoutQuery(
      id: int.tryParse((json['id'] as dynamic)?.toString() ?? '') ?? 0,
      senderUserId: (json['sender_user_id'] as int?) ?? 0,
      currency: (json['currency'] as String?) ?? '',
      totalAmount: (json['total_amount'] as int?) ?? 0,
      invoicePayload: (json['invoice_payload'] as String?) ?? '',
      shippingOptionId: (json['shipping_option_id'] as String?) ?? '',
      orderInfo: OrderInfo.fromJson(tdMapFromJson(json['order_info'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new incoming shipping query; for bots only. Only for invoices with
/// flexible price
@immutable
final class UpdateNewShippingQuery extends Update {
  UpdateNewShippingQuery({
    required this.id,
    required this.senderUserId,
    required this.invoicePayload,
    this.shippingAddress,
  });

  /// [id] Unique query identifier
  final int id;

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [invoicePayload] Invoice payload
  final String invoicePayload;

  /// [shippingAddress] User shipping address
  final Address? shippingAddress;

  static const String constructor = 'updateNewShippingQuery';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id.toString(),
    'sender_user_id': senderUserId,
    'invoice_payload': invoicePayload,
    'shipping_address': shippingAddress?.toJson(),
    '@type': constructor,
  };

  static UpdateNewShippingQuery? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewShippingQuery(
      id: int.tryParse((json['id'] as dynamic)?.toString() ?? '') ?? 0,
      senderUserId: (json['sender_user_id'] as int?) ?? 0,
      invoicePayload: (json['invoice_payload'] as String?) ?? '',
      shippingAddress: Address.fromJson(
        tdMapFromJson(json['shipping_address']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A notification was changed
@immutable
final class UpdateNotification extends Update {
  UpdateNotification({required this.notificationGroupId, this.notification});

  /// [notificationGroupId] Unique notification group identifier
  final int notificationGroupId;

  /// [notification] Changed notification
  final Notification? notification;

  static const String constructor = 'updateNotification';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'notification_group_id': notificationGroupId,
    'notification': notification?.toJson(),
    '@type': constructor,
  };

  static UpdateNotification? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNotification(
      notificationGroupId: (json['notification_group_id'] as int?) ?? 0,
      notification: Notification.fromJson(tdMapFromJson(json['notification'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A list of active notifications in a notification group has changed
@immutable
final class UpdateNotificationGroup extends Update {
  UpdateNotificationGroup({
    required this.notificationGroupId,
    this.type,
    required this.chatId,
    required this.notificationSettingsChatId,
    required this.notificationSoundId,
    required this.totalCount,
    required this.addedNotifications,
    required this.removedNotificationIds,
  });

  /// [notificationGroupId] Unique notification group identifier
  final int notificationGroupId;

  /// [type] New type of the notification group
  final NotificationGroupType? type;

  /// [chatId] Identifier of a chat to which all notifications in the group
  /// belong
  final int chatId;

  /// [notificationSettingsChatId] Chat identifier, which notification settings
  /// must be applied to the added notifications
  final int notificationSettingsChatId;

  /// [notificationSoundId] Identifier of the notification sound to be played; 0
  /// if sound is disabled
  final int notificationSoundId;

  /// [totalCount] Total number of unread notifications in the group, can be
  /// bigger than number of active notifications
  final int totalCount;

  /// [addedNotifications] List of added group notifications, sorted by
  /// notification identifier
  final List<Notification> addedNotifications;

  /// [removedNotificationIds] Identifiers of removed group notifications,
  /// sorted by notification identifier
  final List<int> removedNotificationIds;

  static const String constructor = 'updateNotificationGroup';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'notification_group_id': notificationGroupId,
    'type': type?.toJson(),
    'chat_id': chatId,
    'notification_settings_chat_id': notificationSettingsChatId,
    'notification_sound_id': notificationSoundId.toString(),
    'total_count': totalCount,
    'added_notifications': addedNotifications
        .map((item) => item.toJson())
        .toList(),
    'removed_notification_ids': removedNotificationIds
        .map((item) => item)
        .toList(),
    '@type': constructor,
  };

  static UpdateNotificationGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNotificationGroup(
      notificationGroupId: (json['notification_group_id'] as int?) ?? 0,
      type: NotificationGroupType.fromJson(tdMapFromJson(json['type'])),
      chatId: (json['chat_id'] as int?) ?? 0,
      notificationSettingsChatId:
          (json['notification_settings_chat_id'] as int?) ?? 0,
      notificationSoundId:
          int.tryParse(
            (json['notification_sound_id'] as dynamic)?.toString() ?? '',
          ) ??
          0,
      totalCount: (json['total_count'] as int?) ?? 0,
      addedNotifications: List<Notification>.from(
        tdListFromJson(json['added_notifications'])
            .map((item) => Notification.fromJson(tdMapFromJson(item)))
            .whereType<Notification>(),
      ),
      removedNotificationIds: List<int>.from(
        tdListFromJson(
          json['removed_notification_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An option changed its value
@immutable
final class UpdateOption extends Update {
  UpdateOption({required this.name, this.value});

  /// [name] The option name
  final String name;

  /// [value] The new option value
  final OptionValue? value;

  static const String constructor = 'updateOption';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'name': name,
    'value': value?.toJson(),
    '@type': constructor,
  };

  static UpdateOption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateOption(
      name: (json['name'] as String?) ?? '',
      value: OptionValue.fromJson(tdMapFromJson(json['value'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The number of Telegram Stars owned by the current user has changed
@immutable
final class UpdateOwnedStarCount extends Update {
  UpdateOwnedStarCount({this.starAmount});

  /// [starAmount] The new amount of owned Telegram Stars
  final StarAmount? starAmount;

  static const String constructor = 'updateOwnedStarCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'star_amount': starAmount?.toJson(),
    '@type': constructor,
  };

  static UpdateOwnedStarCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateOwnedStarCount(
      starAmount: StarAmount.fromJson(tdMapFromJson(json['star_amount'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The number of Toncoins owned by the current user has changed
@immutable
final class UpdateOwnedTonCount extends Update {
  UpdateOwnedTonCount({required this.tonAmount});

  /// [tonAmount] The new amount of owned Toncoins; in the smallest units of the
  /// cryptocurrency
  final int tonAmount;

  static const String constructor = 'updateOwnedTonCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'ton_amount': tonAmount,
    '@type': constructor,
  };

  static UpdateOwnedTonCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateOwnedTonCount(tonAmount: (json['ton_amount'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Paid media were purchased by a user; for bots only
@immutable
final class UpdatePaidMediaPurchased extends Update {
  UpdatePaidMediaPurchased({required this.userId, required this.payload});

  /// [userId] User identifier
  final int userId;

  /// [payload] Bot-specified payload for the paid media
  final String payload;

  static const String constructor = 'updatePaidMediaPurchased';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'payload': payload,
    '@type': constructor,
  };

  static UpdatePaidMediaPurchased? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdatePaidMediaPurchased(
      userId: (json['user_id'] as int?) ?? 0,
      payload: (json['payload'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new pending text message was received in a chat with a bot. The message
/// must be shown in the chat for at most
/// getOption("pending_text_message_period") seconds, replace any other
/// pending message with the same draft_id, and be deleted whenever any
/// incoming message from the bot in the message thread is received
@immutable
final class UpdatePendingTextMessage extends Update {
  UpdatePendingTextMessage({
    required this.chatId,
    required this.forumTopicId,
    required this.draftId,
    this.text,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [forumTopicId] The forum topic identifier in which the message will be
  /// sent; 0 if none
  final int forumTopicId;

  /// [draftId] Unique identifier of the message draft within the message thread
  final int draftId;

  /// [text] Text of the pending message
  final FormattedText? text;

  static const String constructor = 'updatePendingTextMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'forum_topic_id': forumTopicId,
    'draft_id': draftId.toString(),
    'text': text?.toJson(),
    '@type': constructor,
  };

  static UpdatePendingTextMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdatePendingTextMessage(
      chatId: (json['chat_id'] as int?) ?? 0,
      forumTopicId: (json['forum_topic_id'] as int?) ?? 0,
      draftId:
          int.tryParse((json['draft_id'] as dynamic)?.toString() ?? '') ?? 0,
      text: FormattedText.fromJson(tdMapFromJson(json['text'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A poll was updated; for bots only
@immutable
final class UpdatePoll extends Update {
  UpdatePoll({this.poll});

  /// [poll] New data about the poll
  final Poll? poll;

  static const String constructor = 'updatePoll';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'poll': poll?.toJson(),
    '@type': constructor,
  };

  static UpdatePoll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdatePoll(poll: Poll.fromJson(tdMapFromJson(json['poll'])));
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A user changed the answer to a poll; for bots only
@immutable
final class UpdatePollAnswer extends Update {
  UpdatePollAnswer({
    required this.pollId,
    this.voterId,
    required this.optionIds,
    required this.optionPositions,
  });

  /// [pollId] Unique poll identifier
  final int pollId;

  /// [voterId] Identifier of the message sender that changed the answer to the
  /// poll
  final MessageSender? voterId;

  /// [optionIds] Unique identifiers of answer options, that were chosen by the
  /// user
  final List<String> optionIds;

  /// [optionPositions] 0-based identifiers of answer options, that were chosen
  /// by the user
  final List<int> optionPositions;

  static const String constructor = 'updatePollAnswer';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'poll_id': pollId.toString(),
    'voter_id': voterId?.toJson(),
    'option_ids': optionIds.map((item) => item).toList(),
    'option_positions': optionPositions.map((item) => item).toList(),
    '@type': constructor,
  };

  static UpdatePollAnswer? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdatePollAnswer(
      pollId: int.tryParse((json['poll_id'] as dynamic)?.toString() ?? '') ?? 0,
      voterId: MessageSender.fromJson(tdMapFromJson(json['voter_id'])),
      optionIds: List<String>.from(
        tdListFromJson(
          json['option_ids'],
        ).map((item) => (item as dynamic)?.toString() ?? ''),
      ),
      optionPositions: List<int>.from(
        tdListFromJson(
          json['option_positions'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of supported accent colors for user profiles has changed
@immutable
final class UpdateProfileAccentColors extends Update {
  UpdateProfileAccentColors({
    required this.colors,
    required this.availableAccentColorIds,
  });

  /// [colors] Information about supported colors
  final List<ProfileAccentColor> colors;

  /// [availableAccentColorIds] The list of accent color identifiers, which can
  /// be set through setProfileAccentColor and setChatProfileAccentColor. The
  /// colors must be shown in the specified order
  final List<int> availableAccentColorIds;

  static const String constructor = 'updateProfileAccentColors';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'colors': colors.map((item) => item.toJson()).toList(),
    'available_accent_color_ids': availableAccentColorIds
        .map((item) => item)
        .toList(),
    '@type': constructor,
  };

  static UpdateProfileAccentColors? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateProfileAccentColors(
      colors: List<ProfileAccentColor>.from(
        tdListFromJson(json['colors'])
            .map((item) => ProfileAccentColor.fromJson(tdMapFromJson(item)))
            .whereType<ProfileAccentColor>(),
      ),
      availableAccentColorIds: List<int>.from(
        tdListFromJson(
          json['available_accent_color_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Basic information about a quick reply shortcut has changed. This update is
/// guaranteed to come before the quick shortcut name is returned to the
/// application
@immutable
final class UpdateQuickReplyShortcut extends Update {
  UpdateQuickReplyShortcut({this.shortcut});

  /// [shortcut] New data about the shortcut
  final QuickReplyShortcut? shortcut;

  static const String constructor = 'updateQuickReplyShortcut';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'shortcut': shortcut?.toJson(),
    '@type': constructor,
  };

  static UpdateQuickReplyShortcut? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateQuickReplyShortcut(
      shortcut: QuickReplyShortcut.fromJson(tdMapFromJson(json['shortcut'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A quick reply shortcut and all its messages were deleted
@immutable
final class UpdateQuickReplyShortcutDeleted extends Update {
  UpdateQuickReplyShortcutDeleted({required this.shortcutId});

  /// [shortcutId] The identifier of the deleted shortcut
  final int shortcutId;

  static const String constructor = 'updateQuickReplyShortcutDeleted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'shortcut_id': shortcutId,
    '@type': constructor,
  };

  static UpdateQuickReplyShortcutDeleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateQuickReplyShortcutDeleted(
      shortcutId: (json['shortcut_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of quick reply shortcut messages has changed
@immutable
final class UpdateQuickReplyShortcutMessages extends Update {
  UpdateQuickReplyShortcutMessages({
    required this.shortcutId,
    required this.messages,
  });

  /// [shortcutId] The identifier of the shortcut
  final int shortcutId;

  /// [messages] The new list of quick reply messages for the shortcut in order
  /// from the first to the last sent
  final List<QuickReplyMessage> messages;

  static const String constructor = 'updateQuickReplyShortcutMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'shortcut_id': shortcutId,
    'messages': messages.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static UpdateQuickReplyShortcutMessages? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return UpdateQuickReplyShortcutMessages(
      shortcutId: (json['shortcut_id'] as int?) ?? 0,
      messages: List<QuickReplyMessage>.from(
        tdListFromJson(json['messages'])
            .map((item) => QuickReplyMessage.fromJson(tdMapFromJson(item)))
            .whereType<QuickReplyMessage>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of quick reply shortcuts has changed
@immutable
final class UpdateQuickReplyShortcuts extends Update {
  UpdateQuickReplyShortcuts({required this.shortcutIds});

  /// [shortcutIds] The new list of identifiers of quick reply shortcuts
  final List<int> shortcutIds;

  static const String constructor = 'updateQuickReplyShortcuts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'shortcut_ids': shortcutIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static UpdateQuickReplyShortcuts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateQuickReplyShortcuts(
      shortcutIds: List<int>.from(
        tdListFromJson(
          json['shortcut_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Notification settings for reactions were updated
@immutable
final class UpdateReactionNotificationSettings extends Update {
  UpdateReactionNotificationSettings({this.notificationSettings});

  /// [notificationSettings] The new notification settings
  final ReactionNotificationSettings? notificationSettings;

  static const String constructor = 'updateReactionNotificationSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'notification_settings': notificationSettings?.toJson(),
    '@type': constructor,
  };

  static UpdateReactionNotificationSettings? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return UpdateReactionNotificationSettings(
      notificationSettings: ReactionNotificationSettings.fromJson(
        tdMapFromJson(json['notification_settings']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of recently used stickers was updated
@immutable
final class UpdateRecentStickers extends Update {
  UpdateRecentStickers({required this.isAttached, required this.stickerIds});

  /// [isAttached] True, if the list of stickers attached to photo or video
  /// files was updated; otherwise, the list of sent stickers is updated
  final bool isAttached;

  /// [stickerIds] The new list of file identifiers of recently used stickers
  final List<int> stickerIds;

  static const String constructor = 'updateRecentStickers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_attached': isAttached,
    'sticker_ids': stickerIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static UpdateRecentStickers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateRecentStickers(
      isAttached: (json['is_attached'] as bool?) ?? false,
      stickerIds: List<int>.from(
        tdListFromJson(
          json['sticker_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of saved animations was updated
@immutable
final class UpdateSavedAnimations extends Update {
  UpdateSavedAnimations({required this.animationIds});

  /// [animationIds] The new list of file identifiers of saved animations
  final List<int> animationIds;

  static const String constructor = 'updateSavedAnimations';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'animation_ids': animationIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static UpdateSavedAnimations? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSavedAnimations(
      animationIds: List<int>.from(
        tdListFromJson(
          json['animation_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Tags used in Saved Messages or a Saved Messages topic have changed
@immutable
final class UpdateSavedMessagesTags extends Update {
  UpdateSavedMessagesTags({required this.savedMessagesTopicId, this.tags});

  /// [savedMessagesTopicId] Identifier of Saved Messages topic which tags were
  /// changed; 0 if tags for the whole chat has changed
  final int savedMessagesTopicId;

  /// [tags] The new tags
  final SavedMessagesTags? tags;

  static const String constructor = 'updateSavedMessagesTags';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'saved_messages_topic_id': savedMessagesTopicId,
    'tags': tags?.toJson(),
    '@type': constructor,
  };

  static UpdateSavedMessagesTags? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSavedMessagesTags(
      savedMessagesTopicId: (json['saved_messages_topic_id'] as int?) ?? 0,
      tags: SavedMessagesTags.fromJson(tdMapFromJson(json['tags'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Basic information about a Saved Messages topic has changed. This update is
/// guaranteed to come before the topic identifier is returned to the
/// application
@immutable
final class UpdateSavedMessagesTopic extends Update {
  UpdateSavedMessagesTopic({this.topic});

  /// [topic] New data about the topic
  final SavedMessagesTopic? topic;

  static const String constructor = 'updateSavedMessagesTopic';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'topic': topic?.toJson(),
    '@type': constructor,
  };

  static UpdateSavedMessagesTopic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSavedMessagesTopic(
      topic: SavedMessagesTopic.fromJson(tdMapFromJson(json['topic'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Number of Saved Messages topics has changed
@immutable
final class UpdateSavedMessagesTopicCount extends Update {
  UpdateSavedMessagesTopicCount({required this.topicCount});

  /// [topicCount] Approximate total number of Saved Messages topics
  final int topicCount;

  static const String constructor = 'updateSavedMessagesTopicCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'topic_count': topicCount,
    '@type': constructor,
  };

  static UpdateSavedMessagesTopicCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSavedMessagesTopicCount(
      topicCount: (json['topic_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of saved notification sounds was updated. This update may not be
/// sent until information about a notification sound was requested for the
/// first time
@immutable
final class UpdateSavedNotificationSounds extends Update {
  UpdateSavedNotificationSounds({required this.notificationSoundIds});

  /// [notificationSoundIds] The new list of identifiers of saved notification
  /// sounds
  final List<int> notificationSoundIds;

  static const String constructor = 'updateSavedNotificationSounds';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'notification_sound_ids': notificationSoundIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static UpdateSavedNotificationSounds? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSavedNotificationSounds(
      notificationSoundIds: List<int>.from(
        tdListFromJson(
          json['notification_sound_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Notification settings for some type of chats were updated
@immutable
final class UpdateScopeNotificationSettings extends Update {
  UpdateScopeNotificationSettings({this.scope, this.notificationSettings});

  /// [scope] Types of chats for which notification settings were updated
  final NotificationSettingsScope? scope;

  /// [notificationSettings] The new notification settings
  final ScopeNotificationSettings? notificationSettings;

  static const String constructor = 'updateScopeNotificationSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'scope': scope?.toJson(),
    'notification_settings': notificationSettings?.toJson(),
    '@type': constructor,
  };

  static UpdateScopeNotificationSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateScopeNotificationSettings(
      scope: NotificationSettingsScope.fromJson(tdMapFromJson(json['scope'])),
      notificationSettings: ScopeNotificationSettings.fromJson(
        tdMapFromJson(json['notification_settings']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Some data of a secret chat has changed. This update is guaranteed to come
/// before the secret chat identifier is returned to the application
@immutable
final class UpdateSecretChat extends Update {
  UpdateSecretChat({this.secretChat});

  /// [secretChat] New data about the secret chat
  final SecretChat? secretChat;

  static const String constructor = 'updateSecretChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'secret_chat': secretChat?.toJson(),
    '@type': constructor,
  };

  static UpdateSecretChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSecretChat(
      secretChat: SecretChat.fromJson(tdMapFromJson(json['secret_chat'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A service notification from the server was received. Upon receiving this
/// the application must show a popup with the content of the notification
@immutable
final class UpdateServiceNotification extends Update {
  UpdateServiceNotification({required this.type, this.content});

  /// [type] Notification type. If type begins with "AUTH_KEY_DROP_", then two
  /// buttons "Cancel" and "Log out" must be shown under notification; if user
  /// presses the second, all local data must be destroyed using Destroy method
  final String type;

  /// [content] Notification content
  final MessageContent? content;

  static const String constructor = 'updateServiceNotification';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'type': type,
    'content': content?.toJson(),
    '@type': constructor,
  };

  static UpdateServiceNotification? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateServiceNotification(
      type: (json['type'] as String?) ?? '',
      content: MessageContent.fromJson(tdMapFromJson(json['content'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The parameters of speech recognition without Telegram Premium subscription
/// has changed
@immutable
final class UpdateSpeechRecognitionTrial extends Update {
  UpdateSpeechRecognitionTrial({
    required this.maxMediaDuration,
    required this.weeklyCount,
    required this.leftCount,
    required this.nextResetDate,
  });

  /// [maxMediaDuration] The maximum allowed duration of media for speech
  /// recognition without Telegram Premium subscription, in seconds
  final int maxMediaDuration;

  /// [weeklyCount] The total number of allowed speech recognitions per week; 0
  /// if none
  final int weeklyCount;

  /// [leftCount] Number of left speech recognition attempts this week
  final int leftCount;

  /// [nextResetDate] Point in time (Unix timestamp) when the weekly number of
  /// tries will reset; 0 if unknown
  final int nextResetDate;

  static const String constructor = 'updateSpeechRecognitionTrial';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'max_media_duration': maxMediaDuration,
    'weekly_count': weeklyCount,
    'left_count': leftCount,
    'next_reset_date': nextResetDate,
    '@type': constructor,
  };

  static UpdateSpeechRecognitionTrial? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSpeechRecognitionTrial(
      maxMediaDuration: (json['max_media_duration'] as int?) ?? 0,
      weeklyCount: (json['weekly_count'] as int?) ?? 0,
      leftCount: (json['left_count'] as int?) ?? 0,
      nextResetDate: (json['next_reset_date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Download or upload file speed for the user was limited, but it can be
/// restored by subscription to Telegram Premium. The notification can be
/// postponed until a being downloaded or uploaded file is visible to the
/// user. Use getOption("premium_download_speedup") or
/// getOption("premium_upload_speedup") to get expected speedup after
/// subscription to Telegram Premium
@immutable
final class UpdateSpeedLimitNotification extends Update {
  UpdateSpeedLimitNotification({required this.isUpload});

  /// [isUpload] True, if upload speed was limited; false, if download speed was
  /// limited
  final bool isUpload;

  static const String constructor = 'updateSpeedLimitNotification';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_upload': isUpload,
    '@type': constructor,
  };

  static UpdateSpeedLimitNotification? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSpeedLimitNotification(
      isUpload: (json['is_upload'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The stake dice state has changed
@immutable
final class UpdateStakeDiceState extends Update {
  UpdateStakeDiceState({this.state});

  /// [state] The new state. The state can be used only if it was received
  /// recently enough. Otherwise, a new state must be requested using
  /// getStakeDiceState
  final StakeDiceState? state;

  static const String constructor = 'updateStakeDiceState';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'state': state?.toJson(),
    '@type': constructor,
  };

  static UpdateStakeDiceState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateStakeDiceState(
      state: StakeDiceState.fromJson(tdMapFromJson(json['state'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The Telegram Star revenue earned by a user or a chat has changed. If
/// Telegram Star transaction screen of the chat is opened, then
/// getStarTransactions may be called to fetch new transactions
@immutable
final class UpdateStarRevenueStatus extends Update {
  UpdateStarRevenueStatus({this.ownerId, this.status});

  /// [ownerId] Identifier of the owner of the Telegram Stars
  final MessageSender? ownerId;

  /// [status] New Telegram Star revenue status
  final StarRevenueStatus? status;

  static const String constructor = 'updateStarRevenueStatus';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'owner_id': ownerId?.toJson(),
    'status': status?.toJson(),
    '@type': constructor,
  };

  static UpdateStarRevenueStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateStarRevenueStatus(
      ownerId: MessageSender.fromJson(tdMapFromJson(json['owner_id'])),
      status: StarRevenueStatus.fromJson(tdMapFromJson(json['status'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A sticker set has changed
@immutable
final class UpdateStickerSet extends Update {
  UpdateStickerSet({this.stickerSet});

  /// [stickerSet] The sticker set
  final StickerSet? stickerSet;

  static const String constructor = 'updateStickerSet';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sticker_set': stickerSet?.toJson(),
    '@type': constructor,
  };

  static UpdateStickerSet? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateStickerSet(
      stickerSet: StickerSet.fromJson(tdMapFromJson(json['sticker_set'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A story was changed
@immutable
final class UpdateStory extends Update {
  UpdateStory({this.story});

  /// [story] The new information about the story
  final Story? story;

  static const String constructor = 'updateStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story': story?.toJson(),
    '@type': constructor,
  };

  static UpdateStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateStory(story: Story.fromJson(tdMapFromJson(json['story'])));
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A story became inaccessible
@immutable
final class UpdateStoryDeleted extends Update {
  UpdateStoryDeleted({required this.storyPosterChatId, required this.storyId});

  /// [storyPosterChatId] Identifier of the chat that posted the story
  final int storyPosterChatId;

  /// [storyId] Story identifier
  final int storyId;

  static const String constructor = 'updateStoryDeleted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story_poster_chat_id': storyPosterChatId,
    'story_id': storyId,
    '@type': constructor,
  };

  static UpdateStoryDeleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateStoryDeleted(
      storyPosterChatId: (json['story_poster_chat_id'] as int?) ?? 0,
      storyId: (json['story_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Number of chats in a story list has changed
@immutable
final class UpdateStoryListChatCount extends Update {
  UpdateStoryListChatCount({this.storyList, required this.chatCount});

  /// [storyList] The story list
  final StoryList? storyList;

  /// [chatCount] Approximate total number of chats with active stories in the
  /// list
  final int chatCount;

  static const String constructor = 'updateStoryListChatCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story_list': storyList?.toJson(),
    'chat_count': chatCount,
    '@type': constructor,
  };

  static UpdateStoryListChatCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateStoryListChatCount(
      storyList: StoryList.fromJson(tdMapFromJson(json['story_list'])),
      chatCount: (json['chat_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A story failed to post. If the story posting is canceled, then
/// updateStoryDeleted will be received instead of this update
@immutable
final class UpdateStoryPostFailed extends Update {
  UpdateStoryPostFailed({this.story, this.error, this.errorType});

  /// [story] The failed to post story
  final Story? story;

  /// [error] The cause of the story posting failure
  final TdError? error;

  /// [errorType] Type of the error; may be null if unknown
  final CanPostStoryResult? errorType;

  static const String constructor = 'updateStoryPostFailed';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story': story?.toJson(),
    'error': error?.toJson(),
    'error_type': errorType?.toJson(),
    '@type': constructor,
  };

  static UpdateStoryPostFailed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateStoryPostFailed(
      story: Story.fromJson(tdMapFromJson(json['story'])),
      error: TdError.fromJson(tdMapFromJson(json['error'])),
      errorType: CanPostStoryResult.fromJson(tdMapFromJson(json['error_type'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A story has been successfully posted
@immutable
final class UpdateStoryPostSucceeded extends Update {
  UpdateStoryPostSucceeded({this.story, required this.oldStoryId});

  /// [story] The posted story
  final Story? story;

  /// [oldStoryId] The previous temporary story identifier
  final int oldStoryId;

  static const String constructor = 'updateStoryPostSucceeded';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story': story?.toJson(),
    'old_story_id': oldStoryId,
    '@type': constructor,
  };

  static UpdateStoryPostSucceeded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateStoryPostSucceeded(
      story: Story.fromJson(tdMapFromJson(json['story'])),
      oldStoryId: (json['old_story_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Story stealth mode settings have changed
@immutable
final class UpdateStoryStealthMode extends Update {
  UpdateStoryStealthMode({
    required this.activeUntilDate,
    required this.cooldownUntilDate,
  });

  /// [activeUntilDate] Point in time (Unix timestamp) until stealth mode is
  /// active; 0 if it is disabled
  final int activeUntilDate;

  /// [cooldownUntilDate] Point in time (Unix timestamp) when stealth mode can
  /// be enabled again; 0 if there is no active cooldown
  final int cooldownUntilDate;

  static const String constructor = 'updateStoryStealthMode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'active_until_date': activeUntilDate,
    'cooldown_until_date': cooldownUntilDate,
    '@type': constructor,
  };

  static UpdateStoryStealthMode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateStoryStealthMode(
      activeUntilDate: (json['active_until_date'] as int?) ?? 0,
      cooldownUntilDate: (json['cooldown_until_date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of suggested to the user actions has changed
@immutable
final class UpdateSuggestedActions extends Update {
  UpdateSuggestedActions({
    required this.addedActions,
    required this.removedActions,
  });

  /// [addedActions] Added suggested actions
  final List<SuggestedAction> addedActions;

  /// [removedActions] Removed suggested actions
  final List<SuggestedAction> removedActions;

  static const String constructor = 'updateSuggestedActions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'added_actions': addedActions.map((item) => item.toJson()).toList(),
    'removed_actions': removedActions.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static UpdateSuggestedActions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSuggestedActions(
      addedActions: List<SuggestedAction>.from(
        tdListFromJson(json['added_actions'])
            .map((item) => SuggestedAction.fromJson(tdMapFromJson(item)))
            .whereType<SuggestedAction>(),
      ),
      removedActions: List<SuggestedAction>.from(
        tdListFromJson(json['removed_actions'])
            .map((item) => SuggestedAction.fromJson(tdMapFromJson(item)))
            .whereType<SuggestedAction>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Some data of a supergroup or a channel has changed. This update is
/// guaranteed to come before the supergroup identifier is returned to the
/// application
@immutable
final class UpdateSupergroup extends Update {
  UpdateSupergroup({this.supergroup});

  /// [supergroup] New data about the supergroup
  final Supergroup? supergroup;

  static const String constructor = 'updateSupergroup';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'supergroup': supergroup?.toJson(),
    '@type': constructor,
  };

  static UpdateSupergroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSupergroup(
      supergroup: Supergroup.fromJson(tdMapFromJson(json['supergroup'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Some data in supergroupFullInfo has been changed
@immutable
final class UpdateSupergroupFullInfo extends Update {
  UpdateSupergroupFullInfo({
    required this.supergroupId,
    this.supergroupFullInfo,
  });

  /// [supergroupId] Identifier of the supergroup or channel
  final int supergroupId;

  /// [supergroupFullInfo] New full information about the supergroup
  final SupergroupFullInfo? supergroupFullInfo;

  static const String constructor = 'updateSupergroupFullInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'supergroup_id': supergroupId,
    'supergroup_full_info': supergroupFullInfo?.toJson(),
    '@type': constructor,
  };

  static UpdateSupergroupFullInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSupergroupFullInfo(
      supergroupId: (json['supergroup_id'] as int?) ?? 0,
      supergroupFullInfo: SupergroupFullInfo.fromJson(
        tdMapFromJson(json['supergroup_full_info']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// New terms of service must be accepted by the user. If the terms of service
/// are declined, then the deleteAccount method must be called with the reason
/// "Decline ToS update"
@immutable
final class UpdateTermsOfService extends Update {
  UpdateTermsOfService({required this.termsOfServiceId, this.termsOfService});

  /// [termsOfServiceId] Identifier of the terms of service
  final String termsOfServiceId;

  /// [termsOfService] The new terms of service
  final TermsOfService? termsOfService;

  static const String constructor = 'updateTermsOfService';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'terms_of_service_id': termsOfServiceId,
    'terms_of_service': termsOfService?.toJson(),
    '@type': constructor,
  };

  static UpdateTermsOfService? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateTermsOfService(
      termsOfServiceId: (json['terms_of_service_id'] as String?) ?? '',
      termsOfService: TermsOfService.fromJson(
        tdMapFromJson(json['terms_of_service']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The styles supported for text composition have changed
@immutable
final class UpdateTextCompositionStyles extends Update {
  UpdateTextCompositionStyles({required this.styles});

  /// [styles] The new list of supported styles
  final List<TextCompositionStyle> styles;

  static const String constructor = 'updateTextCompositionStyles';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'styles': styles.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static UpdateTextCompositionStyles? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateTextCompositionStyles(
      styles: List<TextCompositionStyle>.from(
        tdListFromJson(json['styles'])
            .map((item) => TextCompositionStyle.fromJson(tdMapFromJson(item)))
            .whereType<TextCompositionStyle>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The Toncoin revenue earned by the current user has changed. If Toncoin
/// transaction screen of the chat is opened, then getTonTransactions may be
/// called to fetch new transactions
@immutable
final class UpdateTonRevenueStatus extends Update {
  UpdateTonRevenueStatus({this.status});

  /// [status] New Toncoin revenue status
  final TonRevenueStatus? status;

  static const String constructor = 'updateTonRevenueStatus';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'status': status?.toJson(),
    '@type': constructor,
  };

  static UpdateTonRevenueStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateTonRevenueStatus(
      status: TonRevenueStatus.fromJson(tdMapFromJson(json['status'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Number of messages in a topic has changed; for Saved Messages and channel
/// direct messages chat topics only
@immutable
final class UpdateTopicMessageCount extends Update {
  UpdateTopicMessageCount({
    required this.chatId,
    this.topicId,
    required this.messageCount,
  });

  /// [chatId] Identifier of the chat in topic of which the number of messages
  /// has changed
  final int chatId;

  /// [topicId] Identifier of the topic
  final MessageTopic? topicId;

  /// [messageCount] Approximate number of messages in the topic
  final int messageCount;

  static const String constructor = 'updateTopicMessageCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'topic_id': topicId?.toJson(),
    'message_count': messageCount,
    '@type': constructor,
  };

  static UpdateTopicMessageCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateTopicMessageCount(
      chatId: (json['chat_id'] as int?) ?? 0,
      topicId: MessageTopic.fromJson(tdMapFromJson(json['topic_id'])),
      messageCount: (json['message_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of trending sticker sets was updated or some of them were viewed
@immutable
final class UpdateTrendingStickerSets extends Update {
  UpdateTrendingStickerSets({this.stickerType, this.stickerSets});

  /// [stickerType] Type of the affected stickers
  final StickerType? stickerType;

  /// [stickerSets] The prefix of the list of trending sticker sets with the
  /// newest trending sticker sets
  final TrendingStickerSets? stickerSets;

  static const String constructor = 'updateTrendingStickerSets';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sticker_type': stickerType?.toJson(),
    'sticker_sets': stickerSets?.toJson(),
    '@type': constructor,
  };

  static UpdateTrendingStickerSets? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateTrendingStickerSets(
      stickerType: StickerType.fromJson(tdMapFromJson(json['sticker_type'])),
      stickerSets: TrendingStickerSets.fromJson(
        tdMapFromJson(json['sticker_sets']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Lists of bots which Mini Apps must be allowed to read text from clipboard
/// and must be opened without a warning
@immutable
final class UpdateTrustedMiniAppBots extends Update {
  UpdateTrustedMiniAppBots({required this.botUserIds});

  /// [botUserIds] List of user identifiers of the bots; the corresponding users
  /// may not be sent using updateUser updates and may not be accessible
  final List<int> botUserIds;

  static const String constructor = 'updateTrustedMiniAppBots';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bot_user_ids': botUserIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static UpdateTrustedMiniAppBots? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateTrustedMiniAppBots(
      botUserIds: List<int>.from(
        tdListFromJson(
          json['bot_user_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The first unconfirmed session has changed
@immutable
final class UpdateUnconfirmedSession extends Update {
  UpdateUnconfirmedSession({this.session});

  /// [session] The unconfirmed session; may be null if none
  final UnconfirmedSession? session;

  static const String constructor = 'updateUnconfirmedSession';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'session': session?.toJson(),
    '@type': constructor,
  };

  static UpdateUnconfirmedSession? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUnconfirmedSession(
      session: UnconfirmedSession.fromJson(tdMapFromJson(json['session'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Number of unread chats, i.e. with unread messages or marked as unread, has
/// changed. This update is sent only if the message database is used
@immutable
final class UpdateUnreadChatCount extends Update {
  UpdateUnreadChatCount({
    this.chatList,
    required this.totalCount,
    required this.unreadCount,
    required this.unreadUnmutedCount,
    required this.markedAsUnreadCount,
    required this.markedAsUnreadUnmutedCount,
  });

  /// [chatList] The chat list with changed number of unread messages
  final ChatList? chatList;

  /// [totalCount] Approximate total number of chats in the chat list
  final int totalCount;

  /// [unreadCount] Total number of unread chats
  final int unreadCount;

  /// [unreadUnmutedCount] Total number of unread unmuted chats
  final int unreadUnmutedCount;

  /// [markedAsUnreadCount] Total number of chats marked as unread
  final int markedAsUnreadCount;

  /// [markedAsUnreadUnmutedCount] Total number of unmuted chats marked as
  /// unread
  final int markedAsUnreadUnmutedCount;

  static const String constructor = 'updateUnreadChatCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_list': chatList?.toJson(),
    'total_count': totalCount,
    'unread_count': unreadCount,
    'unread_unmuted_count': unreadUnmutedCount,
    'marked_as_unread_count': markedAsUnreadCount,
    'marked_as_unread_unmuted_count': markedAsUnreadUnmutedCount,
    '@type': constructor,
  };

  static UpdateUnreadChatCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUnreadChatCount(
      chatList: ChatList.fromJson(tdMapFromJson(json['chat_list'])),
      totalCount: (json['total_count'] as int?) ?? 0,
      unreadCount: (json['unread_count'] as int?) ?? 0,
      unreadUnmutedCount: (json['unread_unmuted_count'] as int?) ?? 0,
      markedAsUnreadCount: (json['marked_as_unread_count'] as int?) ?? 0,
      markedAsUnreadUnmutedCount:
          (json['marked_as_unread_unmuted_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Number of unread messages in a chat list has changed. This update is sent
/// only if the message database is used
@immutable
final class UpdateUnreadMessageCount extends Update {
  UpdateUnreadMessageCount({
    this.chatList,
    required this.unreadCount,
    required this.unreadUnmutedCount,
  });

  /// [chatList] The chat list with changed number of unread messages
  final ChatList? chatList;

  /// [unreadCount] Total number of unread messages
  final int unreadCount;

  /// [unreadUnmutedCount] Total number of unread messages in unmuted chats
  final int unreadUnmutedCount;

  static const String constructor = 'updateUnreadMessageCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_list': chatList?.toJson(),
    'unread_count': unreadCount,
    'unread_unmuted_count': unreadUnmutedCount,
    '@type': constructor,
  };

  static UpdateUnreadMessageCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUnreadMessageCount(
      chatList: ChatList.fromJson(tdMapFromJson(json['chat_list'])),
      unreadCount: (json['unread_count'] as int?) ?? 0,
      unreadUnmutedCount: (json['unread_unmuted_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Some data of a user has changed. This update is guaranteed to come before
/// the user identifier is returned to the application
@immutable
final class UpdateUser extends Update {
  UpdateUser({this.user});

  /// [user] New data about the user
  final User? user;

  static const String constructor = 'updateUser';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user': user?.toJson(),
    '@type': constructor,
  };

  static UpdateUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUser(user: User.fromJson(tdMapFromJson(json['user'])));
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Some data in userFullInfo has been changed
@immutable
final class UpdateUserFullInfo extends Update {
  UpdateUserFullInfo({required this.userId, this.userFullInfo});

  /// [userId] User identifier
  final int userId;

  /// [userFullInfo] New full information about the user
  final UserFullInfo? userFullInfo;

  static const String constructor = 'updateUserFullInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'user_full_info': userFullInfo?.toJson(),
    '@type': constructor,
  };

  static UpdateUserFullInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUserFullInfo(
      userId: (json['user_id'] as int?) ?? 0,
      userFullInfo: UserFullInfo.fromJson(
        tdMapFromJson(json['user_full_info']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Some privacy setting rules have been changed
@immutable
final class UpdateUserPrivacySettingRules extends Update {
  UpdateUserPrivacySettingRules({this.setting, this.rules});

  /// [setting] The privacy setting
  final UserPrivacySetting? setting;

  /// [rules] New privacy rules
  final UserPrivacySettingRules? rules;

  static const String constructor = 'updateUserPrivacySettingRules';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'setting': setting?.toJson(),
    'rules': rules?.toJson(),
    '@type': constructor,
  };

  static UpdateUserPrivacySettingRules? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUserPrivacySettingRules(
      setting: UserPrivacySetting.fromJson(tdMapFromJson(json['setting'])),
      rules: UserPrivacySettingRules.fromJson(tdMapFromJson(json['rules'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user went online or offline
@immutable
final class UpdateUserStatus extends Update {
  UpdateUserStatus({required this.userId, this.status});

  /// [userId] User identifier
  final int userId;

  /// [status] New status of the user
  final UserStatus? status;

  static const String constructor = 'updateUserStatus';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'status': status?.toJson(),
    '@type': constructor,
  };

  static UpdateUserStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUserStatus(
      userId: (json['user_id'] as int?) ?? 0,
      status: UserStatus.fromJson(tdMapFromJson(json['status'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An automatically scheduled message with video has been successfully sent
/// after conversion
@immutable
final class UpdateVideoPublished extends Update {
  UpdateVideoPublished({required this.chatId, required this.messageId});

  /// [chatId] Identifier of the chat with the message
  final int chatId;

  /// [messageId] Identifier of the sent message
  final int messageId;

  static const String constructor = 'updateVideoPublished';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    '@type': constructor,
  };

  static UpdateVideoPublished? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateVideoPublished(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message was sent by an opened Web App, so the Web App needs to be closed
@immutable
final class UpdateWebAppMessageSent extends Update {
  UpdateWebAppMessageSent({required this.webAppLaunchId});

  /// [webAppLaunchId] Identifier of Web App launch
  final int webAppLaunchId;

  static const String constructor = 'updateWebAppMessageSent';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'web_app_launch_id': webAppLaunchId.toString(),
    '@type': constructor,
  };

  static UpdateWebAppMessageSent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateWebAppMessageSent(
      webAppLaunchId:
          int.tryParse(
            (json['web_app_launch_id'] as dynamic)?.toString() ?? '',
          ) ??
          0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
