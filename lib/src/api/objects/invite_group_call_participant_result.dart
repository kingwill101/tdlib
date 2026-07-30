import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes result of group call participant invitation
@immutable
sealed class InviteGroupCallParticipantResult extends TdObject {
  const InviteGroupCallParticipantResult();

  static const String constructor = 'inviteGroupCallParticipantResult';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [InviteGroupCallParticipantResultSuccess]
  /// [InviteGroupCallParticipantResultUserAlreadyParticipant]
  /// [InviteGroupCallParticipantResultUserPrivacyRestricted]
  /// [InviteGroupCallParticipantResultUserWasBanned]
  static InviteGroupCallParticipantResult? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InviteGroupCallParticipantResultSuccess.constructor:
        return InviteGroupCallParticipantResultSuccess.fromJson(json);

      case InviteGroupCallParticipantResultUserAlreadyParticipant.constructor:
        return InviteGroupCallParticipantResultUserAlreadyParticipant.fromJson(
          json,
        );

      case InviteGroupCallParticipantResultUserPrivacyRestricted.constructor:
        return InviteGroupCallParticipantResultUserPrivacyRestricted.fromJson(
          json,
        );

      case InviteGroupCallParticipantResultUserWasBanned.constructor:
        return InviteGroupCallParticipantResultUserWasBanned.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user was invited and a service message of the type messageGroupCall
/// was sent which can be used in declineGroupCallInvitation to cancel the
/// invitation
@immutable
final class InviteGroupCallParticipantResultSuccess
    extends InviteGroupCallParticipantResult {
  InviteGroupCallParticipantResultSuccess({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the chat with the invitation message
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  static const String constructor = 'inviteGroupCallParticipantResultSuccess';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    '@type': constructor,
  };

  static InviteGroupCallParticipantResultSuccess? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InviteGroupCallParticipantResultSuccess(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user can't be invited because they are already a participant of the
/// call
@immutable
final class InviteGroupCallParticipantResultUserAlreadyParticipant
    extends InviteGroupCallParticipantResult {
  const InviteGroupCallParticipantResultUserAlreadyParticipant();

  static const String constructor =
      'inviteGroupCallParticipantResultUserAlreadyParticipant';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static InviteGroupCallParticipantResultUserAlreadyParticipant? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const InviteGroupCallParticipantResultUserAlreadyParticipant();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user can't be invited due to their privacy settings
@immutable
final class InviteGroupCallParticipantResultUserPrivacyRestricted
    extends InviteGroupCallParticipantResult {
  const InviteGroupCallParticipantResultUserPrivacyRestricted();

  static const String constructor =
      'inviteGroupCallParticipantResultUserPrivacyRestricted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static InviteGroupCallParticipantResultUserPrivacyRestricted? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const InviteGroupCallParticipantResultUserPrivacyRestricted();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user can't be invited because they were banned by the owner of the
/// call and can be invited back only by the owner of the group call
@immutable
final class InviteGroupCallParticipantResultUserWasBanned
    extends InviteGroupCallParticipantResult {
  const InviteGroupCallParticipantResultUserWasBanned();

  static const String constructor =
      'inviteGroupCallParticipantResultUserWasBanned';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static InviteGroupCallParticipantResultUserWasBanned? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const InviteGroupCallParticipantResultUserWasBanned();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
