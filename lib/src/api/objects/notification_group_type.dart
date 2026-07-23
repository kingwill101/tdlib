import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the type of notifications in a notification group
@immutable
sealed class NotificationGroupType extends TdObject {
  const NotificationGroupType();

  static const String constructor = 'notificationGroupType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [NotificationGroupTypeCalls]
  /// [NotificationGroupTypeMentions]
  /// [NotificationGroupTypeMessages]
  /// [NotificationGroupTypeSecretChat]
  static NotificationGroupType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case NotificationGroupTypeCalls.constructor:
        return NotificationGroupTypeCalls.fromJson(json);

      case NotificationGroupTypeMentions.constructor:
        return NotificationGroupTypeMentions.fromJson(json);

      case NotificationGroupTypeMessages.constructor:
        return NotificationGroupTypeMessages.fromJson(json);

      case NotificationGroupTypeSecretChat.constructor:
        return NotificationGroupTypeSecretChat.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A group containing notifications of type notificationTypeNewCall
@immutable
final class NotificationGroupTypeCalls extends NotificationGroupType {
  const NotificationGroupTypeCalls();

  static const String constructor = 'notificationGroupTypeCalls';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static NotificationGroupTypeCalls? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NotificationGroupTypeCalls();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A group containing notifications of type notificationTypeNewMessage and
/// notificationTypeNewPushMessage with unread mentions of the current user,
/// replies to their messages, or a pinned message
@immutable
final class NotificationGroupTypeMentions extends NotificationGroupType {
  const NotificationGroupTypeMentions();

  static const String constructor = 'notificationGroupTypeMentions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static NotificationGroupTypeMentions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NotificationGroupTypeMentions();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A group containing notifications of type notificationTypeNewMessage and
/// notificationTypeNewPushMessage with ordinary unread messages
@immutable
final class NotificationGroupTypeMessages extends NotificationGroupType {
  const NotificationGroupTypeMessages();

  static const String constructor = 'notificationGroupTypeMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static NotificationGroupTypeMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NotificationGroupTypeMessages();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A group containing a notification of type notificationTypeNewSecretChat
@immutable
final class NotificationGroupTypeSecretChat extends NotificationGroupType {
  const NotificationGroupTypeSecretChat();

  static const String constructor = 'notificationGroupTypeSecretChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static NotificationGroupTypeSecretChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NotificationGroupTypeSecretChat();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
