import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of options for gifting Telegram Premium to a user
@immutable
final class PremiumGiftPaymentOptions extends TdObject {
  PremiumGiftPaymentOptions({required this.options});

  /// [options] The list of options sorted by Telegram Premium subscription
  /// duration
  final List<PremiumGiftPaymentOption> options;

  static const String constructor = 'premiumGiftPaymentOptions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'options': options.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static PremiumGiftPaymentOptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumGiftPaymentOptions(
      options: List<PremiumGiftPaymentOption>.from(
        tdListFromJson(json['options'])
            .map(
              (item) => PremiumGiftPaymentOption.fromJson(tdMapFromJson(item)),
            )
            .whereType<PremiumGiftPaymentOption>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
