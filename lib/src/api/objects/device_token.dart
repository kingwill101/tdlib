import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a data needed to subscribe for push notifications through
/// registerDevice method.
@immutable
sealed class DeviceToken extends TdObject {
  const DeviceToken();

  static const String constructor = 'deviceToken';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [DeviceTokenApplePush]
  /// [DeviceTokenApplePushVoIP]
  /// [DeviceTokenBlackBerryPush]
  /// [DeviceTokenFirebaseCloudMessaging]
  /// [DeviceTokenHuaweiPush]
  /// [DeviceTokenMicrosoftPush]
  /// [DeviceTokenMicrosoftPushVoIP]
  /// [DeviceTokenSimplePush]
  /// [DeviceTokenTizenPush]
  /// [DeviceTokenUbuntuPush]
  /// [DeviceTokenWebPush]
  /// [DeviceTokenWindowsPush]
  static DeviceToken? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case DeviceTokenApplePush.constructor:
        return DeviceTokenApplePush.fromJson(json);

      case DeviceTokenApplePushVoIP.constructor:
        return DeviceTokenApplePushVoIP.fromJson(json);

      case DeviceTokenBlackBerryPush.constructor:
        return DeviceTokenBlackBerryPush.fromJson(json);

      case DeviceTokenFirebaseCloudMessaging.constructor:
        return DeviceTokenFirebaseCloudMessaging.fromJson(json);

      case DeviceTokenHuaweiPush.constructor:
        return DeviceTokenHuaweiPush.fromJson(json);

      case DeviceTokenMicrosoftPush.constructor:
        return DeviceTokenMicrosoftPush.fromJson(json);

      case DeviceTokenMicrosoftPushVoIP.constructor:
        return DeviceTokenMicrosoftPushVoIP.fromJson(json);

      case DeviceTokenSimplePush.constructor:
        return DeviceTokenSimplePush.fromJson(json);

      case DeviceTokenTizenPush.constructor:
        return DeviceTokenTizenPush.fromJson(json);

      case DeviceTokenUbuntuPush.constructor:
        return DeviceTokenUbuntuPush.fromJson(json);

      case DeviceTokenWebPush.constructor:
        return DeviceTokenWebPush.fromJson(json);

      case DeviceTokenWindowsPush.constructor:
        return DeviceTokenWindowsPush.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A token for Apple Push Notification service
@immutable
final class DeviceTokenApplePush extends DeviceToken {
  DeviceTokenApplePush({required this.deviceToken, required this.isAppSandbox});

  /// [deviceToken] Device token; may be empty to deregister a device
  final String deviceToken;

  /// [isAppSandbox] True, if App Sandbox is enabled
  final bool isAppSandbox;

  static const String constructor = 'deviceTokenApplePush';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'device_token': deviceToken,
    'is_app_sandbox': isAppSandbox,
    '@type': constructor,
  };

  static DeviceTokenApplePush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenApplePush(
      deviceToken: (json['device_token'] as String?) ?? '',
      isAppSandbox: (json['is_app_sandbox'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A token for Apple Push Notification service VoIP notifications
@immutable
final class DeviceTokenApplePushVoIP extends DeviceToken {
  DeviceTokenApplePushVoIP({
    required this.deviceToken,
    required this.isAppSandbox,
    required this.encrypt,
  });

  /// [deviceToken] Device token; may be empty to deregister a device
  final String deviceToken;

  /// [isAppSandbox] True, if App Sandbox is enabled
  final bool isAppSandbox;

  /// [encrypt] True, if push notifications must be additionally encrypted
  final bool encrypt;

  static const String constructor = 'deviceTokenApplePushVoIP';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'device_token': deviceToken,
    'is_app_sandbox': isAppSandbox,
    'encrypt': encrypt,
    '@type': constructor,
  };

  static DeviceTokenApplePushVoIP? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenApplePushVoIP(
      deviceToken: (json['device_token'] as String?) ?? '',
      isAppSandbox: (json['is_app_sandbox'] as bool?) ?? false,
      encrypt: (json['encrypt'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A token for BlackBerry Push Service
@immutable
final class DeviceTokenBlackBerryPush extends DeviceToken {
  DeviceTokenBlackBerryPush({required this.token});

  /// [token] Token; may be empty to deregister a device
  final String token;

  static const String constructor = 'deviceTokenBlackBerryPush';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'token': token,
    '@type': constructor,
  };

  static DeviceTokenBlackBerryPush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenBlackBerryPush(token: (json['token'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A token for Firebase Cloud Messaging
@immutable
final class DeviceTokenFirebaseCloudMessaging extends DeviceToken {
  DeviceTokenFirebaseCloudMessaging({
    required this.token,
    required this.encrypt,
  });

  /// [token] Device registration token; may be empty to deregister a device
  final String token;

  /// [encrypt] True, if push notifications must be additionally encrypted
  final bool encrypt;

  static const String constructor = 'deviceTokenFirebaseCloudMessaging';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'token': token,
    'encrypt': encrypt,
    '@type': constructor,
  };

  static DeviceTokenFirebaseCloudMessaging? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return DeviceTokenFirebaseCloudMessaging(
      token: (json['token'] as String?) ?? '',
      encrypt: (json['encrypt'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A token for HUAWEI Push Service
@immutable
final class DeviceTokenHuaweiPush extends DeviceToken {
  DeviceTokenHuaweiPush({required this.token, required this.encrypt});

  /// [token] Device registration token; may be empty to deregister a device
  final String token;

  /// [encrypt] True, if push notifications must be additionally encrypted
  final bool encrypt;

  static const String constructor = 'deviceTokenHuaweiPush';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'token': token,
    'encrypt': encrypt,
    '@type': constructor,
  };

  static DeviceTokenHuaweiPush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenHuaweiPush(
      token: (json['token'] as String?) ?? '',
      encrypt: (json['encrypt'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A token for Microsoft Push Notification Service
@immutable
final class DeviceTokenMicrosoftPush extends DeviceToken {
  DeviceTokenMicrosoftPush({required this.channelUri});

  /// [channelUri] Push notification channel URI; may be empty to deregister a
  /// device
  final String channelUri;

  static const String constructor = 'deviceTokenMicrosoftPush';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'channel_uri': channelUri,
    '@type': constructor,
  };

  static DeviceTokenMicrosoftPush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenMicrosoftPush(
      channelUri: (json['channel_uri'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A token for Microsoft Push Notification Service VoIP channel
@immutable
final class DeviceTokenMicrosoftPushVoIP extends DeviceToken {
  DeviceTokenMicrosoftPushVoIP({required this.channelUri});

  /// [channelUri] Push notification channel URI; may be empty to deregister a
  /// device
  final String channelUri;

  static const String constructor = 'deviceTokenMicrosoftPushVoIP';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'channel_uri': channelUri,
    '@type': constructor,
  };

  static DeviceTokenMicrosoftPushVoIP? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenMicrosoftPushVoIP(
      channelUri: (json['channel_uri'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A token for Simple Push API for Firefox OS
@immutable
final class DeviceTokenSimplePush extends DeviceToken {
  DeviceTokenSimplePush({required this.endpoint});

  /// [endpoint] Absolute URL exposed by the push service where the application
  /// server can send push messages; may be empty to deregister a device
  final String endpoint;

  static const String constructor = 'deviceTokenSimplePush';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'endpoint': endpoint,
    '@type': constructor,
  };

  static DeviceTokenSimplePush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenSimplePush(endpoint: (json['endpoint'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A token for Tizen Push Service
@immutable
final class DeviceTokenTizenPush extends DeviceToken {
  DeviceTokenTizenPush({required this.regId});

  /// [regId] Push service registration identifier; may be empty to deregister a
  /// device
  final String regId;

  static const String constructor = 'deviceTokenTizenPush';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'reg_id': regId,
    '@type': constructor,
  };

  static DeviceTokenTizenPush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenTizenPush(regId: (json['reg_id'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A token for Ubuntu Push Client service
@immutable
final class DeviceTokenUbuntuPush extends DeviceToken {
  DeviceTokenUbuntuPush({required this.token});

  /// [token] Token; may be empty to deregister a device
  final String token;

  static const String constructor = 'deviceTokenUbuntuPush';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'token': token,
    '@type': constructor,
  };

  static DeviceTokenUbuntuPush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenUbuntuPush(token: (json['token'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A token for web Push API
@immutable
final class DeviceTokenWebPush extends DeviceToken {
  DeviceTokenWebPush({
    required this.endpoint,
    required this.p256dhBase64url,
    required this.authBase64url,
  });

  /// [endpoint] Absolute URL exposed by the push service where the application
  /// server can send push messages; may be empty to deregister a device
  final String endpoint;

  /// [p256dhBase64url] Base64url-encoded P-256 elliptic curve Diffie-Hellman
  /// public key
  final String p256dhBase64url;

  /// [authBase64url] Base64url-encoded authentication secret
  final String authBase64url;

  static const String constructor = 'deviceTokenWebPush';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'endpoint': endpoint,
    'p256dh_base64url': p256dhBase64url,
    'auth_base64url': authBase64url,
    '@type': constructor,
  };

  static DeviceTokenWebPush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenWebPush(
      endpoint: (json['endpoint'] as String?) ?? '',
      p256dhBase64url: (json['p256dh_base64url'] as String?) ?? '',
      authBase64url: (json['auth_base64url'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A token for Windows Push Notification Services
@immutable
final class DeviceTokenWindowsPush extends DeviceToken {
  DeviceTokenWindowsPush({required this.accessToken});

  /// [accessToken] The access token that will be used to send notifications;
  /// may be empty to deregister a device
  final String accessToken;

  static const String constructor = 'deviceTokenWindowsPush';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'access_token': accessToken,
    '@type': constructor,
  };

  static DeviceTokenWindowsPush? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeviceTokenWindowsPush(
      accessToken: (json['access_token'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
