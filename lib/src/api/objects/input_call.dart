import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a call
@immutable
sealed class InputCall extends TdObject {
  const InputCall();

  static const String constructor = 'inputCall';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [InputCallDiscarded]
  /// [InputCallFromMessage]
  static InputCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputCallDiscarded.constructor:
        return InputCallDiscarded.fromJson(json);

      case InputCallFromMessage.constructor:
        return InputCallFromMessage.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A just ended call
@immutable
final class InputCallDiscarded extends InputCall {
  InputCallDiscarded({required this.callId});

  /// [callId] Identifier of the call
  final int callId;

  static const String constructor = 'inputCallDiscarded';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'call_id': callId,
    '@type': constructor,
  };

  static InputCallDiscarded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputCallDiscarded(callId: (json['call_id'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A call from a message of the type messageCall with non-zero
/// messageCall.unique_id
@immutable
final class InputCallFromMessage extends InputCall {
  InputCallFromMessage({required this.chatId, required this.messageId});

  /// [chatId] Chat identifier of the message
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  static const String constructor = 'inputCallFromMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    '@type': constructor,
  };

  static InputCallFromMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputCallFromMessage(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
