import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the types of chats to which notification settings are relevant
@immutable
sealed class NotificationSettingsScope extends TdObject {
  const NotificationSettingsScope();

  static const String constructor = 'notificationSettingsScope';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [NotificationSettingsScopeChannelChats]
  /// [NotificationSettingsScopeGroupChats]
  /// [NotificationSettingsScopePrivateChats]
  static NotificationSettingsScope? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case NotificationSettingsScopeChannelChats.constructor:
        return NotificationSettingsScopeChannelChats.fromJson(json);

      case NotificationSettingsScopeGroupChats.constructor:
        return NotificationSettingsScopeGroupChats.fromJson(json);

      case NotificationSettingsScopePrivateChats.constructor:
        return NotificationSettingsScopePrivateChats.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Notification settings applied to all channel chats when the corresponding
/// chat setting has a default value
@immutable
final class NotificationSettingsScopeChannelChats
    extends NotificationSettingsScope {
  const NotificationSettingsScopeChannelChats();

  static const String constructor = 'notificationSettingsScopeChannelChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static NotificationSettingsScopeChannelChats? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const NotificationSettingsScopeChannelChats();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Notification settings applied to all basic group and supergroup chats when
/// the corresponding chat setting has a default value
@immutable
final class NotificationSettingsScopeGroupChats
    extends NotificationSettingsScope {
  const NotificationSettingsScopeGroupChats();

  static const String constructor = 'notificationSettingsScopeGroupChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static NotificationSettingsScopeGroupChats? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const NotificationSettingsScopeGroupChats();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Notification settings applied to all private and secret chats when the
/// corresponding chat setting has a default value
@immutable
final class NotificationSettingsScopePrivateChats
    extends NotificationSettingsScope {
  const NotificationSettingsScopePrivateChats();

  static const String constructor = 'notificationSettingsScopePrivateChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static NotificationSettingsScopePrivateChats? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const NotificationSettingsScopePrivateChats();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
