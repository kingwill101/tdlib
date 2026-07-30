import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of Telegram Star subscriptions
@immutable
final class StarSubscriptions extends TdObject {
  StarSubscriptions({
    this.starAmount,
    required this.subscriptions,
    required this.requiredStarCount,
    required this.nextOffset,
  });

  /// [starAmount] The amount of owned Telegram Stars
  final StarAmount? starAmount;

  /// [subscriptions] List of subscriptions for Telegram Stars
  final List<StarSubscription> subscriptions;

  /// [requiredStarCount] The number of Telegram Stars required to buy to extend
  /// subscriptions expiring soon
  final int requiredStarCount;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'starSubscriptions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'star_amount': starAmount?.toJson(),
    'subscriptions': subscriptions.map((item) => item.toJson()).toList(),
    'required_star_count': requiredStarCount,
    'next_offset': nextOffset,
    '@type': constructor,
  };

  static StarSubscriptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarSubscriptions(
      starAmount: StarAmount.fromJson(tdMapFromJson(json['star_amount'])),
      subscriptions: List<StarSubscription>.from(
        tdListFromJson(json['subscriptions'])
            .map((item) => StarSubscription.fromJson(tdMapFromJson(item)))
            .whereType<StarSubscription>(),
      ),
      requiredStarCount: (json['required_star_count'] as int?) ?? 0,
      nextOffset: (json['next_offset'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
