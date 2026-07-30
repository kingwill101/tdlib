import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes parameters to be used for device verification
@immutable
sealed class FirebaseDeviceVerificationParameters extends TdObject {
  const FirebaseDeviceVerificationParameters();

  static const String constructor = 'firebaseDeviceVerificationParameters';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [FirebaseDeviceVerificationParametersPlayIntegrity]
  /// [FirebaseDeviceVerificationParametersSafetyNet]
  static FirebaseDeviceVerificationParameters? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case FirebaseDeviceVerificationParametersPlayIntegrity.constructor:
        return FirebaseDeviceVerificationParametersPlayIntegrity.fromJson(json);

      case FirebaseDeviceVerificationParametersSafetyNet.constructor:
        return FirebaseDeviceVerificationParametersSafetyNet.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Device verification must be performed with the classic Play Integrity
/// verification (https://developer.android.com/google/play/integrity/classic)
@immutable
final class FirebaseDeviceVerificationParametersPlayIntegrity
    extends FirebaseDeviceVerificationParameters {
  FirebaseDeviceVerificationParametersPlayIntegrity({
    required this.nonce,
    required this.cloudProjectNumber,
  });

  /// [nonce] Base64url-encoded nonce to pass to the Play Integrity API
  final String nonce;

  /// [cloudProjectNumber] Cloud project number to pass to the Play Integrity
  /// API
  final int cloudProjectNumber;

  static const String constructor =
      'firebaseDeviceVerificationParametersPlayIntegrity';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'nonce': nonce,
    'cloud_project_number': cloudProjectNumber.toString(),
    '@type': constructor,
  };

  static FirebaseDeviceVerificationParametersPlayIntegrity? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return FirebaseDeviceVerificationParametersPlayIntegrity(
      nonce: (json['nonce'] as String?) ?? '',
      cloudProjectNumber:
          int.tryParse(
            (json['cloud_project_number'] as dynamic)?.toString() ?? '',
          ) ??
          0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Device verification must be performed with the SafetyNet Attestation API
@immutable
final class FirebaseDeviceVerificationParametersSafetyNet
    extends FirebaseDeviceVerificationParameters {
  FirebaseDeviceVerificationParametersSafetyNet({required this.nonce});

  /// [nonce] Nonce to pass to the SafetyNet Attestation API
  final String nonce;

  static const String constructor =
      'firebaseDeviceVerificationParametersSafetyNet';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'nonce': nonce,
    '@type': constructor,
  };

  static FirebaseDeviceVerificationParametersSafetyNet? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return FirebaseDeviceVerificationParametersSafetyNet(
      nonce: (json['nonce'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
