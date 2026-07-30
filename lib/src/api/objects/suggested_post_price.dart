import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes price of a suggested post
@immutable
sealed class SuggestedPostPrice extends TdObject {
  const SuggestedPostPrice();

  static const String constructor = 'suggestedPostPrice';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [SuggestedPostPriceGram]
  /// [SuggestedPostPriceStar]
  static SuggestedPostPrice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SuggestedPostPriceGram.constructor:
        return SuggestedPostPriceGram.fromJson(json);

      case SuggestedPostPriceStar.constructor:
        return SuggestedPostPriceStar.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes price of a suggested post in TON Grams
@immutable
final class SuggestedPostPriceGram extends SuggestedPostPrice {
  SuggestedPostPriceGram({required this.gramCentCount});

  /// [gramCentCount] The amount of 1/100 of Gram expected to be paid for the
  /// post;
  /// getOption("suggested_post_gram_cent_count_min")-getOption("suggested_post_gram_cent_count_max")
  final int gramCentCount;

  static const String constructor = 'suggestedPostPriceGram';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gram_cent_count': gramCentCount,
    '@type': constructor,
  };

  static SuggestedPostPriceGram? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SuggestedPostPriceGram(
      gramCentCount: (json['gram_cent_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes price of a suggested post in Telegram Stars
@immutable
final class SuggestedPostPriceStar extends SuggestedPostPrice {
  SuggestedPostPriceStar({required this.starCount});

  /// [starCount] The Telegram Star amount expected to be paid for the post;
  /// getOption("suggested_post_star_count_min")-getOption("suggested_post_star_count_max")
  final int starCount;

  static const String constructor = 'suggestedPostPriceStar';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'star_count': starCount,
    '@type': constructor,
  };

  static SuggestedPostPriceStar? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SuggestedPostPriceStar(starCount: (json['star_count'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
