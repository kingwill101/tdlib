import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an option for buying Telegram Stars. Use
/// telegramPaymentPurposeStars for out-of-store payments
@immutable
final class StarPaymentOption extends TdObject {
  StarPaymentOption({
    required this.currency,
    required this.amount,
    required this.starCount,
    required this.storeProductId,
    required this.isAdditional,
  });

  /// [currency] ISO 4217 currency code for the payment
  final String currency;

  /// [amount] The amount to pay, in the smallest units of the currency
  final int amount;

  /// [starCount] Number of Telegram Stars that will be purchased
  final int starCount;

  /// [storeProductId] Identifier of the store product associated with the
  /// option; may be empty if none
  final String storeProductId;

  /// [isAdditional] True, if the option must be shown only in the full list of
  /// payment options
  final bool isAdditional;

  static const String constructor = 'starPaymentOption';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'currency': currency,
    'amount': amount,
    'star_count': starCount,
    'store_product_id': storeProductId,
    'is_additional': isAdditional,
    '@type': constructor,
  };

  static StarPaymentOption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarPaymentOption(
      currency: (json['currency'] as String?) ?? '',
      amount: (json['amount'] as int?) ?? 0,
      starCount: (json['star_count'] as int?) ?? 0,
      storeProductId: (json['store_product_id'] as String?) ?? '',
      isAdditional: (json['is_additional'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
