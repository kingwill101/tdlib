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
  /// [SuggestedPostPriceStar]
  /// [SuggestedPostPriceTon]
  static SuggestedPostPrice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SuggestedPostPriceStar.constructor:
        return SuggestedPostPriceStar.fromJson(json);

      case SuggestedPostPriceTon.constructor:
        return SuggestedPostPriceTon.fromJson(json);

      default:
        return null;
    }
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

/// Describes price of a suggested post in Toncoins
@immutable
final class SuggestedPostPriceTon extends SuggestedPostPrice {
  SuggestedPostPriceTon({required this.toncoinCentCount});

  /// [toncoinCentCount] The amount of 1/100 of Toncoin expected to be paid for
  /// the post;
  /// getOption("suggested_post_toncoin_cent_count_min")-getOption("suggested_post_toncoin_cent_count_max")
  final int toncoinCentCount;

  static const String constructor = 'suggestedPostPriceTon';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'toncoin_cent_count': toncoinCentCount,
    '@type': constructor,
  };

  static SuggestedPostPriceTon? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SuggestedPostPriceTon(
      toncoinCentCount: (json['toncoin_cent_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
