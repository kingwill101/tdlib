import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a prepaid giveaway
@immutable
final class PrepaidGiveaway extends TdObject {
  PrepaidGiveaway({
    required this.id,
    required this.winnerCount,
    this.prize,
    required this.boostCount,
    required this.paymentDate,
  });

  /// [id] Unique identifier of the prepaid giveaway
  final int id;

  /// [winnerCount] Number of users which will receive giveaway prize
  final int winnerCount;

  /// [prize] Prize of the giveaway
  final GiveawayPrize? prize;

  /// [boostCount] The number of boosts received by the chat from the giveaway;
  /// for Telegram Star giveaways only
  final int boostCount;

  /// [paymentDate] Point in time (Unix timestamp) when the giveaway was paid
  final int paymentDate;

  static const String constructor = 'prepaidGiveaway';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id.toString(),
    'winner_count': winnerCount,
    'prize': prize?.toJson(),
    'boost_count': boostCount,
    'payment_date': paymentDate,
    '@type': constructor,
  };

  static PrepaidGiveaway? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PrepaidGiveaway(
      id: int.tryParse((json['id'] as dynamic)?.toString() ?? '') ?? 0,
      winnerCount: (json['winner_count'] as int?) ?? 0,
      prize: GiveawayPrize.fromJson(tdMapFromJson(json['prize'])),
      boostCount: (json['boost_count'] as int?) ?? 0,
      paymentDate: (json['payment_date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
