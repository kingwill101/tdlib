import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Provides information about the method by which an authentication code is
/// delivered to the user
@immutable
sealed class AuthenticationCodeType extends TdObject {
  const AuthenticationCodeType();

  static const String constructor = 'authenticationCodeType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [AuthenticationCodeTypeCall]
  /// [AuthenticationCodeTypeFirebaseAndroid]
  /// [AuthenticationCodeTypeFirebaseIos]
  /// [AuthenticationCodeTypeFlashCall]
  /// [AuthenticationCodeTypeFragment]
  /// [AuthenticationCodeTypeMissedCall]
  /// [AuthenticationCodeTypeSms]
  /// [AuthenticationCodeTypeSmsPhrase]
  /// [AuthenticationCodeTypeSmsWord]
  /// [AuthenticationCodeTypeTelegramMessage]
  static AuthenticationCodeType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case AuthenticationCodeTypeCall.constructor:
        return AuthenticationCodeTypeCall.fromJson(json);

      case AuthenticationCodeTypeFirebaseAndroid.constructor:
        return AuthenticationCodeTypeFirebaseAndroid.fromJson(json);

      case AuthenticationCodeTypeFirebaseIos.constructor:
        return AuthenticationCodeTypeFirebaseIos.fromJson(json);

      case AuthenticationCodeTypeFlashCall.constructor:
        return AuthenticationCodeTypeFlashCall.fromJson(json);

      case AuthenticationCodeTypeFragment.constructor:
        return AuthenticationCodeTypeFragment.fromJson(json);

      case AuthenticationCodeTypeMissedCall.constructor:
        return AuthenticationCodeTypeMissedCall.fromJson(json);

      case AuthenticationCodeTypeSms.constructor:
        return AuthenticationCodeTypeSms.fromJson(json);

      case AuthenticationCodeTypeSmsPhrase.constructor:
        return AuthenticationCodeTypeSmsPhrase.fromJson(json);

      case AuthenticationCodeTypeSmsWord.constructor:
        return AuthenticationCodeTypeSmsWord.fromJson(json);

      case AuthenticationCodeTypeTelegramMessage.constructor:
        return AuthenticationCodeTypeTelegramMessage.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A digit-only authentication code is delivered via a phone call to the
/// specified phone number
@immutable
final class AuthenticationCodeTypeCall extends AuthenticationCodeType {
  AuthenticationCodeTypeCall({required this.length});

  /// [length] Length of the code
  final int length;

  static const String constructor = 'authenticationCodeTypeCall';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'length': length,
    '@type': constructor,
  };

  static AuthenticationCodeTypeCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeCall(length: (json['length'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A digit-only authentication code is delivered via Firebase Authentication
/// to the official Android application
@immutable
final class AuthenticationCodeTypeFirebaseAndroid
    extends AuthenticationCodeType {
  AuthenticationCodeTypeFirebaseAndroid({
    this.deviceVerificationParameters,
    required this.length,
  });

  /// [deviceVerificationParameters] Parameters to be used for device
  /// verification
  final FirebaseDeviceVerificationParameters? deviceVerificationParameters;

  /// [length] Length of the code
  final int length;

  static const String constructor = 'authenticationCodeTypeFirebaseAndroid';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'device_verification_parameters': deviceVerificationParameters?.toJson(),
    'length': length,
    '@type': constructor,
  };

  static AuthenticationCodeTypeFirebaseAndroid? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeFirebaseAndroid(
      deviceVerificationParameters:
          FirebaseDeviceVerificationParameters.fromJson(
            tdMapFromJson(json['device_verification_parameters']),
          ),
      length: (json['length'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A digit-only authentication code is delivered via Firebase Authentication
/// to the official iOS application
@immutable
final class AuthenticationCodeTypeFirebaseIos extends AuthenticationCodeType {
  AuthenticationCodeTypeFirebaseIos({
    required this.receipt,
    required this.pushTimeout,
    required this.length,
  });

  /// [receipt] Receipt of successful application token validation to compare
  /// with receipt from push notification
  final String receipt;

  /// [pushTimeout] Time after the next authentication method is expected to be
  /// used if verification push notification isn't received, in seconds
  final int pushTimeout;

  /// [length] Length of the code
  final int length;

  static const String constructor = 'authenticationCodeTypeFirebaseIos';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'receipt': receipt,
    'push_timeout': pushTimeout,
    'length': length,
    '@type': constructor,
  };

  static AuthenticationCodeTypeFirebaseIos? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeFirebaseIos(
      receipt: (json['receipt'] as String?) ?? '',
      pushTimeout: (json['push_timeout'] as int?) ?? 0,
      length: (json['length'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An authentication code is delivered by an immediately canceled call to the
/// specified phone number. The phone number that calls is the code that must
/// be entered automatically
@immutable
final class AuthenticationCodeTypeFlashCall extends AuthenticationCodeType {
  AuthenticationCodeTypeFlashCall({required this.pattern});

  /// [pattern] Pattern of the phone number from which the call will be made
  final String pattern;

  static const String constructor = 'authenticationCodeTypeFlashCall';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'pattern': pattern,
    '@type': constructor,
  };

  static AuthenticationCodeTypeFlashCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeFlashCall(
      pattern: (json['pattern'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A digit-only authentication code is delivered to https://fragment.com. The
/// user must be logged in there via a wallet owning the phone number's NFT
@immutable
final class AuthenticationCodeTypeFragment extends AuthenticationCodeType {
  AuthenticationCodeTypeFragment({required this.url, required this.length});

  /// [url] URL to open to receive the code
  final String url;

  /// [length] Length of the code
  final int length;

  static const String constructor = 'authenticationCodeTypeFragment';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    'length': length,
    '@type': constructor,
  };

  static AuthenticationCodeTypeFragment? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeFragment(
      url: (json['url'] as String?) ?? '',
      length: (json['length'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An authentication code is delivered by an immediately canceled call to the
/// specified phone number. The last digits of the phone number that calls are
/// the code that must be entered manually by the user
@immutable
final class AuthenticationCodeTypeMissedCall extends AuthenticationCodeType {
  AuthenticationCodeTypeMissedCall({
    required this.phoneNumberPrefix,
    required this.length,
  });

  /// [phoneNumberPrefix] Prefix of the phone number from which the call will be
  /// made
  final String phoneNumberPrefix;

  /// [length] Number of digits in the code, excluding the prefix
  final int length;

  static const String constructor = 'authenticationCodeTypeMissedCall';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'phone_number_prefix': phoneNumberPrefix,
    'length': length,
    '@type': constructor,
  };

  static AuthenticationCodeTypeMissedCall? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeMissedCall(
      phoneNumberPrefix: (json['phone_number_prefix'] as String?) ?? '',
      length: (json['length'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A digit-only authentication code is delivered via an SMS message to the
/// specified phone number; non-official applications may not receive this
/// type of code
@immutable
final class AuthenticationCodeTypeSms extends AuthenticationCodeType {
  AuthenticationCodeTypeSms({required this.length});

  /// [length] Length of the code
  final int length;

  static const String constructor = 'authenticationCodeTypeSms';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'length': length,
    '@type': constructor,
  };

  static AuthenticationCodeTypeSms? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeSms(length: (json['length'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An authentication code is a phrase from multiple words delivered via an
/// SMS message to the specified phone number; non-official applications may
/// not receive this type of code
@immutable
final class AuthenticationCodeTypeSmsPhrase extends AuthenticationCodeType {
  AuthenticationCodeTypeSmsPhrase({required this.firstWord});

  /// [firstWord] The first word of the phrase if known
  final String firstWord;

  static const String constructor = 'authenticationCodeTypeSmsPhrase';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'first_word': firstWord,
    '@type': constructor,
  };

  static AuthenticationCodeTypeSmsPhrase? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeSmsPhrase(
      firstWord: (json['first_word'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An authentication code is a word delivered via an SMS message to the
/// specified phone number; non-official applications may not receive this
/// type of code
@immutable
final class AuthenticationCodeTypeSmsWord extends AuthenticationCodeType {
  AuthenticationCodeTypeSmsWord({required this.firstLetter});

  /// [firstLetter] The first letters of the word if known
  final String firstLetter;

  static const String constructor = 'authenticationCodeTypeSmsWord';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'first_letter': firstLetter,
    '@type': constructor,
  };

  static AuthenticationCodeTypeSmsWord? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeSmsWord(
      firstLetter: (json['first_letter'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A digit-only authentication code is delivered via a private Telegram
/// message, which can be viewed from another active session
@immutable
final class AuthenticationCodeTypeTelegramMessage
    extends AuthenticationCodeType {
  AuthenticationCodeTypeTelegramMessage({required this.length});

  /// [length] Length of the code
  final int length;

  static const String constructor = 'authenticationCodeTypeTelegramMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'length': length,
    '@type': constructor,
  };

  static AuthenticationCodeTypeTelegramMessage? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return AuthenticationCodeTypeTelegramMessage(
      length: (json['length'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
