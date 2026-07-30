import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about the message or the story a message is replying
/// to
@immutable
sealed class MessageReplyTo extends TdObject {
  const MessageReplyTo();

  static const String constructor = 'messageReplyTo';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [MessageReplyToMessage]
  /// [MessageReplyToStory]
  static MessageReplyTo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageReplyToMessage.constructor:
        return MessageReplyToMessage.fromJson(json);

      case MessageReplyToStory.constructor:
        return MessageReplyToStory.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes a message replied by a given message
@immutable
final class MessageReplyToMessage extends MessageReplyTo {
  MessageReplyToMessage({
    required this.chatId,
    required this.messageId,
    this.quote,
    required this.checklistTaskId,
    required this.pollOptionId,
    this.origin,
    required this.originSendDate,
    this.content,
  });

  /// [chatId] The identifier of the chat to which the message belongs; may be 0
  /// if the replied message is in unknown chat
  final int chatId;

  /// [messageId] The identifier of the message; may be 0 if the replied message
  /// is in unknown chat
  final int messageId;

  /// [quote] Chosen quote from the replied message; may be null if none
  final TextQuote? quote;

  /// [checklistTaskId] Identifier of the checklist task in the original message
  /// that was replied; 0 if none
  final int checklistTaskId;

  /// [pollOptionId] Identifier of the poll option in the original message that
  /// was replied; empty if none
  final String pollOptionId;

  /// [origin] Information about origin of the message if the message was from
  /// another chat or topic; may be null for messages from the same chat
  final MessageOrigin? origin;

  /// [originSendDate] Point in time (Unix timestamp) when the message was sent
  /// if the message was from another chat or topic; 0 for messages from the
  /// same chat
  final int originSendDate;

  /// [content] Media content of the message if the message was from another
  /// chat or topic; may be null for messages from the same chat and messages
  /// without media. Can be only one of the following types: messageAnimation,
  /// messageAudio, messageChecklist, messageContact, messageDice,
  /// messageDocument, messageGame, messageGiveaway, messageGiveawayWinners,
  /// messageInvoice, messageLocation, messagePaidMedia, messagePhoto,
  /// messagePoll, messageStakeDice, messageSticker, messageStory, messageText
  /// (for link preview), messageVenue, messageVideo, messageVideoNote, or
  /// messageVoiceNote
  final MessageContent? content;

  static const String constructor = 'messageReplyToMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    'quote': quote?.toJson(),
    'checklist_task_id': checklistTaskId,
    'poll_option_id': pollOptionId,
    'origin': origin?.toJson(),
    'origin_send_date': originSendDate,
    'content': content?.toJson(),
    '@type': constructor,
  };

  static MessageReplyToMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageReplyToMessage(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      quote: TextQuote.fromJson(tdMapFromJson(json['quote'])),
      checklistTaskId: (json['checklist_task_id'] as int?) ?? 0,
      pollOptionId: (json['poll_option_id'] as String?) ?? '',
      origin: MessageOrigin.fromJson(tdMapFromJson(json['origin'])),
      originSendDate: (json['origin_send_date'] as int?) ?? 0,
      content: MessageContent.fromJson(tdMapFromJson(json['content'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes a story replied by a given message
@immutable
final class MessageReplyToStory extends MessageReplyTo {
  MessageReplyToStory({required this.storyPosterChatId, required this.storyId});

  /// [storyPosterChatId] The identifier of the poster of the story
  final int storyPosterChatId;

  /// [storyId] The identifier of the story
  final int storyId;

  static const String constructor = 'messageReplyToStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story_poster_chat_id': storyPosterChatId,
    'story_id': storyId,
    '@type': constructor,
  };

  static MessageReplyToStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageReplyToStory(
      storyPosterChatId: (json['story_poster_chat_id'] as int?) ?? 0,
      storyId: (json['story_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
