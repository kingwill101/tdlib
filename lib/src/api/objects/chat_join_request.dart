import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a user who sent a join request and waits for administrator
/// approval
@immutable
final class ChatJoinRequest extends TdObject {
  ChatJoinRequest({
    required this.userId,
    required this.date,
    required this.bio,
  });

  /// [userId] User identifier
  final int userId;

  /// [date] Point in time (Unix timestamp) when the user sent the join request
  final int date;

  /// [bio] A short bio of the user
  final String bio;

  static const String constructor = 'chatJoinRequest';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'date': date,
    'bio': bio,
    '@type': constructor,
  };

  static ChatJoinRequest? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatJoinRequest(
      userId: (json['user_id'] as int?) ?? 0,
      date: (json['date'] as int?) ?? 0,
      bio: (json['bio'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
