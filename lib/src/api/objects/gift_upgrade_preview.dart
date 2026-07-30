import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains examples of possible upgraded gifts for the given regular gift
@immutable
final class GiftUpgradePreview extends TdObject {
  GiftUpgradePreview({
    required this.models,
    required this.symbols,
    required this.backdrops,
    required this.prices,
    required this.nextPrices,
  });

  /// [models] Examples of possible models that can be chosen for the gift after
  /// upgrade
  final List<UpgradedGiftModel> models;

  /// [symbols] Examples of possible symbols that can be chosen for the gift
  /// after upgrade
  final List<UpgradedGiftSymbol> symbols;

  /// [backdrops] Examples of possible backdrops that can be chosen for the gift
  /// after upgrade
  final List<UpgradedGiftBackdrop> backdrops;

  /// [prices] Examples of price for gift upgrade from the maximum price to the
  /// minimum price
  final List<GiftUpgradePrice> prices;

  /// [nextPrices] Next changes for the price for gift upgrade with more
  /// granularity than in prices
  final List<GiftUpgradePrice> nextPrices;

  static const String constructor = 'giftUpgradePreview';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'models': models.map((item) => item.toJson()).toList(),
    'symbols': symbols.map((item) => item.toJson()).toList(),
    'backdrops': backdrops.map((item) => item.toJson()).toList(),
    'prices': prices.map((item) => item.toJson()).toList(),
    'next_prices': nextPrices.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static GiftUpgradePreview? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftUpgradePreview(
      models: List<UpgradedGiftModel>.from(
        tdListFromJson(json['models'])
            .map((item) => UpgradedGiftModel.fromJson(tdMapFromJson(item)))
            .whereType<UpgradedGiftModel>(),
      ),
      symbols: List<UpgradedGiftSymbol>.from(
        tdListFromJson(json['symbols'])
            .map((item) => UpgradedGiftSymbol.fromJson(tdMapFromJson(item)))
            .whereType<UpgradedGiftSymbol>(),
      ),
      backdrops: List<UpgradedGiftBackdrop>.from(
        tdListFromJson(json['backdrops'])
            .map((item) => UpgradedGiftBackdrop.fromJson(tdMapFromJson(item)))
            .whereType<UpgradedGiftBackdrop>(),
      ),
      prices: List<GiftUpgradePrice>.from(
        tdListFromJson(json['prices'])
            .map((item) => GiftUpgradePrice.fromJson(tdMapFromJson(item)))
            .whereType<GiftUpgradePrice>(),
      ),
      nextPrices: List<GiftUpgradePrice>.from(
        tdListFromJson(json['next_prices'])
            .map((item) => GiftUpgradePrice.fromJson(tdMapFromJson(item)))
            .whereType<GiftUpgradePrice>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
