import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A chat. (Can be a private chat, basic group, supergroup, or secret chat)
@immutable
final class Chat extends TdObject {
  Chat({
    required this.id,
    this.type,
    required this.title,
    this.photo,
    required this.accentColorId,
    required this.backgroundCustomEmojiId,
    this.upgradedGiftColors,
    required this.profileAccentColorId,
    required this.profileBackgroundCustomEmojiId,
    this.permissions,
    this.lastMessage,
    required this.positions,
    required this.chatLists,
    this.messageSenderId,
    this.blockList,
    required this.hasProtectedContent,
    required this.isTranslatable,
    required this.isMarkedAsUnread,
    required this.viewAsTopics,
    required this.hasScheduledMessages,
    required this.canBeDeletedOnlyForSelf,
    required this.canBeDeletedForAllUsers,
    required this.canBeReported,
    required this.defaultDisableNotification,
    required this.unreadCount,
    required this.lastReadInboxMessageId,
    required this.lastReadOutboxMessageId,
    required this.unreadMentionCount,
    required this.unreadReactionCount,
    required this.unreadPollVoteCount,
    this.notificationSettings,
    this.availableReactions,
    required this.messageAutoDeleteTime,
    this.emojiStatus,
    this.background,
    this.theme,
    this.actionBar,
    this.businessBotManageBar,
    this.videoChat,
    this.pendingJoinRequests,
    required this.replyMarkupMessageId,
    this.draftMessage,
    required this.clientData,
  });

  /// [id] Chat unique identifier
  final int id;

  /// [type] Type of the chat
  final ChatType? type;

  /// [title] Chat title
  final String title;

  /// [photo] Chat photo; may be null
  final ChatPhotoInfo? photo;

  /// [accentColorId] Identifier of the accent color for message sender name,
  /// and backgrounds of chat photo, reply header, and link preview
  final int accentColorId;

  /// [backgroundCustomEmojiId] Identifier of a custom emoji to be shown on the
  /// reply header and link preview background for messages sent by the chat; 0
  /// if none
  final int backgroundCustomEmojiId;

  /// [upgradedGiftColors] Color scheme based on an upgraded gift to be used for
  /// the chat instead of accent_color_id and background_custom_emoji_id; may be
  /// null if none
  final UpgradedGiftColors? upgradedGiftColors;

  /// [profileAccentColorId] Identifier of the profile accent color for the
  /// chat's profile; -1 if none
  final int profileAccentColorId;

  /// [profileBackgroundCustomEmojiId] Identifier of a custom emoji to be shown
  /// on the background of the chat's profile; 0 if none
  final int profileBackgroundCustomEmojiId;

  /// [permissions] Actions that non-administrator chat members are allowed to
  /// take in the chat
  final ChatPermissions? permissions;

  /// [lastMessage] Last message in the chat; may be null if none or unknown
  final Message? lastMessage;

  /// [positions] Positions of the chat in chat lists
  final List<ChatPosition> positions;

  /// [chatLists] Chat lists to which the chat belongs. A chat can have a
  /// non-zero position in a chat list even if it doesn't belong to the chat
  /// list and have no position in a chat list even if it belongs to the chat
  /// list
  final List<ChatList> chatLists;

  /// [messageSenderId] Identifier of a user or chat that is selected to send
  /// messages in the chat; may be null if the user can't change message sender
  final MessageSender? messageSenderId;

  /// [blockList] Block list to which the chat is added; may be null if none
  final BlockList? blockList;

  /// [hasProtectedContent] True, if chat content can't be saved locally,
  /// forwarded, or copied
  final bool hasProtectedContent;

  /// [isTranslatable] True, if translation of all messages in the chat must be
  /// suggested to the user
  final bool isTranslatable;

  /// [isMarkedAsUnread] True, if the chat is marked as unread
  final bool isMarkedAsUnread;

  /// [viewAsTopics] True, if the chat is a forum supergroup that must be shown
  /// in the "View as topics" mode, or Saved Messages chat that must be shown in
  /// the "View as chats"
  final bool viewAsTopics;

  /// [hasScheduledMessages] True, if the chat has scheduled messages
  final bool hasScheduledMessages;

  /// [canBeDeletedOnlyForSelf] True, if the chat messages can be deleted only
  /// for the current user while other users will continue to see the messages
  final bool canBeDeletedOnlyForSelf;

  /// [canBeDeletedForAllUsers] True, if the chat messages can be deleted for
  /// all users
  final bool canBeDeletedForAllUsers;

  /// [canBeReported] True, if the chat can be reported to Telegram moderators
  /// through reportChat or reportChatPhoto
  final bool canBeReported;

  /// [defaultDisableNotification] Default value of the disable_notification
  /// parameter, used when a message is sent to the chat
  final bool defaultDisableNotification;

  /// [unreadCount] Number of unread messages in the chat
  final int unreadCount;

  /// [lastReadInboxMessageId] Identifier of the last read incoming message
  final int lastReadInboxMessageId;

  /// [lastReadOutboxMessageId] Identifier of the last read outgoing message
  final int lastReadOutboxMessageId;

  /// [unreadMentionCount] Number of unread messages with a mention/reply in the
  /// chat
  final int unreadMentionCount;

  /// [unreadReactionCount] Number of messages with unread reactions in the chat
  final int unreadReactionCount;

  /// [unreadPollVoteCount] Number of messages with unread poll votes in the
  /// chat
  final int unreadPollVoteCount;

  /// [notificationSettings] Notification settings for the chat
  final ChatNotificationSettings? notificationSettings;

  /// [availableReactions] Types of reaction, available in the chat
  final ChatAvailableReactions? availableReactions;

  /// [messageAutoDeleteTime] Current message auto-delete or self-destruct timer
  /// setting for the chat, in seconds; 0 if disabled. Self-destruct timer in
  /// secret chats starts after the message or its content is viewed.
  /// Auto-delete timer in other chats starts from the send date
  final int messageAutoDeleteTime;

  /// [emojiStatus] Emoji status to be shown along with chat title; may be null
  final EmojiStatus? emojiStatus;

  /// [background] Background set for the chat; may be null if none
  final ChatBackground? background;

  /// [theme] Theme set for the chat; may be null if none
  final ChatTheme? theme;

  /// [actionBar] Information about actions which must be possible to do through
  /// the chat action bar; may be null if none
  final ChatActionBar? actionBar;

  /// [businessBotManageBar] Information about bar for managing a business bot
  /// in the chat; may be null if none
  final BusinessBotManageBar? businessBotManageBar;

  /// [videoChat] Information about video chat of the chat
  final VideoChat? videoChat;

  /// [pendingJoinRequests] Information about pending join requests; may be null
  /// if none
  final ChatJoinRequestsInfo? pendingJoinRequests;

  /// [replyMarkupMessageId] Identifier of the message from which reply markup
  /// needs to be used; 0 if there is no reply markup in the chat
  final int replyMarkupMessageId;

  /// [draftMessage] A draft of a message in the chat; may be null if none
  final DraftMessage? draftMessage;

  /// [clientData] Application-specific data associated with the chat. (For
  /// example, the chat scroll position or local chat notification settings can
  /// be stored here.) Persistent if the message database is used
  final String clientData;

  static const String constructor = 'chat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'type': type?.toJson(),
    'title': title,
    'photo': photo?.toJson(),
    'accent_color_id': accentColorId,
    'background_custom_emoji_id': backgroundCustomEmojiId.toString(),
    'upgraded_gift_colors': upgradedGiftColors?.toJson(),
    'profile_accent_color_id': profileAccentColorId,
    'profile_background_custom_emoji_id': profileBackgroundCustomEmojiId
        .toString(),
    'permissions': permissions?.toJson(),
    'last_message': lastMessage?.toJson(),
    'positions': positions.map((item) => item.toJson()).toList(),
    'chat_lists': chatLists.map((item) => item.toJson()).toList(),
    'message_sender_id': messageSenderId?.toJson(),
    'block_list': blockList?.toJson(),
    'has_protected_content': hasProtectedContent,
    'is_translatable': isTranslatable,
    'is_marked_as_unread': isMarkedAsUnread,
    'view_as_topics': viewAsTopics,
    'has_scheduled_messages': hasScheduledMessages,
    'can_be_deleted_only_for_self': canBeDeletedOnlyForSelf,
    'can_be_deleted_for_all_users': canBeDeletedForAllUsers,
    'can_be_reported': canBeReported,
    'default_disable_notification': defaultDisableNotification,
    'unread_count': unreadCount,
    'last_read_inbox_message_id': lastReadInboxMessageId,
    'last_read_outbox_message_id': lastReadOutboxMessageId,
    'unread_mention_count': unreadMentionCount,
    'unread_reaction_count': unreadReactionCount,
    'unread_poll_vote_count': unreadPollVoteCount,
    'notification_settings': notificationSettings?.toJson(),
    'available_reactions': availableReactions?.toJson(),
    'message_auto_delete_time': messageAutoDeleteTime,
    'emoji_status': emojiStatus?.toJson(),
    'background': background?.toJson(),
    'theme': theme?.toJson(),
    'action_bar': actionBar?.toJson(),
    'business_bot_manage_bar': businessBotManageBar?.toJson(),
    'video_chat': videoChat?.toJson(),
    'pending_join_requests': pendingJoinRequests?.toJson(),
    'reply_markup_message_id': replyMarkupMessageId,
    'draft_message': draftMessage?.toJson(),
    'client_data': clientData,
    '@type': constructor,
  };

  static Chat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Chat(
      id: (json['id'] as int?) ?? 0,
      type: ChatType.fromJson(tdMapFromJson(json['type'])),
      title: (json['title'] as String?) ?? '',
      photo: ChatPhotoInfo.fromJson(tdMapFromJson(json['photo'])),
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
      permissions: ChatPermissions.fromJson(tdMapFromJson(json['permissions'])),
      lastMessage: Message.fromJson(tdMapFromJson(json['last_message'])),
      positions: List<ChatPosition>.from(
        tdListFromJson(json['positions'])
            .map((item) => ChatPosition.fromJson(tdMapFromJson(item)))
            .whereType<ChatPosition>(),
      ),
      chatLists: List<ChatList>.from(
        tdListFromJson(json['chat_lists'])
            .map((item) => ChatList.fromJson(tdMapFromJson(item)))
            .whereType<ChatList>(),
      ),
      messageSenderId: MessageSender.fromJson(
        tdMapFromJson(json['message_sender_id']),
      ),
      blockList: BlockList.fromJson(tdMapFromJson(json['block_list'])),
      hasProtectedContent: (json['has_protected_content'] as bool?) ?? false,
      isTranslatable: (json['is_translatable'] as bool?) ?? false,
      isMarkedAsUnread: (json['is_marked_as_unread'] as bool?) ?? false,
      viewAsTopics: (json['view_as_topics'] as bool?) ?? false,
      hasScheduledMessages: (json['has_scheduled_messages'] as bool?) ?? false,
      canBeDeletedOnlyForSelf:
          (json['can_be_deleted_only_for_self'] as bool?) ?? false,
      canBeDeletedForAllUsers:
          (json['can_be_deleted_for_all_users'] as bool?) ?? false,
      canBeReported: (json['can_be_reported'] as bool?) ?? false,
      defaultDisableNotification:
          (json['default_disable_notification'] as bool?) ?? false,
      unreadCount: (json['unread_count'] as int?) ?? 0,
      lastReadInboxMessageId: (json['last_read_inbox_message_id'] as int?) ?? 0,
      lastReadOutboxMessageId:
          (json['last_read_outbox_message_id'] as int?) ?? 0,
      unreadMentionCount: (json['unread_mention_count'] as int?) ?? 0,
      unreadReactionCount: (json['unread_reaction_count'] as int?) ?? 0,
      unreadPollVoteCount: (json['unread_poll_vote_count'] as int?) ?? 0,
      notificationSettings: ChatNotificationSettings.fromJson(
        tdMapFromJson(json['notification_settings']),
      ),
      availableReactions: ChatAvailableReactions.fromJson(
        tdMapFromJson(json['available_reactions']),
      ),
      messageAutoDeleteTime: (json['message_auto_delete_time'] as int?) ?? 0,
      emojiStatus: EmojiStatus.fromJson(tdMapFromJson(json['emoji_status'])),
      background: ChatBackground.fromJson(tdMapFromJson(json['background'])),
      theme: ChatTheme.fromJson(tdMapFromJson(json['theme'])),
      actionBar: ChatActionBar.fromJson(tdMapFromJson(json['action_bar'])),
      businessBotManageBar: BusinessBotManageBar.fromJson(
        tdMapFromJson(json['business_bot_manage_bar']),
      ),
      videoChat: VideoChat.fromJson(tdMapFromJson(json['video_chat'])),
      pendingJoinRequests: ChatJoinRequestsInfo.fromJson(
        tdMapFromJson(json['pending_join_requests']),
      ),
      replyMarkupMessageId: (json['reply_markup_message_id'] as int?) ?? 0,
      draftMessage: DraftMessage.fromJson(tdMapFromJson(json['draft_message'])),
      clientData: (json['client_data'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
