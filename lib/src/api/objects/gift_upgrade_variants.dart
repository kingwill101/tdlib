import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains all possible variants of upgraded gifts for the given regular
/// gift
@immutable
final class GiftUpgradeVariants extends TdObject {
  GiftUpgradeVariants({
    required this.models,
    required this.symbols,
    required this.backdrops,
  });

  /// [models] Models that can be chosen for the gift after upgrade
  final List<UpgradedGiftModel> models;

  /// [symbols] Symbols that can be chosen for the gift after upgrade
  final List<UpgradedGiftSymbol> symbols;

  /// [backdrops] Backdrops that can be chosen for the gift after upgrade
  final List<UpgradedGiftBackdrop> backdrops;

  static const String constructor = 'giftUpgradeVariants';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'models': models.map((item) => item.toJson()).toList(),
    'symbols': symbols.map((item) => item.toJson()).toList(),
    'backdrops': backdrops.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static GiftUpgradeVariants? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftUpgradeVariants(
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
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
