import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a forum topic
@immutable
final class ForumTopic extends TdObject {
  ForumTopic({
    this.info,
    this.lastMessage,
    required this.order,
    required this.isPinned,
    required this.unreadCount,
    required this.lastReadInboxMessageId,
    required this.lastReadOutboxMessageId,
    required this.unreadMentionCount,
    required this.unreadReactionCount,
    required this.unreadPollVoteCount,
    this.notificationSettings,
    this.draftMessage,
  });

  /// [info] Basic information about the topic
  final ForumTopicInfo? info;

  /// [lastMessage] Last message in the topic; may be null if unknown
  final Message? lastMessage;

  /// [order] A parameter used to determine order of the topic in the topic
  /// list. Topics must be sorted by the order in descending order
  final int order;

  /// [isPinned] True, if the topic is pinned in the topic list
  final bool isPinned;

  /// [unreadCount] Number of unread messages in the topic
  final int unreadCount;

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

  static const String constructor = 'forumTopic';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'info': info?.toJson(),
    'last_message': lastMessage?.toJson(),
    'order': order.toString(),
    'is_pinned': isPinned,
    'unread_count': unreadCount,
    'last_read_inbox_message_id': lastReadInboxMessageId,
    'last_read_outbox_message_id': lastReadOutboxMessageId,
    'unread_mention_count': unreadMentionCount,
    'unread_reaction_count': unreadReactionCount,
    'unread_poll_vote_count': unreadPollVoteCount,
    'notification_settings': notificationSettings?.toJson(),
    'draft_message': draftMessage?.toJson(),
    '@type': constructor,
  };

  static ForumTopic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ForumTopic(
      info: ForumTopicInfo.fromJson(tdMapFromJson(json['info'])),
      lastMessage: Message.fromJson(tdMapFromJson(json['last_message'])),
      order: int.tryParse((json['order'] as dynamic)?.toString() ?? '') ?? 0,
      isPinned: (json['is_pinned'] as bool?) ?? false,
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
      draftMessage: DraftMessage.fromJson(tdMapFromJson(json['draft_message'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
