import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of chat revenue transactions
@immutable
final class ChatRevenueTransactions extends TdObject {
  ChatRevenueTransactions({
    required this.gramAmount,
    required this.transactions,
    required this.nextOffset,
  });

  /// [gramAmount] The amount of owned TON Grams; in the smallest units of the
  /// cryptocurrency
  final int gramAmount;

  /// [transactions] List of transactions
  final List<ChatRevenueTransaction> transactions;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'chatRevenueTransactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gram_amount': gramAmount,
    'transactions': transactions.map((item) => item.toJson()).toList(),
    'next_offset': nextOffset,
    '@type': constructor,
  };

  static ChatRevenueTransactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatRevenueTransactions(
      gramAmount: (json['gram_amount'] as int?) ?? 0,
      transactions: List<ChatRevenueTransaction>.from(
        tdListFromJson(json['transactions'])
            .map((item) => ChatRevenueTransaction.fromJson(tdMapFromJson(item)))
            .whereType<ChatRevenueTransaction>(),
      ),
      nextOffset: (json['next_offset'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
