import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of payment form
@immutable
sealed class PaymentFormType extends TdObject {
  const PaymentFormType();

  static const String constructor = 'paymentFormType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [PaymentFormTypeRegular]
  /// [PaymentFormTypeStarSubscription]
  /// [PaymentFormTypeStars]
  static PaymentFormType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PaymentFormTypeRegular.constructor:
        return PaymentFormTypeRegular.fromJson(json);

      case PaymentFormTypeStarSubscription.constructor:
        return PaymentFormTypeStarSubscription.fromJson(json);

      case PaymentFormTypeStars.constructor:
        return PaymentFormTypeStars.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The payment form is for a regular payment
@immutable
final class PaymentFormTypeRegular extends PaymentFormType {
  PaymentFormTypeRegular({
    this.invoice,
    required this.paymentProviderUserId,
    this.paymentProvider,
    required this.additionalPaymentOptions,
    this.savedOrderInfo,
    required this.savedCredentials,
    required this.canSaveCredentials,
    required this.needPassword,
  });

  /// [invoice] Full information about the invoice
  final Invoice? invoice;

  /// [paymentProviderUserId] User identifier of the payment provider bot
  final int paymentProviderUserId;

  /// [paymentProvider] Information about the payment provider
  final PaymentProvider? paymentProvider;

  /// [additionalPaymentOptions] The list of additional payment options
  final List<PaymentOption> additionalPaymentOptions;

  /// [savedOrderInfo] Saved server-side order information; may be null
  final OrderInfo? savedOrderInfo;

  /// [savedCredentials] The list of saved payment credentials
  final List<SavedCredentials> savedCredentials;

  /// [canSaveCredentials] True, if the user can choose to save credentials
  final bool canSaveCredentials;

  /// [needPassword] True, if the user will be able to save credentials, if sets
  /// up a 2-step verification password
  final bool needPassword;

  static const String constructor = 'paymentFormTypeRegular';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'invoice': invoice?.toJson(),
    'payment_provider_user_id': paymentProviderUserId,
    'payment_provider': paymentProvider?.toJson(),
    'additional_payment_options': additionalPaymentOptions
        .map((item) => item.toJson())
        .toList(),
    'saved_order_info': savedOrderInfo?.toJson(),
    'saved_credentials': savedCredentials.map((item) => item.toJson()).toList(),
    'can_save_credentials': canSaveCredentials,
    'need_password': needPassword,
    '@type': constructor,
  };

  static PaymentFormTypeRegular? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentFormTypeRegular(
      invoice: Invoice.fromJson(tdMapFromJson(json['invoice'])),
      paymentProviderUserId: (json['payment_provider_user_id'] as int?) ?? 0,
      paymentProvider: PaymentProvider.fromJson(
        tdMapFromJson(json['payment_provider']),
      ),
      additionalPaymentOptions: List<PaymentOption>.from(
        tdListFromJson(json['additional_payment_options'])
            .map((item) => PaymentOption.fromJson(tdMapFromJson(item)))
            .whereType<PaymentOption>(),
      ),
      savedOrderInfo: OrderInfo.fromJson(
        tdMapFromJson(json['saved_order_info']),
      ),
      savedCredentials: List<SavedCredentials>.from(
        tdListFromJson(json['saved_credentials'])
            .map((item) => SavedCredentials.fromJson(tdMapFromJson(item)))
            .whereType<SavedCredentials>(),
      ),
      canSaveCredentials: (json['can_save_credentials'] as bool?) ?? false,
      needPassword: (json['need_password'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The payment form is for a payment in Telegram Stars for subscription
@immutable
final class PaymentFormTypeStarSubscription extends PaymentFormType {
  PaymentFormTypeStarSubscription({this.pricing});

  /// [pricing] Information about subscription plan
  final StarSubscriptionPricing? pricing;

  static const String constructor = 'paymentFormTypeStarSubscription';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'pricing': pricing?.toJson(),
    '@type': constructor,
  };

  static PaymentFormTypeStarSubscription? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentFormTypeStarSubscription(
      pricing: StarSubscriptionPricing.fromJson(tdMapFromJson(json['pricing'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The payment form is for a payment in Telegram Stars
@immutable
final class PaymentFormTypeStars extends PaymentFormType {
  PaymentFormTypeStars({required this.starCount});

  /// [starCount] Number of Telegram Stars that will be paid
  final int starCount;

  static const String constructor = 'paymentFormTypeStars';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'star_count': starCount,
    '@type': constructor,
  };

  static PaymentFormTypeStars? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentFormTypeStars(starCount: (json['star_count'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
