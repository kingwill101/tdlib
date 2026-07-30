import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes rarity of an upgraded gift attribute
@immutable
sealed class UpgradedGiftAttributeRarity extends TdObject {
  const UpgradedGiftAttributeRarity();

  static const String constructor = 'upgradedGiftAttributeRarity';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [UpgradedGiftAttributeRarityEpic]
  /// [UpgradedGiftAttributeRarityLegendary]
  /// [UpgradedGiftAttributeRarityPerMille]
  /// [UpgradedGiftAttributeRarityRare]
  /// [UpgradedGiftAttributeRarityUncommon]
  static UpgradedGiftAttributeRarity? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case UpgradedGiftAttributeRarityEpic.constructor:
        return UpgradedGiftAttributeRarityEpic.fromJson(json);

      case UpgradedGiftAttributeRarityLegendary.constructor:
        return UpgradedGiftAttributeRarityLegendary.fromJson(json);

      case UpgradedGiftAttributeRarityPerMille.constructor:
        return UpgradedGiftAttributeRarityPerMille.fromJson(json);

      case UpgradedGiftAttributeRarityRare.constructor:
        return UpgradedGiftAttributeRarityRare.fromJson(json);

      case UpgradedGiftAttributeRarityUncommon.constructor:
        return UpgradedGiftAttributeRarityUncommon.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The attribute is epic
@immutable
final class UpgradedGiftAttributeRarityEpic
    extends UpgradedGiftAttributeRarity {
  const UpgradedGiftAttributeRarityEpic();

  static const String constructor = 'upgradedGiftAttributeRarityEpic';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UpgradedGiftAttributeRarityEpic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UpgradedGiftAttributeRarityEpic();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The attribute is legendary
@immutable
final class UpgradedGiftAttributeRarityLegendary
    extends UpgradedGiftAttributeRarity {
  const UpgradedGiftAttributeRarityLegendary();

  static const String constructor = 'upgradedGiftAttributeRarityLegendary';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UpgradedGiftAttributeRarityLegendary? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const UpgradedGiftAttributeRarityLegendary();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The rarity is represented as the numeric frequency of the model
@immutable
final class UpgradedGiftAttributeRarityPerMille
    extends UpgradedGiftAttributeRarity {
  UpgradedGiftAttributeRarityPerMille({required this.perMille});

  /// [perMille] The number of upgraded gifts that receive this attribute for
  /// each 1000 gifts upgraded; if 0, then it can be shown as "
  final int perMille;

  static const String constructor = 'upgradedGiftAttributeRarityPerMille';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'per_mille': perMille,
    '@type': constructor,
  };

  static UpgradedGiftAttributeRarityPerMille? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftAttributeRarityPerMille(
      perMille: (json['per_mille'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The attribute is rare
@immutable
final class UpgradedGiftAttributeRarityRare
    extends UpgradedGiftAttributeRarity {
  const UpgradedGiftAttributeRarityRare();

  static const String constructor = 'upgradedGiftAttributeRarityRare';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UpgradedGiftAttributeRarityRare? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UpgradedGiftAttributeRarityRare();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The attribute is uncommon
@immutable
final class UpgradedGiftAttributeRarityUncommon
    extends UpgradedGiftAttributeRarity {
  const UpgradedGiftAttributeRarityUncommon();

  static const String constructor = 'upgradedGiftAttributeRarityUncommon';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UpgradedGiftAttributeRarityUncommon? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const UpgradedGiftAttributeRarityUncommon();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
