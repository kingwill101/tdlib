import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains detailed information about a notification
@immutable
sealed class NotificationType extends TdObject {
  const NotificationType();

  static const String constructor = 'notificationType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [NotificationTypeNewCall]
  /// [NotificationTypeNewMessage]
  /// [NotificationTypeNewPushMessage]
  /// [NotificationTypeNewSecretChat]
  static NotificationType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case NotificationTypeNewCall.constructor:
        return NotificationTypeNewCall.fromJson(json);

      case NotificationTypeNewMessage.constructor:
        return NotificationTypeNewMessage.fromJson(json);

      case NotificationTypeNewPushMessage.constructor:
        return NotificationTypeNewPushMessage.fromJson(json);

      case NotificationTypeNewSecretChat.constructor:
        return NotificationTypeNewSecretChat.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// New call was received
@immutable
final class NotificationTypeNewCall extends NotificationType {
  NotificationTypeNewCall({required this.callId});

  /// [callId] Call identifier
  final int callId;

  static const String constructor = 'notificationTypeNewCall';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'call_id': callId,
    '@type': constructor,
  };

  static NotificationTypeNewCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NotificationTypeNewCall(callId: (json['call_id'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// New message was received
@immutable
final class NotificationTypeNewMessage extends NotificationType {
  NotificationTypeNewMessage({this.message, required this.showPreview});

  /// [message] The message
  final Message? message;

  /// [showPreview] True, if message content must be displayed in notifications
  final bool showPreview;

  static const String constructor = 'notificationTypeNewMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'message': message?.toJson(),
    'show_preview': showPreview,
    '@type': constructor,
  };

  static NotificationTypeNewMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NotificationTypeNewMessage(
      message: Message.fromJson(tdMapFromJson(json['message'])),
      showPreview: (json['show_preview'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// New message was received through a push notification
@immutable
final class NotificationTypeNewPushMessage extends NotificationType {
  NotificationTypeNewPushMessage({
    required this.messageId,
    this.senderId,
    required this.senderName,
    required this.isOutgoing,
    this.content,
  });

  /// [messageId] The message identifier. The message will not be available in
  /// the chat history, but the identifier can be used in viewMessages, or as a
  /// message to be replied in the same chat
  final int messageId;

  /// [senderId] Identifier of the sender of the message. Corresponding user or
  /// chat may be inaccessible
  final MessageSender? senderId;

  /// [senderName] Name of the sender
  final String senderName;

  /// [isOutgoing] True, if the message is outgoing
  final bool isOutgoing;

  /// [content] Push message content
  final PushMessageContent? content;

  static const String constructor = 'notificationTypeNewPushMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'message_id': messageId,
    'sender_id': senderId?.toJson(),
    'sender_name': senderName,
    'is_outgoing': isOutgoing,
    'content': content?.toJson(),
    '@type': constructor,
  };

  static NotificationTypeNewPushMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NotificationTypeNewPushMessage(
      messageId: (json['message_id'] as int?) ?? 0,
      senderId: MessageSender.fromJson(tdMapFromJson(json['sender_id'])),
      senderName: (json['sender_name'] as String?) ?? '',
      isOutgoing: (json['is_outgoing'] as bool?) ?? false,
      content: PushMessageContent.fromJson(tdMapFromJson(json['content'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// New secret chat was created
@immutable
final class NotificationTypeNewSecretChat extends NotificationType {
  const NotificationTypeNewSecretChat();

  static const String constructor = 'notificationTypeNewSecretChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static NotificationTypeNewSecretChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NotificationTypeNewSecretChat();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
