import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about the availability of a temporary password, which
/// can be used for payments
@immutable
final class TemporaryPasswordState extends TdObject {
  TemporaryPasswordState({required this.hasPassword, required this.validFor});

  /// [hasPassword] True, if a temporary password is available
  final bool hasPassword;

  /// [validFor] Time left before the temporary password expires, in seconds
  final int validFor;

  static const String constructor = 'temporaryPasswordState';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'has_password': hasPassword,
    'valid_for': validFor,
    '@type': constructor,
  };

  static TemporaryPasswordState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TemporaryPasswordState(
      hasPassword: (json['has_password'] as bool?) ?? false,
      validFor: (json['valid_for'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
