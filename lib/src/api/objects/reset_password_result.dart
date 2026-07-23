import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents result of 2-step verification password reset
@immutable
sealed class ResetPasswordResult extends TdObject {
  const ResetPasswordResult();

  static const String constructor = 'resetPasswordResult';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ResetPasswordResultDeclined]
  /// [ResetPasswordResultOk]
  /// [ResetPasswordResultPending]
  static ResetPasswordResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ResetPasswordResultDeclined.constructor:
        return ResetPasswordResultDeclined.fromJson(json);

      case ResetPasswordResultOk.constructor:
        return ResetPasswordResultOk.fromJson(json);

      case ResetPasswordResultPending.constructor:
        return ResetPasswordResultPending.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The password reset request was declined
@immutable
final class ResetPasswordResultDeclined extends ResetPasswordResult {
  ResetPasswordResultDeclined({required this.retryDate});

  /// [retryDate] Point in time (Unix timestamp) when the password reset can be
  /// retried
  final int retryDate;

  static const String constructor = 'resetPasswordResultDeclined';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'retry_date': retryDate,
    '@type': constructor,
  };

  static ResetPasswordResultDeclined? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ResetPasswordResultDeclined(
      retryDate: (json['retry_date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The password was reset
@immutable
final class ResetPasswordResultOk extends ResetPasswordResult {
  const ResetPasswordResultOk();

  static const String constructor = 'resetPasswordResultOk';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ResetPasswordResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ResetPasswordResultOk();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The password reset request is pending
@immutable
final class ResetPasswordResultPending extends ResetPasswordResult {
  ResetPasswordResultPending({required this.pendingResetDate});

  /// [pendingResetDate] Point in time (Unix timestamp) after which the password
  /// can be reset immediately using resetPassword
  final int pendingResetDate;

  static const String constructor = 'resetPasswordResultPending';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'pending_reset_date': pendingResetDate,
    '@type': constructor,
  };

  static ResetPasswordResultPending? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ResetPasswordResultPending(
      pendingResetDate: (json['pending_reset_date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
