import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a URL for Toncoin withdrawal from the current user's account. The
/// user must have at least 10 toncoins to withdraw and can withdraw up to
/// 100000 Toncoins in one transaction
/// Returns [HttpUrl]
@immutable
final class GetTonWithdrawalUrl extends TdFunction {
  GetTonWithdrawalUrl({required this.password});

  /// [password] The 2-step verification password of the current user
  final String password;

  static const String constructor = 'getTonWithdrawalUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'password': password,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
