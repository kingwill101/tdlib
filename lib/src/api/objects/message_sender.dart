import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about the sender of a message
@immutable
sealed class MessageSender extends TdObject {
  const MessageSender();

  static const String constructor = 'messageSender';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [MessageSenderChat]
  /// [MessageSenderUser]
  static MessageSender? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageSenderChat.constructor:
        return MessageSenderChat.fromJson(json);

      case MessageSenderUser.constructor:
        return MessageSenderUser.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message was sent on behalf of a chat
@immutable
final class MessageSenderChat extends MessageSender {
  MessageSenderChat({required this.chatId});

  /// [chatId] Identifier of the chat that sent the message
  final int chatId;

  static const String constructor = 'messageSenderChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    '@type': constructor,
  };

  static MessageSenderChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSenderChat(chatId: (json['chat_id'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message was sent by a known user
@immutable
final class MessageSenderUser extends MessageSender {
  MessageSenderUser({required this.userId});

  /// [userId] Identifier of the user who sent the message
  final int userId;

  static const String constructor = 'messageSenderUser';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    '@type': constructor,
  };

  static MessageSenderUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSenderUser(userId: (json['user_id'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
