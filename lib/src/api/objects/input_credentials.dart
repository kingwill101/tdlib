import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about the payment method chosen by the user
@immutable
sealed class InputCredentials extends TdObject {
  const InputCredentials();

  static const String constructor = 'inputCredentials';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [InputCredentialsApplePay]
  /// [InputCredentialsGooglePay]
  /// [InputCredentialsNew]
  /// [InputCredentialsSaved]
  static InputCredentials? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputCredentialsApplePay.constructor:
        return InputCredentialsApplePay.fromJson(json);

      case InputCredentialsGooglePay.constructor:
        return InputCredentialsGooglePay.fromJson(json);

      case InputCredentialsNew.constructor:
        return InputCredentialsNew.fromJson(json);

      case InputCredentialsSaved.constructor:
        return InputCredentialsSaved.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Applies if a user enters new credentials using Apple Pay
@immutable
final class InputCredentialsApplePay extends InputCredentials {
  InputCredentialsApplePay({required this.data});

  /// [data] JSON-encoded data with the credential identifier
  final String data;

  static const String constructor = 'inputCredentialsApplePay';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'data': data,
    '@type': constructor,
  };

  static InputCredentialsApplePay? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputCredentialsApplePay(data: (json['data'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Applies if a user enters new credentials using Google Pay
@immutable
final class InputCredentialsGooglePay extends InputCredentials {
  InputCredentialsGooglePay({required this.data});

  /// [data] JSON-encoded data with the credential identifier
  final String data;

  static const String constructor = 'inputCredentialsGooglePay';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'data': data,
    '@type': constructor,
  };

  static InputCredentialsGooglePay? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputCredentialsGooglePay(data: (json['data'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Applies if a user enters new credentials on a payment provider website
@immutable
final class InputCredentialsNew extends InputCredentials {
  InputCredentialsNew({required this.data, required this.allowSave});

  /// [data] JSON-encoded data with the credential identifier from the payment
  /// provider
  final String data;

  /// [allowSave] True, if the credential identifier can be saved on the server
  /// side
  final bool allowSave;

  static const String constructor = 'inputCredentialsNew';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'data': data,
    'allow_save': allowSave,
    '@type': constructor,
  };

  static InputCredentialsNew? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputCredentialsNew(
      data: (json['data'] as String?) ?? '',
      allowSave: (json['allow_save'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Applies if a user chooses some previously saved payment credentials. To
/// use their previously saved credentials, the user must have a valid
/// temporary password
@immutable
final class InputCredentialsSaved extends InputCredentials {
  InputCredentialsSaved({required this.savedCredentialsId});

  /// [savedCredentialsId] Identifier of the saved credentials
  final String savedCredentialsId;

  static const String constructor = 'inputCredentialsSaved';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'saved_credentials_id': savedCredentialsId,
    '@type': constructor,
  };

  static InputCredentialsSaved? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputCredentialsSaved(
      savedCredentialsId: (json['saved_credentials_id'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
