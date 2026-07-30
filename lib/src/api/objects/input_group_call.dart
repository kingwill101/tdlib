import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a non-joined group call that isn't bound to a chat
@immutable
sealed class InputGroupCall extends TdObject {
  const InputGroupCall();

  static const String constructor = 'inputGroupCall';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [InputGroupCallLink]
  /// [InputGroupCallMessage]
  static InputGroupCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputGroupCallLink.constructor:
        return InputGroupCallLink.fromJson(json);

      case InputGroupCallMessage.constructor:
        return InputGroupCallMessage.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The group call is accessible through a link
@immutable
final class InputGroupCallLink extends InputGroupCall {
  InputGroupCallLink({required this.link});

  /// [link] The link for the group call
  final String link;

  static const String constructor = 'inputGroupCallLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'link': link,
    '@type': constructor,
  };

  static InputGroupCallLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputGroupCallLink(link: (json['link'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The group call is accessible through a message of the type
/// messageGroupCall
@immutable
final class InputGroupCallMessage extends InputGroupCall {
  InputGroupCallMessage({required this.chatId, required this.messageId});

  /// [chatId] Identifier of the chat with the message
  final int chatId;

  /// [messageId] Identifier of the message of the type messageGroupCall
  final int messageId;

  static const String constructor = 'inputGroupCallMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    '@type': constructor,
  };

  static InputGroupCallMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputGroupCallMessage(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
