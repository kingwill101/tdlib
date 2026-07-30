import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of Telegram Star transactions
@immutable
final class StarTransactions extends TdObject {
  StarTransactions({
    this.starAmount,
    required this.transactions,
    required this.nextOffset,
  });

  /// [starAmount] The amount of owned Telegram Stars
  final StarAmount? starAmount;

  /// [transactions] List of transactions with Telegram Stars
  final List<StarTransaction> transactions;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'starTransactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'star_amount': starAmount?.toJson(),
    'transactions': transactions.map((item) => item.toJson()).toList(),
    'next_offset': nextOffset,
    '@type': constructor,
  };

  static StarTransactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactions(
      starAmount: StarAmount.fromJson(tdMapFromJson(json['star_amount'])),
      transactions: List<StarTransaction>.from(
        tdListFromJson(json['transactions'])
            .map((item) => StarTransaction.fromJson(tdMapFromJson(item)))
            .whereType<StarTransaction>(),
      ),
      nextOffset: (json['next_offset'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
