import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains settings for Firebase Authentication in the official applications
@immutable
sealed class FirebaseAuthenticationSettings extends TdObject {
  const FirebaseAuthenticationSettings();

  static const String constructor = 'firebaseAuthenticationSettings';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [FirebaseAuthenticationSettingsAndroid]
  /// [FirebaseAuthenticationSettingsIos]
  static FirebaseAuthenticationSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case FirebaseAuthenticationSettingsAndroid.constructor:
        return FirebaseAuthenticationSettingsAndroid.fromJson(json);

      case FirebaseAuthenticationSettingsIos.constructor:
        return FirebaseAuthenticationSettingsIos.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Settings for Firebase Authentication in the official Android application
@immutable
final class FirebaseAuthenticationSettingsAndroid
    extends FirebaseAuthenticationSettings {
  const FirebaseAuthenticationSettingsAndroid();

  static const String constructor = 'firebaseAuthenticationSettingsAndroid';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static FirebaseAuthenticationSettingsAndroid? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const FirebaseAuthenticationSettingsAndroid();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Settings for Firebase Authentication in the official iOS application
@immutable
final class FirebaseAuthenticationSettingsIos
    extends FirebaseAuthenticationSettings {
  FirebaseAuthenticationSettingsIos({
    required this.deviceToken,
    required this.isAppSandbox,
  });

  /// [deviceToken] Device token from Apple Push Notification service
  final String deviceToken;

  /// [isAppSandbox] True, if App Sandbox is enabled
  final bool isAppSandbox;

  static const String constructor = 'firebaseAuthenticationSettingsIos';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'device_token': deviceToken,
    'is_app_sandbox': isAppSandbox,
    '@type': constructor,
  };

  static FirebaseAuthenticationSettingsIos? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return FirebaseAuthenticationSettingsIos(
      deviceToken: (json['device_token'] as String?) ?? '',
      isAppSandbox: (json['is_app_sandbox'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
