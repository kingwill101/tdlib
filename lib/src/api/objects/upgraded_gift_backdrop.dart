import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a backdrop of an upgraded gift
@immutable
final class UpgradedGiftBackdrop extends TdObject {
  UpgradedGiftBackdrop({
    required this.id,
    required this.name,
    this.colors,
    this.rarity,
  });

  /// [id] Unique identifier of the backdrop
  final int id;

  /// [name] Name of the backdrop
  final String name;

  /// [colors] Colors of the backdrop
  final UpgradedGiftBackdropColors? colors;

  /// [rarity] The rarity of the backdrop
  final UpgradedGiftAttributeRarity? rarity;

  static const String constructor = 'upgradedGiftBackdrop';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'name': name,
    'colors': colors?.toJson(),
    'rarity': rarity?.toJson(),
    '@type': constructor,
  };

  static UpgradedGiftBackdrop? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftBackdrop(
      id: (json['id'] as int?) ?? 0,
      name: (json['name'] as String?) ?? '',
      colors: UpgradedGiftBackdropColors.fromJson(
        tdMapFromJson(json['colors']),
      ),
      rarity: UpgradedGiftAttributeRarity.fromJson(
        tdMapFromJson(json['rarity']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
