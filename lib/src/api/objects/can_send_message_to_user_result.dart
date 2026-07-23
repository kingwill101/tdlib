import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes result of canSendMessageToUser
@immutable
sealed class CanSendMessageToUserResult extends TdObject {
  const CanSendMessageToUserResult();

  static const String constructor = 'canSendMessageToUserResult';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [CanSendMessageToUserResultOk]
  /// [CanSendMessageToUserResultUserHasPaidMessages]
  /// [CanSendMessageToUserResultUserIsDeleted]
  /// [CanSendMessageToUserResultUserRestrictsNewChats]
  static CanSendMessageToUserResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CanSendMessageToUserResultOk.constructor:
        return CanSendMessageToUserResultOk.fromJson(json);

      case CanSendMessageToUserResultUserHasPaidMessages.constructor:
        return CanSendMessageToUserResultUserHasPaidMessages.fromJson(json);

      case CanSendMessageToUserResultUserIsDeleted.constructor:
        return CanSendMessageToUserResultUserIsDeleted.fromJson(json);

      case CanSendMessageToUserResultUserRestrictsNewChats.constructor:
        return CanSendMessageToUserResultUserRestrictsNewChats.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user can be messaged
@immutable
final class CanSendMessageToUserResultOk extends CanSendMessageToUserResult {
  const CanSendMessageToUserResultOk();

  static const String constructor = 'canSendMessageToUserResultOk';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CanSendMessageToUserResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CanSendMessageToUserResultOk();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user can be messaged, but the messages are paid
@immutable
final class CanSendMessageToUserResultUserHasPaidMessages
    extends CanSendMessageToUserResult {
  CanSendMessageToUserResultUserHasPaidMessages({
    required this.outgoingPaidMessageStarCount,
  });

  /// [outgoingPaidMessageStarCount] Number of Telegram Stars that must be paid
  /// by the current user for each sent message to the user
  final int outgoingPaidMessageStarCount;

  static const String constructor =
      'canSendMessageToUserResultUserHasPaidMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'outgoing_paid_message_star_count': outgoingPaidMessageStarCount,
    '@type': constructor,
  };

  static CanSendMessageToUserResultUserHasPaidMessages? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return CanSendMessageToUserResultUserHasPaidMessages(
      outgoingPaidMessageStarCount:
          (json['outgoing_paid_message_star_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user can't be messaged, because they are deleted or unknown
@immutable
final class CanSendMessageToUserResultUserIsDeleted
    extends CanSendMessageToUserResult {
  const CanSendMessageToUserResultUserIsDeleted();

  static const String constructor = 'canSendMessageToUserResultUserIsDeleted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CanSendMessageToUserResultUserIsDeleted? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const CanSendMessageToUserResultUserIsDeleted();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user can't be messaged, because they restrict new chats with
/// non-contacts
@immutable
final class CanSendMessageToUserResultUserRestrictsNewChats
    extends CanSendMessageToUserResult {
  const CanSendMessageToUserResultUserRestrictsNewChats();

  static const String constructor =
      'canSendMessageToUserResultUserRestrictsNewChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CanSendMessageToUserResultUserRestrictsNewChats? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const CanSendMessageToUserResultUserRestrictsNewChats();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
