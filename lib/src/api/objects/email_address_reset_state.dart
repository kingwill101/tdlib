import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes reset state of an email address
@immutable
sealed class EmailAddressResetState extends TdObject {
  const EmailAddressResetState();

  static const String constructor = 'emailAddressResetState';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [EmailAddressResetStateAvailable]
  /// [EmailAddressResetStatePending]
  static EmailAddressResetState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case EmailAddressResetStateAvailable.constructor:
        return EmailAddressResetStateAvailable.fromJson(json);

      case EmailAddressResetStatePending.constructor:
        return EmailAddressResetStatePending.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Email address can be reset after the given period. Call
/// resetAuthenticationEmailAddress to reset it and allow the user to
/// authorize with a code sent to the user's phone number
@immutable
final class EmailAddressResetStateAvailable extends EmailAddressResetState {
  EmailAddressResetStateAvailable({required this.waitPeriod});

  /// [waitPeriod] Time required to wait before the email address can be reset;
  /// 0 if the user is subscribed to Telegram Premium
  final int waitPeriod;

  static const String constructor = 'emailAddressResetStateAvailable';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'wait_period': waitPeriod,
    '@type': constructor,
  };

  static EmailAddressResetStateAvailable? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmailAddressResetStateAvailable(
      waitPeriod: (json['wait_period'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Email address reset has already been requested. Call
/// resetAuthenticationEmailAddress to check whether immediate reset is
/// possible
@immutable
final class EmailAddressResetStatePending extends EmailAddressResetState {
  EmailAddressResetStatePending({required this.resetIn});

  /// [resetIn] Left time before the email address will be reset, in seconds.
  /// updateAuthorizationState is not sent when this field changes
  final int resetIn;

  static const String constructor = 'emailAddressResetStatePending';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'reset_in': resetIn,
    '@type': constructor,
  };

  static EmailAddressResetStatePending? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmailAddressResetStatePending(
      resetIn: (json['reset_in'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
