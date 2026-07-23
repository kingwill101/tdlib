import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a topic in a channel direct messages chat
/// administered by the current user
@immutable
final class DirectMessagesChatTopic extends TdObject {
  DirectMessagesChatTopic({
    required this.chatId,
    required this.id,
    this.senderId,
    required this.order,
    required this.canSendUnpaidMessages,
    required this.isMarkedAsUnread,
    required this.unreadCount,
    required this.lastReadInboxMessageId,
    required this.lastReadOutboxMessageId,
    required this.unreadReactionCount,
    this.lastMessage,
    this.draftMessage,
  });

  /// [chatId] Identifier of the chat to which the topic belongs
  final int chatId;

  /// [id] Unique topic identifier
  final int id;

  /// [senderId] Identifier of the user or chat that sends the messages to the
  /// topic
  final MessageSender? senderId;

  /// [order] A parameter used to determine order of the topic in the topic
  /// list. Topics must be sorted by the order in descending order
  final int order;

  /// [canSendUnpaidMessages] True, if the other party can send unpaid messages
  /// even if the chat has paid messages enabled
  final bool canSendUnpaidMessages;

  /// [isMarkedAsUnread] True, if the topic is marked as unread
  final bool isMarkedAsUnread;

  /// [unreadCount] Number of unread messages in the chat
  final int unreadCount;

  /// [lastReadInboxMessageId] Identifier of the last read incoming message
  final int lastReadInboxMessageId;

  /// [lastReadOutboxMessageId] Identifier of the last read outgoing message
  final int lastReadOutboxMessageId;

  /// [unreadReactionCount] Number of messages with unread reactions in the chat
  final int unreadReactionCount;

  /// [lastMessage] Last message in the topic; may be null if none or unknown
  final Message? lastMessage;

  /// [draftMessage] A draft of a message in the topic; may be null if none
  final DraftMessage? draftMessage;

  static const String constructor = 'directMessagesChatTopic';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'id': id,
    'sender_id': senderId?.toJson(),
    'order': order.toString(),
    'can_send_unpaid_messages': canSendUnpaidMessages,
    'is_marked_as_unread': isMarkedAsUnread,
    'unread_count': unreadCount,
    'last_read_inbox_message_id': lastReadInboxMessageId,
    'last_read_outbox_message_id': lastReadOutboxMessageId,
    'unread_reaction_count': unreadReactionCount,
    'last_message': lastMessage?.toJson(),
    'draft_message': draftMessage?.toJson(),
    '@type': constructor,
  };

  static DirectMessagesChatTopic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DirectMessagesChatTopic(
      chatId: (json['chat_id'] as int?) ?? 0,
      id: (json['id'] as int?) ?? 0,
      senderId: MessageSender.fromJson(tdMapFromJson(json['sender_id'])),
      order: int.tryParse((json['order'] as dynamic)?.toString() ?? '') ?? 0,
      canSendUnpaidMessages:
          (json['can_send_unpaid_messages'] as bool?) ?? false,
      isMarkedAsUnread: (json['is_marked_as_unread'] as bool?) ?? false,
      unreadCount: (json['unread_count'] as int?) ?? 0,
      lastReadInboxMessageId: (json['last_read_inbox_message_id'] as int?) ?? 0,
      lastReadOutboxMessageId:
          (json['last_read_outbox_message_id'] as int?) ?? 0,
      unreadReactionCount: (json['unread_reaction_count'] as int?) ?? 0,
      lastMessage: Message.fromJson(tdMapFromJson(json['last_message'])),
      draftMessage: DraftMessage.fromJson(tdMapFromJson(json['draft_message'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
