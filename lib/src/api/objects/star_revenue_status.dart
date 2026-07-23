import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about Telegram Stars earned by a user or a chat
@immutable
final class StarRevenueStatus extends TdObject {
  StarRevenueStatus({
    this.totalAmount,
    this.currentAmount,
    this.availableAmount,
    required this.withdrawalEnabled,
    required this.nextWithdrawalIn,
  });

  /// [totalAmount] Total Telegram Star amount earned
  final StarAmount? totalAmount;

  /// [currentAmount] The Telegram Star amount that isn't withdrawn yet
  final StarAmount? currentAmount;

  /// [availableAmount] The Telegram Star amount that is available for
  /// withdrawal
  final StarAmount? availableAmount;

  /// [withdrawalEnabled] True, if Telegram Stars can be withdrawn now or later
  final bool withdrawalEnabled;

  /// [nextWithdrawalIn] Time left before the next withdrawal can be started, in
  /// seconds; 0 if withdrawal can be started now
  final int nextWithdrawalIn;

  static const String constructor = 'starRevenueStatus';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_amount': totalAmount?.toJson(),
    'current_amount': currentAmount?.toJson(),
    'available_amount': availableAmount?.toJson(),
    'withdrawal_enabled': withdrawalEnabled,
    'next_withdrawal_in': nextWithdrawalIn,
    '@type': constructor,
  };

  static StarRevenueStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarRevenueStatus(
      totalAmount: StarAmount.fromJson(tdMapFromJson(json['total_amount'])),
      currentAmount: StarAmount.fromJson(tdMapFromJson(json['current_amount'])),
      availableAmount: StarAmount.fromJson(
        tdMapFromJson(json['available_amount']),
      ),
      withdrawalEnabled: (json['withdrawal_enabled'] as bool?) ?? false,
      nextWithdrawalIn: (json['next_withdrawal_in'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
