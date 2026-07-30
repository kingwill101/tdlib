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
  /// [GiftResalePriceGram]
  /// [GiftResalePriceStar]
  static GiftResalePrice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case GiftResalePriceGram.constructor:
        return GiftResalePriceGram.fromJson(json);

      case GiftResalePriceStar.constructor:
        return GiftResalePriceStar.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes price of a resold gift in TON Grams
@immutable
final class GiftResalePriceGram extends GiftResalePrice {
  GiftResalePriceGram({required this.gramCentCount});

  /// [gramCentCount] The amount of 1/100 of Gram expected to be paid for the
  /// gift. Must be in the range
  /// getOption("gift_resale_gram_cent_count_min")-getOption("gift_resale_gram_cent_count_max")
  final int gramCentCount;

  static const String constructor = 'giftResalePriceGram';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gram_cent_count': gramCentCount,
    '@type': constructor,
  };

  static GiftResalePriceGram? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftResalePriceGram(
      gramCentCount: (json['gram_cent_count'] as int?) ?? 0,
    );
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
