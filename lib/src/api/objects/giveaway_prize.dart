import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a giveaway prize
@immutable
sealed class GiveawayPrize extends TdObject {
  const GiveawayPrize();

  static const String constructor = 'giveawayPrize';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [GiveawayPrizePremium]
  /// [GiveawayPrizeStars]
  static GiveawayPrize? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case GiveawayPrizePremium.constructor:
        return GiveawayPrizePremium.fromJson(json);

      case GiveawayPrizeStars.constructor:
        return GiveawayPrizeStars.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The giveaway sends Telegram Premium subscriptions to the winners
@immutable
final class GiveawayPrizePremium extends GiveawayPrize {
  GiveawayPrizePremium({required this.monthCount});

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active after code activation
  final int monthCount;

  static const String constructor = 'giveawayPrizePremium';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'month_count': monthCount,
    '@type': constructor,
  };

  static GiveawayPrizePremium? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiveawayPrizePremium(monthCount: (json['month_count'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The giveaway sends Telegram Stars to the winners
@immutable
final class GiveawayPrizeStars extends GiveawayPrize {
  GiveawayPrizeStars({required this.starCount});

  /// [starCount] Number of Telegram Stars that will be shared by all winners
  final int starCount;

  static const String constructor = 'giveawayPrizeStars';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'star_count': starCount,
    '@type': constructor,
  };

  static GiveawayPrizeStars? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiveawayPrizeStars(starCount: (json['star_count'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
