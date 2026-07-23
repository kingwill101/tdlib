import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about Toncoins earned by the current user
@immutable
final class TonRevenueStatus extends TdObject {
  TonRevenueStatus({
    required this.totalAmount,
    required this.balanceAmount,
    required this.availableAmount,
    required this.withdrawalEnabled,
  });

  /// [totalAmount] Total Toncoin amount earned; in the smallest units of the
  /// cryptocurrency
  final int totalAmount;

  /// [balanceAmount] The Toncoin amount that isn't withdrawn yet; in the
  /// smallest units of the cryptocurrency
  final int balanceAmount;

  /// [availableAmount] The Toncoin amount that is available for withdrawal; in
  /// the smallest units of the cryptocurrency
  final int availableAmount;

  /// [withdrawalEnabled] True, if Toncoins can be withdrawn
  final bool withdrawalEnabled;

  static const String constructor = 'tonRevenueStatus';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_amount': totalAmount.toString(),
    'balance_amount': balanceAmount.toString(),
    'available_amount': availableAmount.toString(),
    'withdrawal_enabled': withdrawalEnabled,
    '@type': constructor,
  };

  static TonRevenueStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TonRevenueStatus(
      totalAmount:
          int.tryParse((json['total_amount'] as dynamic)?.toString() ?? '') ??
          0,
      balanceAmount:
          int.tryParse((json['balance_amount'] as dynamic)?.toString() ?? '') ??
          0,
      availableAmount:
          int.tryParse(
            (json['available_amount'] as dynamic)?.toString() ?? '',
          ) ??
          0,
      withdrawalEnabled: (json['withdrawal_enabled'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
