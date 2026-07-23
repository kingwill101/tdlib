import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains statistics about administrator actions done by a user
@immutable
final class ChatStatisticsAdministratorActionsInfo extends TdObject {
  ChatStatisticsAdministratorActionsInfo({
    required this.userId,
    required this.deletedMessageCount,
    required this.bannedUserCount,
    required this.restrictedUserCount,
  });

  /// [userId] Administrator user identifier
  final int userId;

  /// [deletedMessageCount] Number of messages deleted by the administrator
  final int deletedMessageCount;

  /// [bannedUserCount] Number of users banned by the administrator
  final int bannedUserCount;

  /// [restrictedUserCount] Number of users restricted by the administrator
  final int restrictedUserCount;

  static const String constructor = 'chatStatisticsAdministratorActionsInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'deleted_message_count': deletedMessageCount,
    'banned_user_count': bannedUserCount,
    'restricted_user_count': restrictedUserCount,
    '@type': constructor,
  };

  static ChatStatisticsAdministratorActionsInfo? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatStatisticsAdministratorActionsInfo(
      userId: (json['user_id'] as int?) ?? 0,
      deletedMessageCount: (json['deleted_message_count'] as int?) ?? 0,
      bannedUserCount: (json['banned_user_count'] as int?) ?? 0,
      restrictedUserCount: (json['restricted_user_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
