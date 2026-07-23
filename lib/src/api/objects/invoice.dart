import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Product invoice
@immutable
final class Invoice extends TdObject {
  Invoice({
    required this.currency,
    required this.priceParts,
    required this.subscriptionPeriod,
    required this.maxTipAmount,
    required this.suggestedTipAmounts,
    required this.recurringPaymentTermsOfServiceUrl,
    required this.termsOfServiceUrl,
    required this.isTest,
    required this.needName,
    required this.needPhoneNumber,
    required this.needEmailAddress,
    required this.needShippingAddress,
    required this.sendPhoneNumberToProvider,
    required this.sendEmailAddressToProvider,
    required this.isFlexible,
  });

  /// [currency] ISO 4217 currency code
  final String currency;

  /// [priceParts] A list of objects used to calculate the total price of the
  /// product
  final List<LabeledPricePart> priceParts;

  /// [subscriptionPeriod] The number of seconds between consecutive Telegram
  /// Star debiting for subscription invoices; 0 if the invoice doesn't create
  /// subscription
  final int subscriptionPeriod;

  /// [maxTipAmount] The maximum allowed amount of tip in the smallest units of
  /// the currency
  final int maxTipAmount;

  /// [suggestedTipAmounts] Suggested amounts of tip in the smallest units of
  /// the currency
  final List<int> suggestedTipAmounts;

  /// [recurringPaymentTermsOfServiceUrl] An HTTP URL with terms of service for
  /// recurring payments. If non-empty, the invoice payment will result in
  /// recurring payments and the user must accept the terms of service before
  /// allowed to pay
  final String recurringPaymentTermsOfServiceUrl;

  /// [termsOfServiceUrl] An HTTP URL with terms of service for non-recurring
  /// payments. If non-empty, then the user must accept the terms of service
  /// before allowed to pay
  final String termsOfServiceUrl;

  /// [isTest] True, if the payment is a test payment
  final bool isTest;

  /// [needName] True, if the user's name is needed for payment
  final bool needName;

  /// [needPhoneNumber] True, if the user's phone number is needed for payment
  final bool needPhoneNumber;

  /// [needEmailAddress] True, if the user's email address is needed for payment
  final bool needEmailAddress;

  /// [needShippingAddress] True, if the user's shipping address is needed for
  /// payment
  final bool needShippingAddress;

  /// [sendPhoneNumberToProvider] True, if the user's phone number will be sent
  /// to the provider
  final bool sendPhoneNumberToProvider;

  /// [sendEmailAddressToProvider] True, if the user's email address will be
  /// sent to the provider
  final bool sendEmailAddressToProvider;

  /// [isFlexible] True, if the total price depends on the shipping method
  final bool isFlexible;

  static const String constructor = 'invoice';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'currency': currency,
    'price_parts': priceParts.map((item) => item.toJson()).toList(),
    'subscription_period': subscriptionPeriod,
    'max_tip_amount': maxTipAmount,
    'suggested_tip_amounts': suggestedTipAmounts.map((item) => item).toList(),
    'recurring_payment_terms_of_service_url': recurringPaymentTermsOfServiceUrl,
    'terms_of_service_url': termsOfServiceUrl,
    'is_test': isTest,
    'need_name': needName,
    'need_phone_number': needPhoneNumber,
    'need_email_address': needEmailAddress,
    'need_shipping_address': needShippingAddress,
    'send_phone_number_to_provider': sendPhoneNumberToProvider,
    'send_email_address_to_provider': sendEmailAddressToProvider,
    'is_flexible': isFlexible,
    '@type': constructor,
  };

  static Invoice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Invoice(
      currency: (json['currency'] as String?) ?? '',
      priceParts: List<LabeledPricePart>.from(
        tdListFromJson(json['price_parts'])
            .map((item) => LabeledPricePart.fromJson(tdMapFromJson(item)))
            .whereType<LabeledPricePart>(),
      ),
      subscriptionPeriod: (json['subscription_period'] as int?) ?? 0,
      maxTipAmount: (json['max_tip_amount'] as int?) ?? 0,
      suggestedTipAmounts: List<int>.from(
        tdListFromJson(
          json['suggested_tip_amounts'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      recurringPaymentTermsOfServiceUrl:
          (json['recurring_payment_terms_of_service_url'] as String?) ?? '',
      termsOfServiceUrl: (json['terms_of_service_url'] as String?) ?? '',
      isTest: (json['is_test'] as bool?) ?? false,
      needName: (json['need_name'] as bool?) ?? false,
      needPhoneNumber: (json['need_phone_number'] as bool?) ?? false,
      needEmailAddress: (json['need_email_address'] as bool?) ?? false,
      needShippingAddress: (json['need_shipping_address'] as bool?) ?? false,
      sendPhoneNumberToProvider:
          (json['send_phone_number_to_provider'] as bool?) ?? false,
      sendEmailAddressToProvider:
          (json['send_email_address_to_provider'] as bool?) ?? false,
      isFlexible: (json['is_flexible'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
