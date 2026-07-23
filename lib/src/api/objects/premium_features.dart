import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about features, available to Premium users
@immutable
final class PremiumFeatures extends TdObject {
  PremiumFeatures({
    required this.features,
    required this.limits,
    this.paymentLink,
  });

  /// [features] The list of available features
  final List<PremiumFeature> features;

  /// [limits] The list of limits, increased for Premium users
  final List<PremiumLimit> limits;

  /// [paymentLink] An internal link to be opened to pay for Telegram Premium if
  /// store payment isn't possible; may be null if direct payment isn't
  /// available
  final InternalLinkType? paymentLink;

  static const String constructor = 'premiumFeatures';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'features': features.map((item) => item.toJson()).toList(),
    'limits': limits.map((item) => item.toJson()).toList(),
    'payment_link': paymentLink?.toJson(),
    '@type': constructor,
  };

  static PremiumFeatures? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumFeatures(
      features: List<PremiumFeature>.from(
        tdListFromJson(json['features'])
            .map((item) => PremiumFeature.fromJson(tdMapFromJson(item)))
            .whereType<PremiumFeature>(),
      ),
      limits: List<PremiumLimit>.from(
        tdListFromJson(json['limits'])
            .map((item) => PremiumLimit.fromJson(tdMapFromJson(item)))
            .whereType<PremiumLimit>(),
      ),
      paymentLink: InternalLinkType.fromJson(
        tdMapFromJson(json['payment_link']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
