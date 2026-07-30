import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about the sending state of the message
@immutable
sealed class MessageSendingState extends TdObject {
  const MessageSendingState();

  static const String constructor = 'messageSendingState';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [MessageSendingStateFailed]
  /// [MessageSendingStatePending]
  static MessageSendingState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageSendingStateFailed.constructor:
        return MessageSendingStateFailed.fromJson(json);

      case MessageSendingStatePending.constructor:
        return MessageSendingStatePending.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message failed to be sent
@immutable
final class MessageSendingStateFailed extends MessageSendingState {
  MessageSendingStateFailed({
    this.error,
    required this.canRetry,
    required this.needAnotherSender,
    required this.needAnotherReplyQuote,
    required this.needDropReply,
    required this.requiredPaidMessageStarCount,
    required this.retryAfter,
  });

  /// [error] The cause of the message sending failure
  final TdError? error;

  /// [canRetry] True, if the message can be re-sent using resendMessages or
  /// readdQuickReplyShortcutMessages
  final bool canRetry;

  /// [needAnotherSender] True, if the message can be re-sent only on behalf of
  /// a different sender
  final bool needAnotherSender;

  /// [needAnotherReplyQuote] True, if the message can be re-sent only if
  /// another quote is chosen in the message that is replied by the given
  /// message
  final bool needAnotherReplyQuote;

  /// [needDropReply] True, if the message can be re-sent only if the message to
  /// be replied is removed. This will be done automatically by resendMessages
  final bool needDropReply;

  /// [requiredPaidMessageStarCount] The number of Telegram Stars that must be
  /// paid to send the message; 0 if the current amount is correct
  final int requiredPaidMessageStarCount;

  /// [retryAfter] Time left before the message can be re-sent, in seconds. No
  /// update is sent when this field changes
  final double retryAfter;

  static const String constructor = 'messageSendingStateFailed';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'error': error?.toJson(),
    'can_retry': canRetry,
    'need_another_sender': needAnotherSender,
    'need_another_reply_quote': needAnotherReplyQuote,
    'need_drop_reply': needDropReply,
    'required_paid_message_star_count': requiredPaidMessageStarCount,
    'retry_after': retryAfter,
    '@type': constructor,
  };

  static MessageSendingStateFailed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSendingStateFailed(
      error: TdError.fromJson(tdMapFromJson(json['error'])),
      canRetry: (json['can_retry'] as bool?) ?? false,
      needAnotherSender: (json['need_another_sender'] as bool?) ?? false,
      needAnotherReplyQuote:
          (json['need_another_reply_quote'] as bool?) ?? false,
      needDropReply: (json['need_drop_reply'] as bool?) ?? false,
      requiredPaidMessageStarCount:
          (json['required_paid_message_star_count'] as int?) ?? 0,
      retryAfter: ((json['retry_after'] as num?) ?? 0.0).toDouble(),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message is being sent now, but has not yet been delivered to the
/// server
@immutable
final class MessageSendingStatePending extends MessageSendingState {
  MessageSendingStatePending({required this.sendingId});

  /// [sendingId] Non-persistent message sending identifier, specified by the
  /// application
  final int sendingId;

  static const String constructor = 'messageSendingStatePending';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sending_id': sendingId,
    '@type': constructor,
  };

  static MessageSendingStatePending? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSendingStatePending(
      sendingId: (json['sending_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
