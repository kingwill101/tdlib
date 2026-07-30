import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about the origin of a message
@immutable
sealed class MessageOrigin extends TdObject {
  const MessageOrigin();

  static const String constructor = 'messageOrigin';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [MessageOriginChannel]
  /// [MessageOriginChat]
  /// [MessageOriginHiddenUser]
  /// [MessageOriginUser]
  static MessageOrigin? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageOriginChannel.constructor:
        return MessageOriginChannel.fromJson(json);

      case MessageOriginChat.constructor:
        return MessageOriginChat.fromJson(json);

      case MessageOriginHiddenUser.constructor:
        return MessageOriginHiddenUser.fromJson(json);

      case MessageOriginUser.constructor:
        return MessageOriginUser.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message was originally a post in a channel
@immutable
final class MessageOriginChannel extends MessageOrigin {
  MessageOriginChannel({
    required this.chatId,
    required this.messageId,
    required this.authorSignature,
  });

  /// [chatId] Identifier of the channel chat to which the message was
  /// originally sent
  final int chatId;

  /// [messageId] Message identifier of the original message
  final int messageId;

  /// [authorSignature] Original post author signature
  final String authorSignature;

  static const String constructor = 'messageOriginChannel';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    'author_signature': authorSignature,
    '@type': constructor,
  };

  static MessageOriginChannel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageOriginChannel(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      authorSignature: (json['author_signature'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message was originally sent on behalf of a chat
@immutable
final class MessageOriginChat extends MessageOrigin {
  MessageOriginChat({
    required this.senderChatId,
    required this.authorSignature,
  });

  /// [senderChatId] Identifier of the chat that originally sent the message
  final int senderChatId;

  /// [authorSignature] For messages originally sent by an anonymous chat
  /// administrator, original message author signature
  final String authorSignature;

  static const String constructor = 'messageOriginChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sender_chat_id': senderChatId,
    'author_signature': authorSignature,
    '@type': constructor,
  };

  static MessageOriginChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageOriginChat(
      senderChatId: (json['sender_chat_id'] as int?) ?? 0,
      authorSignature: (json['author_signature'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message was originally sent by a user, which is hidden by their
/// privacy settings
@immutable
final class MessageOriginHiddenUser extends MessageOrigin {
  MessageOriginHiddenUser({required this.senderName});

  /// [senderName] Name of the sender
  final String senderName;

  static const String constructor = 'messageOriginHiddenUser';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sender_name': senderName,
    '@type': constructor,
  };

  static MessageOriginHiddenUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageOriginHiddenUser(
      senderName: (json['sender_name'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message was originally sent by a known user
@immutable
final class MessageOriginUser extends MessageOrigin {
  MessageOriginUser({required this.senderUserId});

  /// [senderUserId] Identifier of the user who originally sent the message
  final int senderUserId;

  static const String constructor = 'messageOriginUser';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sender_user_id': senderUserId,
    '@type': constructor,
  };

  static MessageOriginUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageOriginUser(
      senderUserId: (json['sender_user_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
