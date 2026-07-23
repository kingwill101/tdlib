import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes state of the stake dice
@immutable
final class StakeDiceState extends TdObject {
  StakeDiceState({
    required this.stateHash,
    required this.stakeToncoinAmount,
    required this.suggestedStakeToncoinAmounts,
    required this.currentStreak,
    required this.prizePerMille,
    required this.streakPrizePerMille,
  });

  /// [stateHash] Hash of the state to use for sending the next dice; may be
  /// empty if the stake dice can't be sent by the current user
  final String stateHash;

  /// [stakeToncoinAmount] The Toncoin amount that was staked in the previous
  /// roll; in the smallest units of the currency
  final int stakeToncoinAmount;

  /// [suggestedStakeToncoinAmounts] The amounts of Toncoins that are suggested
  /// to be staked; in the smallest units of the currency
  final List<int> suggestedStakeToncoinAmounts;

  /// [currentStreak] The number of rolled sixes towards the streak; 0-2
  final int currentStreak;

  /// [prizePerMille] The number of Toncoins received by the user for each 1000
  /// Toncoins staked if the dice outcome is 1-6 correspondingly; may be empty
  /// if the stake dice can't be sent by the current user
  final List<int> prizePerMille;

  /// [streakPrizePerMille] The number of Toncoins received by the user for each
  /// 1000 Toncoins staked if the dice outcome is 6 three times in a row with
  /// the same stake
  final int streakPrizePerMille;

  static const String constructor = 'stakeDiceState';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'state_hash': stateHash,
    'stake_toncoin_amount': stakeToncoinAmount,
    'suggested_stake_toncoin_amounts': suggestedStakeToncoinAmounts
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
      stakeToncoinAmount: (json['stake_toncoin_amount'] as int?) ?? 0,
      suggestedStakeToncoinAmounts: List<int>.from(
        tdListFromJson(
          json['suggested_stake_toncoin_amounts'],
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
