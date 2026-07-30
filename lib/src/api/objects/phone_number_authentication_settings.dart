import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains settings for the authentication of the user's phone number
@immutable
final class PhoneNumberAuthenticationSettings extends TdObject {
  PhoneNumberAuthenticationSettings({
    required this.allowFlashCall,
    required this.allowMissedCall,
    required this.isCurrentPhoneNumber,
    required this.hasUnknownPhoneNumber,
    required this.allowSmsRetrieverApi,
    this.firebaseAuthenticationSettings,
    required this.authenticationTokens,
  });

  /// [allowFlashCall] Pass true if the authentication code may be sent via a
  /// flash call to the specified phone number
  final bool allowFlashCall;

  /// [allowMissedCall] Pass true if the authentication code may be sent via a
  /// missed call to the specified phone number
  final bool allowMissedCall;

  /// [isCurrentPhoneNumber] Pass true if the authenticated phone number is used
  /// on the current device
  final bool isCurrentPhoneNumber;

  /// [hasUnknownPhoneNumber] Pass true if there is a SIM card in the current
  /// device, but it is not possible to check whether phone number matches
  final bool hasUnknownPhoneNumber;

  /// [allowSmsRetrieverApi] For official applications only. True, if the
  /// application can use Android SMS Retriever API (requires Google Play
  /// Services
  final bool allowSmsRetrieverApi;

  /// [firebaseAuthenticationSettings] For official Android and iOS applications
  /// only; pass null otherwise. Settings for Firebase Authentication
  final FirebaseAuthenticationSettings? firebaseAuthenticationSettings;

  /// [authenticationTokens] List of up to 20 authentication tokens, recently
  /// received in updateOption("authentication_token") in previously logged out
  /// sessions; for setAuthenticationPhoneNumber only
  final List<String> authenticationTokens;

  static const String constructor = 'phoneNumberAuthenticationSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'allow_flash_call': allowFlashCall,
    'allow_missed_call': allowMissedCall,
    'is_current_phone_number': isCurrentPhoneNumber,
    'has_unknown_phone_number': hasUnknownPhoneNumber,
    'allow_sms_retriever_api': allowSmsRetrieverApi,
    'firebase_authentication_settings': firebaseAuthenticationSettings
        ?.toJson(),
    'authentication_tokens': authenticationTokens.map((item) => item).toList(),
    '@type': constructor,
  };

  static PhoneNumberAuthenticationSettings? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PhoneNumberAuthenticationSettings(
      allowFlashCall: (json['allow_flash_call'] as bool?) ?? false,
      allowMissedCall: (json['allow_missed_call'] as bool?) ?? false,
      isCurrentPhoneNumber: (json['is_current_phone_number'] as bool?) ?? false,
      hasUnknownPhoneNumber:
          (json['has_unknown_phone_number'] as bool?) ?? false,
      allowSmsRetrieverApi: (json['allow_sms_retriever_api'] as bool?) ?? false,
      firebaseAuthenticationSettings: FirebaseAuthenticationSettings.fromJson(
        tdMapFromJson(json['firebase_authentication_settings']),
      ),
      authenticationTokens: List<String>.from(
        tdListFromJson(
          json['authentication_tokens'],
        ).map((item) => (item as dynamic)?.toString() ?? ''),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
