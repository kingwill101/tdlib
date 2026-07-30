import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a payment provider
@immutable
sealed class PaymentProvider extends TdObject {
  const PaymentProvider();

  static const String constructor = 'paymentProvider';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [PaymentProviderOther]
  /// [PaymentProviderSmartGlocal]
  /// [PaymentProviderStripe]
  static PaymentProvider? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PaymentProviderOther.constructor:
        return PaymentProviderOther.fromJson(json);

      case PaymentProviderSmartGlocal.constructor:
        return PaymentProviderSmartGlocal.fromJson(json);

      case PaymentProviderStripe.constructor:
        return PaymentProviderStripe.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Some other payment provider, for which a web payment form must be shown
@immutable
final class PaymentProviderOther extends PaymentProvider {
  PaymentProviderOther({required this.url});

  /// [url] Payment form URL
  final String url;

  static const String constructor = 'paymentProviderOther';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    '@type': constructor,
  };

  static PaymentProviderOther? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentProviderOther(url: (json['url'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Smart Glocal payment provider
@immutable
final class PaymentProviderSmartGlocal extends PaymentProvider {
  PaymentProviderSmartGlocal({
    required this.publicToken,
    required this.tokenizeUrl,
  });

  /// [publicToken] Public payment token
  final String publicToken;

  /// [tokenizeUrl] URL for sending card tokenization requests
  final String tokenizeUrl;

  static const String constructor = 'paymentProviderSmartGlocal';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'public_token': publicToken,
    'tokenize_url': tokenizeUrl,
    '@type': constructor,
  };

  static PaymentProviderSmartGlocal? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentProviderSmartGlocal(
      publicToken: (json['public_token'] as String?) ?? '',
      tokenizeUrl: (json['tokenize_url'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Stripe payment provider
@immutable
final class PaymentProviderStripe extends PaymentProvider {
  PaymentProviderStripe({
    required this.publishableKey,
    required this.needCountry,
    required this.needPostalCode,
    required this.needCardholderName,
  });

  /// [publishableKey] Stripe API publishable key
  final String publishableKey;

  /// [needCountry] True, if the user country must be provided
  final bool needCountry;

  /// [needPostalCode] True, if the user ZIP/postal code must be provided
  final bool needPostalCode;

  /// [needCardholderName] True, if the cardholder name must be provided
  final bool needCardholderName;

  static const String constructor = 'paymentProviderStripe';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'publishable_key': publishableKey,
    'need_country': needCountry,
    'need_postal_code': needPostalCode,
    'need_cardholder_name': needCardholderName,
    '@type': constructor,
  };

  static PaymentProviderStripe? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentProviderStripe(
      publishableKey: (json['publishable_key'] as String?) ?? '',
      needCountry: (json['need_country'] as bool?) ?? false,
      needPostalCode: (json['need_postal_code'] as bool?) ?? false,
      needCardholderName: (json['need_cardholder_name'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
