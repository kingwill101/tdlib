import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes state of the stake dice
@immutable
final class StakeDiceState extends TdObject {
  StakeDiceState({
    required this.stateHash,
    required this.stakeGramAmount,
    required this.suggestedStakeGramAmounts,
    required this.currentStreak,
    required this.prizePerMille,
    required this.streakPrizePerMille,
  });

  /// [stateHash] Hash of the state to use for sending the next dice; may be
  /// empty if the stake dice can't be sent by the current user
  final String stateHash;

  /// [stakeGramAmount] The amount of TON Grams staked in the previous roll; in
  /// the smallest units of the currency
  final int stakeGramAmount;

  /// [suggestedStakeGramAmounts] The amounts of Grams that are suggested to be
  /// staked; in the smallest units of the currency
  final List<int> suggestedStakeGramAmounts;

  /// [currentStreak] The number of rolled sixes towards the streak; 0-2
  final int currentStreak;

  /// [prizePerMille] The number of Grams received by the user for each 1000
  /// Grams staked if the dice outcome is 1-6 correspondingly; may be empty if
  /// the stake dice can't be sent by the current user
  final List<int> prizePerMille;

  /// [streakPrizePerMille] The number of Grams received by the user for each
  /// 1000 Grams staked if the dice outcome is 6 three times in a row with the
  /// same stake
  final int streakPrizePerMille;

  static const String constructor = 'stakeDiceState';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'state_hash': stateHash,
    'stake_gram_amount': stakeGramAmount,
    'suggested_stake_gram_amounts': suggestedStakeGramAmounts
        .map((item) => item)
        .toList(),
    'current_streak': currentStreak,
    'prize_per_mille': prizePerMille.map((item) => item).toList(),
    'streak_prize_per_mille': streakPrizePerMille,
    '@type': constructor,
  };

  static StakeDiceState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StakeDiceState(
      stateHash: (json['state_hash'] as String?) ?? '',
      stakeGramAmount: (json['stake_gram_amount'] as int?) ?? 0,
      suggestedStakeGramAmounts: List<int>.from(
        tdListFromJson(
          json['suggested_stake_gram_amounts'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      currentStreak: (json['current_streak'] as int?) ?? 0,
      prizePerMille: List<int>.from(
        tdListFromJson(
          json['prize_per_mille'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      streakPrizePerMille: (json['streak_prize_per_mille'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
