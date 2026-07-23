import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about the message or the story to be replied
@immutable
sealed class InputMessageReplyTo extends TdObject {
  const InputMessageReplyTo();

  static const String constructor = 'inputMessageReplyTo';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [InputMessageReplyToExternalMessage]
  /// [InputMessageReplyToMessage]
  /// [InputMessageReplyToStory]
  static InputMessageReplyTo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputMessageReplyToExternalMessage.constructor:
        return InputMessageReplyToExternalMessage.fromJson(json);

      case InputMessageReplyToMessage.constructor:
        return InputMessageReplyToMessage.fromJson(json);

      case InputMessageReplyToStory.constructor:
        return InputMessageReplyToStory.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes a message to be replied that is from a different chat or a forum
/// topic; not supported in secret chats
@immutable
final class InputMessageReplyToExternalMessage extends InputMessageReplyTo {
  InputMessageReplyToExternalMessage({
    required this.chatId,
    required this.messageId,
    this.quote,
    required this.checklistTaskId,
    required this.pollOptionId,
  });

  /// [chatId] The identifier of the chat to which the message to be replied
  /// belongs
  final int chatId;

  /// [messageId] The identifier of the message to be replied in the specified
  /// chat. A message can be replied in another chat or forum topic only if
  /// messageProperties.can_be_replied_in_another_chat
  final int messageId;

  /// [quote] Quote from the message to be replied; pass null if none
  final InputTextQuote? quote;

  /// [checklistTaskId] Identifier of the checklist task in the message to be
  /// replied; pass 0 to reply to the whole message
  final int checklistTaskId;

  /// [pollOptionId] Identifier of the poll option in the message to be replied;
  /// pass an empty string if none
  final String pollOptionId;

  static const String constructor = 'inputMessageReplyToExternalMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    'quote': quote?.toJson(),
    'checklist_task_id': checklistTaskId,
    'poll_option_id': pollOptionId,
    '@type': constructor,
  };

  static InputMessageReplyToExternalMessage? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InputMessageReplyToExternalMessage(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      quote: InputTextQuote.fromJson(tdMapFromJson(json['quote'])),
      checklistTaskId: (json['checklist_task_id'] as int?) ?? 0,
      pollOptionId: (json['poll_option_id'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes a message to be replied in the same chat and forum topic
@immutable
final class InputMessageReplyToMessage extends InputMessageReplyTo {
  InputMessageReplyToMessage({
    required this.messageId,
    this.quote,
    required this.checklistTaskId,
    required this.pollOptionId,
  });

  /// [messageId] The identifier of the message to be replied in the same chat
  /// and forum topic. A message can be replied in the same chat and forum topic
  /// only if messageProperties.can_be_replied
  final int messageId;

  /// [quote] Quote from the message to be replied; pass null if none. Must
  /// always be null for replies in secret chats
  final InputTextQuote? quote;

  /// [checklistTaskId] Identifier of the checklist task in the message to be
  /// replied; pass 0 to reply to the whole message
  final int checklistTaskId;

  /// [pollOptionId] Identifier of the poll option in the message to be replied;
  /// pass an empty string if none
  final String pollOptionId;

  static const String constructor = 'inputMessageReplyToMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'message_id': messageId,
    'quote': quote?.toJson(),
    'checklist_task_id': checklistTaskId,
    'poll_option_id': pollOptionId,
    '@type': constructor,
  };

  static InputMessageReplyToMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageReplyToMessage(
      messageId: (json['message_id'] as int?) ?? 0,
      quote: InputTextQuote.fromJson(tdMapFromJson(json['quote'])),
      checklistTaskId: (json['checklist_task_id'] as int?) ?? 0,
      pollOptionId: (json['poll_option_id'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes a story to be replied
@immutable
final class InputMessageReplyToStory extends InputMessageReplyTo {
  InputMessageReplyToStory({
    required this.storyPosterChatId,
    required this.storyId,
  });

  /// [storyPosterChatId] The identifier of the poster of the story. Currently,
  /// stories can be replied only in the chat that posted the story; channel
  /// stories can't be replied
  final int storyPosterChatId;

  /// [storyId] The identifier of the story
  final int storyId;

  static const String constructor = 'inputMessageReplyToStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story_poster_chat_id': storyPosterChatId,
    'story_id': storyId,
    '@type': constructor,
  };

  static InputMessageReplyToStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageReplyToStory(
      storyPosterChatId: (json['story_poster_chat_id'] as int?) ?? 0,
      storyId: (json['story_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
