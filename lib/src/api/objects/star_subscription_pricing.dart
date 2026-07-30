import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes subscription plan paid in Telegram Stars
@immutable
final class StarSubscriptionPricing extends TdObject {
  StarSubscriptionPricing({required this.period, required this.starCount});

  /// [period] The number of seconds between consecutive Telegram Star debiting
  final int period;

  /// [starCount] The Telegram Star amount that must be paid for each period
  final int starCount;

  static const String constructor = 'starSubscriptionPricing';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'period': period,
    'star_count': starCount,
    '@type': constructor,
  };

  static StarSubscriptionPricing? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarSubscriptionPricing(
      period: (json['period'] as int?) ?? 0,
      starCount: (json['star_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
