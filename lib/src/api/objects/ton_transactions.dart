import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of Toncoin transactions
@immutable
final class TonTransactions extends TdObject {
  TonTransactions({
    required this.tonAmount,
    required this.transactions,
    required this.nextOffset,
  });

  /// [tonAmount] The total amount of owned Toncoins
  final int tonAmount;

  /// [transactions] List of Toncoin transactions
  final List<TonTransaction> transactions;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'tonTransactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'ton_amount': tonAmount,
    'transactions': transactions.map((item) => item.toJson()).toList(),
    'next_offset': nextOffset,
    '@type': constructor,
  };

  static TonTransactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TonTransactions(
      tonAmount: (json['ton_amount'] as int?) ?? 0,
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
