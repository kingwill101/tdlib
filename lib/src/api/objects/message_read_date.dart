import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes read date of a recent outgoing message in a private chat
@immutable
sealed class MessageReadDate extends TdObject {
  const MessageReadDate();

  static const String constructor = 'messageReadDate';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [MessageReadDateMyPrivacyRestricted]
  /// [MessageReadDateRead]
  /// [MessageReadDateTooOld]
  /// [MessageReadDateUnread]
  /// [MessageReadDateUserPrivacyRestricted]
  static MessageReadDate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageReadDateMyPrivacyRestricted.constructor:
        return MessageReadDateMyPrivacyRestricted.fromJson(json);

      case MessageReadDateRead.constructor:
        return MessageReadDateRead.fromJson(json);

      case MessageReadDateTooOld.constructor:
        return MessageReadDateTooOld.fromJson(json);

      case MessageReadDateUnread.constructor:
        return MessageReadDateUnread.fromJson(json);

      case MessageReadDateUserPrivacyRestricted.constructor:
        return MessageReadDateUserPrivacyRestricted.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The read date is unknown due to privacy settings of the current user, but
/// will be known if the user subscribes to Telegram Premium
@immutable
final class MessageReadDateMyPrivacyRestricted extends MessageReadDate {
  const MessageReadDateMyPrivacyRestricted();

  static const String constructor = 'messageReadDateMyPrivacyRestricted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageReadDateMyPrivacyRestricted? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const MessageReadDateMyPrivacyRestricted();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Contains read date of the message
@immutable
final class MessageReadDateRead extends MessageReadDate {
  MessageReadDateRead({required this.readDate});

  /// [readDate] Point in time (Unix timestamp) when the message was read by the
  /// other user
  final int readDate;

  static const String constructor = 'messageReadDateRead';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'read_date': readDate,
    '@type': constructor,
  };

  static MessageReadDateRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageReadDateRead(readDate: (json['read_date'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message is too old to get read date
@immutable
final class MessageReadDateTooOld extends MessageReadDate {
  const MessageReadDateTooOld();

  static const String constructor = 'messageReadDateTooOld';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageReadDateTooOld? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageReadDateTooOld();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message is unread yet
@immutable
final class MessageReadDateUnread extends MessageReadDate {
  const MessageReadDateUnread();

  static const String constructor = 'messageReadDateUnread';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageReadDateUnread? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageReadDateUnread();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The read date is unknown due to privacy settings of the other user
@immutable
final class MessageReadDateUserPrivacyRestricted extends MessageReadDate {
  const MessageReadDateUserPrivacyRestricted();

  static const String constructor = 'messageReadDateUserPrivacyRestricted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageReadDateUserPrivacyRestricted? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const MessageReadDateUserPrivacyRestricted();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
