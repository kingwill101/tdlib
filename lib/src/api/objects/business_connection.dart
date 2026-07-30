import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a connection of the bot with a business account
@immutable
final class BusinessConnection extends TdObject {
  BusinessConnection({
    required this.id,
    required this.userId,
    required this.userChatId,
    required this.date,
    this.rights,
    required this.isEnabled,
  });

  /// [id] Unique identifier of the connection
  final String id;

  /// [userId] Identifier of the business user who created the connection
  final int userId;

  /// [userChatId] Chat identifier of the private chat with the user
  final int userChatId;

  /// [date] Point in time (Unix timestamp) when the connection was established
  final int date;

  /// [rights] Rights of the bot; may be null if the connection was disabled
  final BusinessBotRights? rights;

  /// [isEnabled] True, if the connection is enabled; false otherwise
  final bool isEnabled;

  static const String constructor = 'businessConnection';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'user_id': userId,
    'user_chat_id': userChatId,
    'date': date,
    'rights': rights?.toJson(),
    'is_enabled': isEnabled,
    '@type': constructor,
  };

  static BusinessConnection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessConnection(
      id: (json['id'] as String?) ?? '',
      userId: (json['user_id'] as int?) ?? 0,
      userChatId: (json['user_chat_id'] as int?) ?? 0,
      date: (json['date'] as int?) ?? 0,
      rights: BusinessBotRights.fromJson(tdMapFromJson(json['rights'])),
      isEnabled: (json['is_enabled'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
