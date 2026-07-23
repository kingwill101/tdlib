import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of options for creating of Telegram Premium giveaway or
/// manual distribution of Telegram Premium among chat members
@immutable
final class PremiumGiveawayPaymentOptions extends TdObject {
  PremiumGiveawayPaymentOptions({required this.options});

  /// [options] The list of options
  final List<PremiumGiveawayPaymentOption> options;

  static const String constructor = 'premiumGiveawayPaymentOptions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'options': options.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static PremiumGiveawayPaymentOptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumGiveawayPaymentOptions(
      options: List<PremiumGiveawayPaymentOption>.from(
        tdListFromJson(json['options'])
            .map(
              (item) =>
                  PremiumGiveawayPaymentOption.fromJson(tdMapFromJson(item)),
            )
            .whereType<PremiumGiveawayPaymentOption>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
