import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a topic of messages in a chat
@immutable
sealed class MessageTopic extends TdObject {
  const MessageTopic();

  static const String constructor = 'messageTopic';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [MessageTopicDirectMessages]
  /// [MessageTopicForum]
  /// [MessageTopicSavedMessages]
  /// [MessageTopicThread]
  static MessageTopic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageTopicDirectMessages.constructor:
        return MessageTopicDirectMessages.fromJson(json);

      case MessageTopicForum.constructor:
        return MessageTopicForum.fromJson(json);

      case MessageTopicSavedMessages.constructor:
        return MessageTopicSavedMessages.fromJson(json);

      case MessageTopicThread.constructor:
        return MessageTopicThread.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A topic in a channel direct messages chat administered by the current user
@immutable
final class MessageTopicDirectMessages extends MessageTopic {
  MessageTopicDirectMessages({required this.directMessagesChatTopicId});

  /// [directMessagesChatTopicId] Unique identifier of the topic
  final int directMessagesChatTopicId;

  static const String constructor = 'messageTopicDirectMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'direct_messages_chat_topic_id': directMessagesChatTopicId,
    '@type': constructor,
  };

  static MessageTopicDirectMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageTopicDirectMessages(
      directMessagesChatTopicId:
          (json['direct_messages_chat_topic_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A topic in a forum supergroup chat or a chat with a bot
@immutable
final class MessageTopicForum extends MessageTopic {
  MessageTopicForum({required this.forumTopicId});

  /// [forumTopicId] Unique identifier of the forum topic
  final int forumTopicId;

  static const String constructor = 'messageTopicForum';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'forum_topic_id': forumTopicId,
    '@type': constructor,
  };

  static MessageTopicForum? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageTopicForum(
      forumTopicId: (json['forum_topic_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A topic in Saved Messages chat
@immutable
final class MessageTopicSavedMessages extends MessageTopic {
  MessageTopicSavedMessages({required this.savedMessagesTopicId});

  /// [savedMessagesTopicId] Unique identifier of the Saved Messages topic
  final int savedMessagesTopicId;

  static const String constructor = 'messageTopicSavedMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'saved_messages_topic_id': savedMessagesTopicId,
    '@type': constructor,
  };

  static MessageTopicSavedMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageTopicSavedMessages(
      savedMessagesTopicId: (json['saved_messages_topic_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A topic in a non-forum supergroup chat
@immutable
final class MessageTopicThread extends MessageTopic {
  MessageTopicThread({required this.messageThreadId});

  /// [messageThreadId] Unique identifier of the message thread
  final int messageThreadId;

  static const String constructor = 'messageTopicThread';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'message_thread_id': messageThreadId,
    '@type': constructor,
  };

  static MessageTopicThread? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageTopicThread(
      messageThreadId: (json['message_thread_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
