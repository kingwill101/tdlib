import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a successful payment
@immutable
final class PaymentReceipt extends TdObject {
  PaymentReceipt({
    this.productInfo,
    required this.date,
    required this.sellerBotUserId,
    this.type,
  });

  /// [productInfo] Information about the product
  final ProductInfo? productInfo;

  /// [date] Point in time (Unix timestamp) when the payment was made
  final int date;

  /// [sellerBotUserId] User identifier of the seller bot
  final int sellerBotUserId;

  /// [type] Type of the payment receipt
  final PaymentReceiptType? type;

  static const String constructor = 'paymentReceipt';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'product_info': productInfo?.toJson(),
    'date': date,
    'seller_bot_user_id': sellerBotUserId,
    'type': type?.toJson(),
    '@type': constructor,
  };

  static PaymentReceipt? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentReceipt(
      productInfo: ProductInfo.fromJson(tdMapFromJson(json['product_info'])),
      date: (json['date'] as int?) ?? 0,
      sellerBotUserId: (json['seller_bot_user_id'] as int?) ?? 0,
      type: PaymentReceiptType.fromJson(tdMapFromJson(json['type'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
