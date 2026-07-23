import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a notification
@immutable
final class Notification extends TdObject {
  Notification({
    required this.id,
    required this.date,
    required this.isSilent,
    this.type,
  });

  /// [id] Unique persistent identifier of this notification
  final int id;

  /// [date] Notification date
  final int date;

  /// [isSilent] True, if the notification was explicitly sent without sound
  final bool isSilent;

  /// [type] Notification type
  final NotificationType? type;

  static const String constructor = 'notification';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'date': date,
    'is_silent': isSilent,
    'type': type?.toJson(),
    '@type': constructor,
  };

  static Notification? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Notification(
      id: (json['id'] as int?) ?? 0,
      date: (json['date'] as int?) ?? 0,
      isSilent: (json['is_silent'] as bool?) ?? false,
      type: NotificationType.fromJson(tdMapFromJson(json['type'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
