import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a model of an upgraded gift
@immutable
final class UpgradedGiftModel extends TdObject {
  UpgradedGiftModel({
    required this.name,
    this.sticker,
    this.rarity,
    required this.isCrafted,
  });

  /// [name] Name of the model
  final String name;

  /// [sticker] The sticker representing the upgraded gift
  final Sticker? sticker;

  /// [rarity] The rarity of the model
  final UpgradedGiftAttributeRarity? rarity;

  /// [isCrafted] True, if the model can be obtained only through gift crafting
  final bool isCrafted;

  static const String constructor = 'upgradedGiftModel';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'name': name,
    'sticker': sticker?.toJson(),
    'rarity': rarity?.toJson(),
    'is_crafted': isCrafted,
    '@type': constructor,
  };

  static UpgradedGiftModel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftModel(
      name: (json['name'] as String?) ?? '',
      sticker: Sticker.fromJson(tdMapFromJson(json['sticker'])),
      rarity: UpgradedGiftAttributeRarity.fromJson(
        tdMapFromJson(json['rarity']),
      ),
      isCrafted: (json['is_crafted'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
