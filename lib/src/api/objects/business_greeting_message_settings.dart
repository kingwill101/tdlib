import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes settings for greeting messages that are automatically sent by a
/// Telegram Business account as response to incoming messages in an inactive
/// private chat
@immutable
final class BusinessGreetingMessageSettings extends TdObject {
  BusinessGreetingMessageSettings({
    required this.shortcutId,
    this.recipients,
    required this.inactivityDays,
  });

  /// [shortcutId] Unique quick reply shortcut identifier for the greeting
  /// messages
  final int shortcutId;

  /// [recipients] Chosen recipients of the greeting messages
  final BusinessRecipients? recipients;

  /// [inactivityDays] The number of days after which a chat will be considered
  /// as inactive; currently, must be on of 7, 14, 21, or 28
  final int inactivityDays;

  static const String constructor = 'businessGreetingMessageSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'shortcut_id': shortcutId,
    'recipients': recipients?.toJson(),
    'inactivity_days': inactivityDays,
    '@type': constructor,
  };

  static BusinessGreetingMessageSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessGreetingMessageSettings(
      shortcutId: (json['shortcut_id'] as int?) ?? 0,
      recipients: BusinessRecipients.fromJson(
        tdMapFromJson(json['recipients']),
      ),
      inactivityDays: (json['inactivity_days'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
