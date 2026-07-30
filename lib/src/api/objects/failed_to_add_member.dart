import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a user who has failed to be added to a chat
@immutable
final class FailedToAddMember extends TdObject {
  FailedToAddMember({
    required this.userId,
    required this.premiumWouldAllowInvite,
    required this.premiumRequiredToSendMessages,
  });

  /// [userId] User identifier
  final int userId;

  /// [premiumWouldAllowInvite] True, if subscription to Telegram Premium would
  /// have allowed to add the user to the chat
  final bool premiumWouldAllowInvite;

  /// [premiumRequiredToSendMessages] True, if subscription to Telegram Premium
  /// is required to send the user chat invite link
  final bool premiumRequiredToSendMessages;

  static const String constructor = 'failedToAddMember';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'premium_would_allow_invite': premiumWouldAllowInvite,
    'premium_required_to_send_messages': premiumRequiredToSendMessages,
    '@type': constructor,
  };

  static FailedToAddMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FailedToAddMember(
      userId: (json['user_id'] as int?) ?? 0,
      premiumWouldAllowInvite:
          (json['premium_would_allow_invite'] as bool?) ?? false,
      premiumRequiredToSendMessages:
          (json['premium_required_to_send_messages'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
