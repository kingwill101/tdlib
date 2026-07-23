import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of notification sounds
@immutable
final class NotificationSounds extends TdObject {
  NotificationSounds({required this.notificationSounds});

  /// [notificationSounds] A list of notification sounds
  final List<NotificationSound> notificationSounds;

  static const String constructor = 'notificationSounds';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'notification_sounds': notificationSounds
        .map((item) => item.toJson())
        .toList(),
    '@type': constructor,
  };

  static NotificationSounds? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NotificationSounds(
      notificationSounds: List<NotificationSound>.from(
        tdListFromJson(json['notification_sounds'])
            .map((item) => NotificationSound.fromJson(tdMapFromJson(item)))
            .whereType<NotificationSound>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
