import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents the current authorization state of the TDLib client
@immutable
sealed class AuthorizationState extends TdObject {
  const AuthorizationState();

  static const String constructor = 'authorizationState';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [AuthorizationStateClosed]
  /// [AuthorizationStateClosing]
  /// [AuthorizationStateLoggingOut]
  /// [AuthorizationStateReady]
  /// [AuthorizationStateWaitCode]
  /// [AuthorizationStateWaitEmailAddress]
  /// [AuthorizationStateWaitEmailCode]
  /// [AuthorizationStateWaitOtherDeviceConfirmation]
  /// [AuthorizationStateWaitPassword]
  /// [AuthorizationStateWaitPhoneNumber]
  /// [AuthorizationStateWaitPremiumPurchase]
  /// [AuthorizationStateWaitRegistration]
  /// [AuthorizationStateWaitTdlibParameters]
  static AuthorizationState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case AuthorizationStateClosed.constructor:
        return AuthorizationStateClosed.fromJson(json);

      case AuthorizationStateClosing.constructor:
        return AuthorizationStateClosing.fromJson(json);

      case AuthorizationStateLoggingOut.constructor:
        return AuthorizationStateLoggingOut.fromJson(json);

      case AuthorizationStateReady.constructor:
        return AuthorizationStateReady.fromJson(json);

      case AuthorizationStateWaitCode.constructor:
        return AuthorizationStateWaitCode.fromJson(json);

      case AuthorizationStateWaitEmailAddress.constructor:
        return AuthorizationStateWaitEmailAddress.fromJson(json);

      case AuthorizationStateWaitEmailCode.constructor:
        return AuthorizationStateWaitEmailCode.fromJson(json);

      case AuthorizationStateWaitOtherDeviceConfirmation.constructor:
        return AuthorizationStateWaitOtherDeviceConfirmation.fromJson(json);

      case AuthorizationStateWaitPassword.constructor:
        return AuthorizationStateWaitPassword.fromJson(json);

      case AuthorizationStateWaitPhoneNumber.constructor:
        return AuthorizationStateWaitPhoneNumber.fromJson(json);

      case AuthorizationStateWaitPremiumPurchase.constructor:
        return AuthorizationStateWaitPremiumPurchase.fromJson(json);

      case AuthorizationStateWaitRegistration.constructor:
        return AuthorizationStateWaitRegistration.fromJson(json);

      case AuthorizationStateWaitTdlibParameters.constructor:
        return AuthorizationStateWaitTdlibParameters.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// TDLib client is in its final state. All databases are closed and all
/// resources are released. No other updates will be received after this. All
/// queries will be responded to with error code 500. To continue working, one
/// must create a new instance of the TDLib client
@immutable
final class AuthorizationStateClosed extends AuthorizationState {
  const AuthorizationStateClosed();

  static const String constructor = 'authorizationStateClosed';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static AuthorizationStateClosed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AuthorizationStateClosed();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// TDLib is closing, all subsequent queries will be answered with the error
/// 500. Note that closing TDLib can take a while. All resources will be freed
/// only after authorizationStateClosed has been received
@immutable
final class AuthorizationStateClosing extends AuthorizationState {
  const AuthorizationStateClosing();

  static const String constructor = 'authorizationStateClosing';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static AuthorizationStateClosing? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AuthorizationStateClosing();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is currently logging out
@immutable
final class AuthorizationStateLoggingOut extends AuthorizationState {
  const AuthorizationStateLoggingOut();

  static const String constructor = 'authorizationStateLoggingOut';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static AuthorizationStateLoggingOut? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AuthorizationStateLoggingOut();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user has been successfully authorized. TDLib is now ready to answer
/// general requests
@immutable
final class AuthorizationStateReady extends AuthorizationState {
  const AuthorizationStateReady();

  static const String constructor = 'authorizationStateReady';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static AuthorizationStateReady? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AuthorizationStateReady();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// TDLib needs the user's authentication code to authorize. Call
/// checkAuthenticationCode to check the code
@immutable
final class AuthorizationStateWaitCode extends AuthorizationState {
  AuthorizationStateWaitCode({this.codeInfo});

  /// [codeInfo] Information about the authorization code that was sent
  final AuthenticationCodeInfo? codeInfo;

  static const String constructor = 'authorizationStateWaitCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'code_info': codeInfo?.toJson(),
    '@type': constructor,
  };

  static AuthorizationStateWaitCode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthorizationStateWaitCode(
      codeInfo: AuthenticationCodeInfo.fromJson(
        tdMapFromJson(json['code_info']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// TDLib needs the user's email address to authorize. Call
/// setAuthenticationEmailAddress to provide the email address, or directly
/// call checkAuthenticationEmailCode with Apple ID/Google ID token if allowed
@immutable
final class AuthorizationStateWaitEmailAddress extends AuthorizationState {
  AuthorizationStateWaitEmailAddress({
    required this.allowAppleId,
    required this.allowGoogleId,
  });

  /// [allowAppleId] True, if authorization through Apple ID is allowed
  final bool allowAppleId;

  /// [allowGoogleId] True, if authorization through Google ID is allowed
  final bool allowGoogleId;

  static const String constructor = 'authorizationStateWaitEmailAddress';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'allow_apple_id': allowAppleId,
    'allow_google_id': allowGoogleId,
    '@type': constructor,
  };

  static AuthorizationStateWaitEmailAddress? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return AuthorizationStateWaitEmailAddress(
      allowAppleId: (json['allow_apple_id'] as bool?) ?? false,
      allowGoogleId: (json['allow_google_id'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// TDLib needs the user's authentication code sent to an email address to
/// authorize. Call checkAuthenticationEmailCode to provide the code
@immutable
final class AuthorizationStateWaitEmailCode extends AuthorizationState {
  AuthorizationStateWaitEmailCode({
    required this.allowAppleId,
    required this.allowGoogleId,
    this.codeInfo,
    this.emailAddressResetState,
  });

  /// [allowAppleId] True, if authorization through Apple ID is allowed
  final bool allowAppleId;

  /// [allowGoogleId] True, if authorization through Google ID is allowed
  final bool allowGoogleId;

  /// [codeInfo] Information about the sent authentication code
  final EmailAddressAuthenticationCodeInfo? codeInfo;

  /// [emailAddressResetState] Reset state of the email address; may be null if
  /// the email address can't be reset
  final EmailAddressResetState? emailAddressResetState;

  static const String constructor = 'authorizationStateWaitEmailCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'allow_apple_id': allowAppleId,
    'allow_google_id': allowGoogleId,
    'code_info': codeInfo?.toJson(),
    'email_address_reset_state': emailAddressResetState?.toJson(),
    '@type': constructor,
  };

  static AuthorizationStateWaitEmailCode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthorizationStateWaitEmailCode(
      allowAppleId: (json['allow_apple_id'] as bool?) ?? false,
      allowGoogleId: (json['allow_google_id'] as bool?) ?? false,
      codeInfo: EmailAddressAuthenticationCodeInfo.fromJson(
        tdMapFromJson(json['code_info']),
      ),
      emailAddressResetState: EmailAddressResetState.fromJson(
        tdMapFromJson(json['email_address_reset_state']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user needs to confirm authorization on another logged in device by
/// scanning a QR code with the provided link
@immutable
final class AuthorizationStateWaitOtherDeviceConfirmation
    extends AuthorizationState {
  AuthorizationStateWaitOtherDeviceConfirmation({required this.link});

  /// [link] A tg:// URL for the QR code. The link will be updated frequently
  final String link;

  static const String constructor =
      'authorizationStateWaitOtherDeviceConfirmation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'link': link,
    '@type': constructor,
  };

  static AuthorizationStateWaitOtherDeviceConfirmation? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return AuthorizationStateWaitOtherDeviceConfirmation(
      link: (json['link'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user has been authorized, but needs to enter a 2-step verification
/// password to start using the application. Call checkAuthenticationPassword
/// to provide the password, or requestAuthenticationPasswordRecovery to
/// recover the password, or deleteAccount to delete the account after a week
@immutable
final class AuthorizationStateWaitPassword extends AuthorizationState {
  AuthorizationStateWaitPassword({
    required this.passwordHint,
    required this.hasRecoveryEmailAddress,
    required this.hasPassportData,
    required this.recoveryEmailAddressPattern,
  });

  /// [passwordHint] Hint for the password; may be empty
  final String passwordHint;

  /// [hasRecoveryEmailAddress] True, if a recovery email address has been set
  /// up
  final bool hasRecoveryEmailAddress;

  /// [hasPassportData] True, if some Telegram Passport elements were saved
  final bool hasPassportData;

  /// [recoveryEmailAddressPattern] Pattern of the email address to which the
  /// recovery email was sent; empty until a recovery email has been sent
  final String recoveryEmailAddressPattern;

  static const String constructor = 'authorizationStateWaitPassword';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'password_hint': passwordHint,
    'has_recovery_email_address': hasRecoveryEmailAddress,
    'has_passport_data': hasPassportData,
    'recovery_email_address_pattern': recoveryEmailAddressPattern,
    '@type': constructor,
  };

  static AuthorizationStateWaitPassword? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthorizationStateWaitPassword(
      passwordHint: (json['password_hint'] as String?) ?? '',
      hasRecoveryEmailAddress:
          (json['has_recovery_email_address'] as bool?) ?? false,
      hasPassportData: (json['has_passport_data'] as bool?) ?? false,
      recoveryEmailAddressPattern:
          (json['recovery_email_address_pattern'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// TDLib needs the user's phone number to authorize. Call
/// setAuthenticationPhoneNumber to provide the phone number, or use
/// requestQrCodeAuthentication, getAuthenticationPasskeyParameters,
/// checkAuthenticationWebToken, or checkAuthenticationBotToken for other
/// authentication options
@immutable
final class AuthorizationStateWaitPhoneNumber extends AuthorizationState {
  const AuthorizationStateWaitPhoneNumber();

  static const String constructor = 'authorizationStateWaitPhoneNumber';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static AuthorizationStateWaitPhoneNumber? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const AuthorizationStateWaitPhoneNumber();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user must buy Telegram Premium as an in-store purchase to log in. Call
/// checkAuthenticationPremiumPurchase and then
/// setAuthenticationPremiumPurchaseTransaction
@immutable
final class AuthorizationStateWaitPremiumPurchase extends AuthorizationState {
  AuthorizationStateWaitPremiumPurchase({
    required this.storeProductId,
    required this.premiumDayCount,
    required this.supportEmailAddress,
    required this.supportEmailSubject,
  });

  /// [storeProductId] Identifier of the store product that must be bought
  final String storeProductId;

  /// [premiumDayCount] Duration of the Telegram Premium subscription after the
  /// purchase; may be 0 if Telegram Premium subscription will not be granted
  final int premiumDayCount;

  /// [supportEmailAddress] Email address to use for support if the user has
  /// issues with Telegram Premium purchase
  final String supportEmailAddress;

  /// [supportEmailSubject] Subject for the email sent to the support email
  /// address
  final String supportEmailSubject;

  static const String constructor = 'authorizationStateWaitPremiumPurchase';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'store_product_id': storeProductId,
    'premium_day_count': premiumDayCount,
    'support_email_address': supportEmailAddress,
    'support_email_subject': supportEmailSubject,
    '@type': constructor,
  };

  static AuthorizationStateWaitPremiumPurchase? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return AuthorizationStateWaitPremiumPurchase(
      storeProductId: (json['store_product_id'] as String?) ?? '',
      premiumDayCount: (json['premium_day_count'] as int?) ?? 0,
      supportEmailAddress: (json['support_email_address'] as String?) ?? '',
      supportEmailSubject: (json['support_email_subject'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is unregistered and needs to accept terms of service and enter
/// their first name and last name to finish registration. Call registerUser
/// to accept the terms of service and provide the data
@immutable
final class AuthorizationStateWaitRegistration extends AuthorizationState {
  AuthorizationStateWaitRegistration({this.termsOfService});

  /// [termsOfService] Telegram terms of service
  final TermsOfService? termsOfService;

  static const String constructor = 'authorizationStateWaitRegistration';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'terms_of_service': termsOfService?.toJson(),
    '@type': constructor,
  };

  static AuthorizationStateWaitRegistration? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return AuthorizationStateWaitRegistration(
      termsOfService: TermsOfService.fromJson(
        tdMapFromJson(json['terms_of_service']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Initialization parameters are needed. Call setTdlibParameters to provide
/// them
@immutable
final class AuthorizationStateWaitTdlibParameters extends AuthorizationState {
  const AuthorizationStateWaitTdlibParameters();

  static const String constructor = 'authorizationStateWaitTdlibParameters';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static AuthorizationStateWaitTdlibParameters? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const AuthorizationStateWaitTdlibParameters();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
