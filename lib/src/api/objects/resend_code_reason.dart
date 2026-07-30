import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the reason why a code needs to be re-sent
@immutable
sealed class ResendCodeReason extends TdObject {
  const ResendCodeReason();

  static const String constructor = 'resendCodeReason';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ResendCodeReasonUserRequest]
  /// [ResendCodeReasonVerificationFailed]
  static ResendCodeReason? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ResendCodeReasonUserRequest.constructor:
        return ResendCodeReasonUserRequest.fromJson(json);

      case ResendCodeReasonVerificationFailed.constructor:
        return ResendCodeReasonVerificationFailed.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user requested to resend the code
@immutable
final class ResendCodeReasonUserRequest extends ResendCodeReason {
  const ResendCodeReasonUserRequest();

  static const String constructor = 'resendCodeReasonUserRequest';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ResendCodeReasonUserRequest? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ResendCodeReasonUserRequest();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The code is re-sent, because device verification has failed
@immutable
final class ResendCodeReasonVerificationFailed extends ResendCodeReason {
  ResendCodeReasonVerificationFailed({required this.errorMessage});

  /// [errorMessage] Cause of the verification failure, for example,
  /// "PLAY_SERVICES_NOT_AVAILABLE", "APNS_RECEIVE_TIMEOUT", or
  /// "APNS_INIT_FAILED"
  final String errorMessage;

  static const String constructor = 'resendCodeReasonVerificationFailed';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'error_message': errorMessage,
    '@type': constructor,
  };

  static ResendCodeReasonVerificationFailed? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ResendCodeReasonVerificationFailed(
      errorMessage: (json['error_message'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
