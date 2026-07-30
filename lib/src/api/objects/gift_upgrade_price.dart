import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a price required to pay to upgrade a gift
@immutable
final class GiftUpgradePrice extends TdObject {
  GiftUpgradePrice({required this.date, required this.starCount});

  /// [date] Point in time (Unix timestamp) when the price will be in effect
  final int date;

  /// [starCount] The Telegram Star amount required to pay to upgrade the gift
  final int starCount;

  static const String constructor = 'giftUpgradePrice';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'date': date,
    'star_count': starCount,
    '@type': constructor,
  };

  static GiftUpgradePrice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftUpgradePrice(
      date: (json['date'] as int?) ?? 0,
      starCount: (json['star_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
