import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains authentication data for an email address
@immutable
sealed class EmailAddressAuthentication extends TdObject {
  const EmailAddressAuthentication();

  static const String constructor = 'emailAddressAuthentication';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [EmailAddressAuthenticationAppleId]
  /// [EmailAddressAuthenticationCode]
  /// [EmailAddressAuthenticationGoogleId]
  static EmailAddressAuthentication? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case EmailAddressAuthenticationAppleId.constructor:
        return EmailAddressAuthenticationAppleId.fromJson(json);

      case EmailAddressAuthenticationCode.constructor:
        return EmailAddressAuthenticationCode.fromJson(json);

      case EmailAddressAuthenticationGoogleId.constructor:
        return EmailAddressAuthenticationGoogleId.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An authentication token received through Apple ID
@immutable
final class EmailAddressAuthenticationAppleId
    extends EmailAddressAuthentication {
  EmailAddressAuthenticationAppleId({required this.token});

  /// [token] The token
  final String token;

  static const String constructor = 'emailAddressAuthenticationAppleId';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'token': token,
    '@type': constructor,
  };

  static EmailAddressAuthenticationAppleId? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return EmailAddressAuthenticationAppleId(
      token: (json['token'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An authentication code delivered to a user's email address
@immutable
final class EmailAddressAuthenticationCode extends EmailAddressAuthentication {
  EmailAddressAuthenticationCode({required this.code});

  /// [code] The code
  final String code;

  static const String constructor = 'emailAddressAuthenticationCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'code': code,
    '@type': constructor,
  };

  static EmailAddressAuthenticationCode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmailAddressAuthenticationCode(
      code: (json['code'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An authentication token received through Google ID
@immutable
final class EmailAddressAuthenticationGoogleId
    extends EmailAddressAuthentication {
  EmailAddressAuthenticationGoogleId({required this.token});

  /// [token] The token
  final String token;

  static const String constructor = 'emailAddressAuthenticationGoogleId';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'token': token,
    '@type': constructor,
  };

  static EmailAddressAuthenticationGoogleId? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return EmailAddressAuthenticationGoogleId(
      token: (json['token'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
