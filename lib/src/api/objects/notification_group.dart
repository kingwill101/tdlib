import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a group of notifications
@immutable
final class NotificationGroup extends TdObject {
  NotificationGroup({
    required this.id,
    this.type,
    required this.chatId,
    required this.totalCount,
    required this.notifications,
  });

  /// [id] Unique persistent auto-incremented from 1 identifier of the
  /// notification group
  final int id;

  /// [type] Type of the group
  final NotificationGroupType? type;

  /// [chatId] Identifier of a chat to which all notifications in the group
  /// belong
  final int chatId;

  /// [totalCount] Total number of active notifications in the group
  final int totalCount;

  /// [notifications] The list of active notifications
  final List<Notification> notifications;

  static const String constructor = 'notificationGroup';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'type': type?.toJson(),
    'chat_id': chatId,
    'total_count': totalCount,
    'notifications': notifications.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static NotificationGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NotificationGroup(
      id: (json['id'] as int?) ?? 0,
      type: NotificationGroupType.fromJson(tdMapFromJson(json['type'])),
      chatId: (json['chat_id'] as int?) ?? 0,
      totalCount: (json['total_count'] as int?) ?? 0,
      notifications: List<Notification>.from(
        tdListFromJson(json['notifications'])
            .map((item) => Notification.fromJson(tdMapFromJson(item)))
            .whereType<Notification>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
