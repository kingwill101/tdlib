import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a chat revenue transactions
@immutable
final class ChatRevenueTransaction extends TdObject {
  ChatRevenueTransaction({
    required this.cryptocurrency,
    required this.cryptocurrencyAmount,
    this.type,
  });

  /// [cryptocurrency] Cryptocurrency in which revenue is calculated
  final String cryptocurrency;

  /// [cryptocurrencyAmount] The withdrawn amount, in the smallest units of the
  /// cryptocurrency
  final int cryptocurrencyAmount;

  /// [type] Type of the transaction
  final ChatRevenueTransactionType? type;

  static const String constructor = 'chatRevenueTransaction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'cryptocurrency': cryptocurrency,
    'cryptocurrency_amount': cryptocurrencyAmount.toString(),
    'type': type?.toJson(),
    '@type': constructor,
  };

  static ChatRevenueTransaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatRevenueTransaction(
      cryptocurrency: (json['cryptocurrency'] as String?) ?? '',
      cryptocurrencyAmount:
          int.tryParse(
            (json['cryptocurrency_amount'] as dynamic)?.toString() ?? '',
          ) ??
          0,
      type: ChatRevenueTransactionType.fromJson(tdMapFromJson(json['type'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
