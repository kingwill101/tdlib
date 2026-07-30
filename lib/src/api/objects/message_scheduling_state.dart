import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about the time when a scheduled message will be sent
@immutable
sealed class MessageSchedulingState extends TdObject {
  const MessageSchedulingState();

  static const String constructor = 'messageSchedulingState';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [MessageSchedulingStateSendAtDate]
  /// [MessageSchedulingStateSendWhenOnline]
  /// [MessageSchedulingStateSendWhenVideoProcessed]
  static MessageSchedulingState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageSchedulingStateSendAtDate.constructor:
        return MessageSchedulingStateSendAtDate.fromJson(json);

      case MessageSchedulingStateSendWhenOnline.constructor:
        return MessageSchedulingStateSendWhenOnline.fromJson(json);

      case MessageSchedulingStateSendWhenVideoProcessed.constructor:
        return MessageSchedulingStateSendWhenVideoProcessed.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message will be sent at the specified date
@immutable
final class MessageSchedulingStateSendAtDate extends MessageSchedulingState {
  MessageSchedulingStateSendAtDate({
    required this.sendDate,
    required this.repeatPeriod,
  });

  /// [sendDate] Point in time (Unix timestamp) when the message will be sent.
  /// The date must be within 367 days in the future
  final int sendDate;

  /// [repeatPeriod] Period after which the message will be sent again; in
  /// seconds; 0 if never; for Telegram Premium users only; may be non-zero only
  /// in sendMessage and forwardMessages with one message requests; must be one
  /// of 0, 86400, 7 * 86400, 14 * 86400, 30 * 86400, 91 * 86400, 182 * 86400,
  /// 365 * 86400, or additionally 60, or 300 in the Test DC
  final int repeatPeriod;

  static const String constructor = 'messageSchedulingStateSendAtDate';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'send_date': sendDate,
    'repeat_period': repeatPeriod,
    '@type': constructor,
  };

  static MessageSchedulingStateSendAtDate? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return MessageSchedulingStateSendAtDate(
      sendDate: (json['send_date'] as int?) ?? 0,
      repeatPeriod: (json['repeat_period'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message will be sent when the other user is online. Applicable to
/// private chats only and when the exact online status of the other user is
/// known
@immutable
final class MessageSchedulingStateSendWhenOnline
    extends MessageSchedulingState {
  const MessageSchedulingStateSendWhenOnline();

  static const String constructor = 'messageSchedulingStateSendWhenOnline';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageSchedulingStateSendWhenOnline? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const MessageSchedulingStateSendWhenOnline();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message will be sent when the video in the message is converted and
/// optimized; can be used only by the server
@immutable
final class MessageSchedulingStateSendWhenVideoProcessed
    extends MessageSchedulingState {
  MessageSchedulingStateSendWhenVideoProcessed({required this.sendDate});

  /// [sendDate] Approximate point in time (Unix timestamp) when the message is
  /// expected to be sent
  final int sendDate;

  static const String constructor =
      'messageSchedulingStateSendWhenVideoProcessed';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'send_date': sendDate,
    '@type': constructor,
  };

  static MessageSchedulingStateSendWhenVideoProcessed? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return MessageSchedulingStateSendWhenVideoProcessed(
      sendDate: (json['send_date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
