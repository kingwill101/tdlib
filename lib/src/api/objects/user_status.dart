import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the last time the user was online
@immutable
sealed class UserStatus extends TdObject {
  const UserStatus();

  static const String constructor = 'userStatus';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [UserStatusEmpty]
  /// [UserStatusLastMonth]
  /// [UserStatusLastWeek]
  /// [UserStatusOffline]
  /// [UserStatusOnline]
  /// [UserStatusRecently]
  static UserStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case UserStatusEmpty.constructor:
        return UserStatusEmpty.fromJson(json);

      case UserStatusLastMonth.constructor:
        return UserStatusLastMonth.fromJson(json);

      case UserStatusLastWeek.constructor:
        return UserStatusLastWeek.fromJson(json);

      case UserStatusOffline.constructor:
        return UserStatusOffline.fromJson(json);

      case UserStatusOnline.constructor:
        return UserStatusOnline.fromJson(json);

      case UserStatusRecently.constructor:
        return UserStatusRecently.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user's status has never been changed
@immutable
final class UserStatusEmpty extends UserStatus {
  const UserStatusEmpty();

  static const String constructor = 'userStatusEmpty';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UserStatusEmpty? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserStatusEmpty();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is offline, but was online last month
@immutable
final class UserStatusLastMonth extends UserStatus {
  UserStatusLastMonth({required this.byMyPrivacySettings});

  /// [byMyPrivacySettings] Exact user's status is hidden because the current
  /// user enabled userPrivacySettingShowStatus privacy setting for the user and
  /// has no Telegram Premium
  final bool byMyPrivacySettings;

  static const String constructor = 'userStatusLastMonth';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'by_my_privacy_settings': byMyPrivacySettings,
    '@type': constructor,
  };

  static UserStatusLastMonth? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserStatusLastMonth(
      byMyPrivacySettings: (json['by_my_privacy_settings'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is offline, but was online last week
@immutable
final class UserStatusLastWeek extends UserStatus {
  UserStatusLastWeek({required this.byMyPrivacySettings});

  /// [byMyPrivacySettings] Exact user's status is hidden because the current
  /// user enabled userPrivacySettingShowStatus privacy setting for the user and
  /// has no Telegram Premium
  final bool byMyPrivacySettings;

  static const String constructor = 'userStatusLastWeek';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'by_my_privacy_settings': byMyPrivacySettings,
    '@type': constructor,
  };

  static UserStatusLastWeek? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserStatusLastWeek(
      byMyPrivacySettings: (json['by_my_privacy_settings'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is offline
@immutable
final class UserStatusOffline extends UserStatus {
  UserStatusOffline({required this.wasOnline});

  /// [wasOnline] Point in time (Unix timestamp) when the user was last online
  final int wasOnline;

  static const String constructor = 'userStatusOffline';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'was_online': wasOnline,
    '@type': constructor,
  };

  static UserStatusOffline? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserStatusOffline(wasOnline: (json['was_online'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is online
@immutable
final class UserStatusOnline extends UserStatus {
  UserStatusOnline({required this.expires});

  /// [expires] Point in time (Unix timestamp) when the user's online status
  /// will expire
  final int expires;

  static const String constructor = 'userStatusOnline';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'expires': expires,
    '@type': constructor,
  };

  static UserStatusOnline? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserStatusOnline(expires: (json['expires'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user was online recently
@immutable
final class UserStatusRecently extends UserStatus {
  UserStatusRecently({required this.byMyPrivacySettings});

  /// [byMyPrivacySettings] Exact user's status is hidden because the current
  /// user enabled userPrivacySettingShowStatus privacy setting for the user and
  /// has no Telegram Premium
  final bool byMyPrivacySettings;

  static const String constructor = 'userStatusRecently';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'by_my_privacy_settings': byMyPrivacySettings,
    '@type': constructor,
  };

  static UserStatusRecently? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserStatusRecently(
      byMyPrivacySettings: (json['by_my_privacy_settings'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
