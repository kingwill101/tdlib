import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of successful payment
@immutable
sealed class PaymentReceiptType extends TdObject {
  const PaymentReceiptType();

  static const String constructor = 'paymentReceiptType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [PaymentReceiptTypeRegular]
  /// [PaymentReceiptTypeStars]
  static PaymentReceiptType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PaymentReceiptTypeRegular.constructor:
        return PaymentReceiptTypeRegular.fromJson(json);

      case PaymentReceiptTypeStars.constructor:
        return PaymentReceiptTypeStars.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The payment was done using a third-party payment provider
@immutable
final class PaymentReceiptTypeRegular extends PaymentReceiptType {
  PaymentReceiptTypeRegular({
    required this.paymentProviderUserId,
    this.invoice,
    this.orderInfo,
    this.shippingOption,
    required this.credentialsTitle,
    required this.tipAmount,
  });

  /// [paymentProviderUserId] User identifier of the payment provider bot
  final int paymentProviderUserId;

  /// [invoice] Information about the invoice
  final Invoice? invoice;

  /// [orderInfo] Order information; may be null
  final OrderInfo? orderInfo;

  /// [shippingOption] Chosen shipping option; may be null
  final ShippingOption? shippingOption;

  /// [credentialsTitle] Title of the saved credentials chosen by the buyer
  final String credentialsTitle;

  /// [tipAmount] The amount of tip chosen by the buyer in the smallest units of
  /// the currency
  final int tipAmount;

  static const String constructor = 'paymentReceiptTypeRegular';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'payment_provider_user_id': paymentProviderUserId,
    'invoice': invoice?.toJson(),
    'order_info': orderInfo?.toJson(),
    'shipping_option': shippingOption?.toJson(),
    'credentials_title': credentialsTitle,
    'tip_amount': tipAmount,
    '@type': constructor,
  };

  static PaymentReceiptTypeRegular? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentReceiptTypeRegular(
      paymentProviderUserId: (json['payment_provider_user_id'] as int?) ?? 0,
      invoice: Invoice.fromJson(tdMapFromJson(json['invoice'])),
      orderInfo: OrderInfo.fromJson(tdMapFromJson(json['order_info'])),
      shippingOption: ShippingOption.fromJson(
        tdMapFromJson(json['shipping_option']),
      ),
      credentialsTitle: (json['credentials_title'] as String?) ?? '',
      tipAmount: (json['tip_amount'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The payment was done using Telegram Stars
@immutable
final class PaymentReceiptTypeStars extends PaymentReceiptType {
  PaymentReceiptTypeStars({
    required this.starCount,
    required this.transactionId,
  });

  /// [starCount] Number of Telegram Stars that were paid
  final int starCount;

  /// [transactionId] Unique identifier of the transaction that can be used to
  /// dispute it
  final String transactionId;

  static const String constructor = 'paymentReceiptTypeStars';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'star_count': starCount,
    'transaction_id': transactionId,
    '@type': constructor,
  };

  static PaymentReceiptTypeStars? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentReceiptTypeStars(
      starCount: (json['star_count'] as int?) ?? 0,
      transactionId: (json['transaction_id'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
