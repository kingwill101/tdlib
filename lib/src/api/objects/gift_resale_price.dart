import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes price of a resold gift
@immutable
sealed class GiftResalePrice extends TdObject {
  const GiftResalePrice();

  static const String constructor = 'giftResalePrice';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [GiftResalePriceStar]
  /// [GiftResalePriceTon]
  static GiftResalePrice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case GiftResalePriceStar.constructor:
        return GiftResalePriceStar.fromJson(json);

      case GiftResalePriceTon.constructor:
        return GiftResalePriceTon.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes price of a resold gift in Telegram Stars
@immutable
final class GiftResalePriceStar extends GiftResalePrice {
  GiftResalePriceStar({required this.starCount});

  /// [starCount] The Telegram Star amount expected to be paid for the gift.
  /// Must be in the range
  /// getOption("gift_resale_star_count_min")-getOption("gift_resale_star_count_max")
  /// for gifts put for resale
  final int starCount;

  static const String constructor = 'giftResalePriceStar';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'star_count': starCount,
    '@type': constructor,
  };

  static GiftResalePriceStar? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftResalePriceStar(starCount: (json['star_count'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes price of a resold gift in Toncoins
@immutable
final class GiftResalePriceTon extends GiftResalePrice {
  GiftResalePriceTon({required this.toncoinCentCount});

  /// [toncoinCentCount] The amount of 1/100 of Toncoin expected to be paid for
  /// the gift. Must be in the range
  /// getOption("gift_resale_toncoin_cent_count_min")-getOption("gift_resale_toncoin_cent_count_max")
  final int toncoinCentCount;

  static const String constructor = 'giftResalePriceTon';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'toncoin_cent_count': toncoinCentCount,
    '@type': constructor,
  };

  static GiftResalePriceTon? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftResalePriceTon(
      toncoinCentCount: (json['toncoin_cent_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
