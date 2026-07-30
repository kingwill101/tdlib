import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of TON Gram transactions
@immutable
final class TonTransactions extends TdObject {
  TonTransactions({
    required this.gramAmount,
    required this.transactions,
    required this.nextOffset,
  });

  /// [gramAmount] The total amount of owned Grams, in the smallest units of the
  /// cryptocurrency
  final int gramAmount;

  /// [transactions] List of Gram transactions
  final List<TonTransaction> transactions;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'tonTransactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gram_amount': gramAmount,
    'transactions': transactions.map((item) => item.toJson()).toList(),
    'next_offset': nextOffset,
    '@type': constructor,
  };

  static TonTransactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TonTransactions(
      gramAmount: (json['gram_amount'] as int?) ?? 0,
      transactions: List<TonTransaction>.from(
        tdListFromJson(json['transactions'])
            .map((item) => TonTransaction.fromJson(tdMapFromJson(item)))
            .whereType<TonTransaction>(),
      ),
      nextOffset: (json['next_offset'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
