import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a giveaway
@immutable
sealed class GiveawayInfo extends TdObject {
  const GiveawayInfo();

  static const String constructor = 'giveawayInfo';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [GiveawayInfoCompleted]
  /// [GiveawayInfoOngoing]
  static GiveawayInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case GiveawayInfoCompleted.constructor:
        return GiveawayInfoCompleted.fromJson(json);

      case GiveawayInfoOngoing.constructor:
        return GiveawayInfoOngoing.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes a completed giveaway
@immutable
final class GiveawayInfoCompleted extends GiveawayInfo {
  GiveawayInfoCompleted({
    required this.creationDate,
    required this.actualWinnersSelectionDate,
    required this.wasRefunded,
    required this.isWinner,
    required this.winnerCount,
    required this.activationCount,
    required this.giftCode,
    required this.wonStarCount,
  });

  /// [creationDate] Point in time (Unix timestamp) when the giveaway was
  /// created
  final int creationDate;

  /// [actualWinnersSelectionDate] Point in time (Unix timestamp) when the
  /// winners were selected. May be bigger than winners selection date specified
  /// in parameters of the giveaway
  final int actualWinnersSelectionDate;

  /// [wasRefunded] True, if the giveaway was canceled and was fully refunded
  final bool wasRefunded;

  /// [isWinner] True, if the current user is a winner of the giveaway
  final bool isWinner;

  /// [winnerCount] Number of winners in the giveaway
  final int winnerCount;

  /// [activationCount] Number of winners, which activated their gift codes; for
  /// Telegram Premium giveaways only
  final int activationCount;

  /// [giftCode] Telegram Premium gift code that was received by the current
  /// user; empty if the user isn't a winner in the giveaway or the giveaway
  /// isn't a Telegram Premium giveaway
  final String giftCode;

  /// [wonStarCount] The Telegram Star amount won by the current user; 0 if the
  /// user isn't a winner in the giveaway or the giveaway isn't a Telegram Star
  /// giveaway
  final int wonStarCount;

  static const String constructor = 'giveawayInfoCompleted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'creation_date': creationDate,
    'actual_winners_selection_date': actualWinnersSelectionDate,
    'was_refunded': wasRefunded,
    'is_winner': isWinner,
    'winner_count': winnerCount,
    'activation_count': activationCount,
    'gift_code': giftCode,
    'won_star_count': wonStarCount,
    '@type': constructor,
  };

  static GiveawayInfoCompleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiveawayInfoCompleted(
      creationDate: (json['creation_date'] as int?) ?? 0,
      actualWinnersSelectionDate:
          (json['actual_winners_selection_date'] as int?) ?? 0,
      wasRefunded: (json['was_refunded'] as bool?) ?? false,
      isWinner: (json['is_winner'] as bool?) ?? false,
      winnerCount: (json['winner_count'] as int?) ?? 0,
      activationCount: (json['activation_count'] as int?) ?? 0,
      giftCode: (json['gift_code'] as String?) ?? '',
      wonStarCount: (json['won_star_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes an ongoing giveaway
@immutable
final class GiveawayInfoOngoing extends GiveawayInfo {
  GiveawayInfoOngoing({
    required this.creationDate,
    this.status,
    required this.isEnded,
  });

  /// [creationDate] Point in time (Unix timestamp) when the giveaway was
  /// created
  final int creationDate;

  /// [status] Status of the current user in the giveaway
  final GiveawayParticipantStatus? status;

  /// [isEnded] True, if the giveaway has ended and results are being prepared
  final bool isEnded;

  static const String constructor = 'giveawayInfoOngoing';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'creation_date': creationDate,
    'status': status?.toJson(),
    'is_ended': isEnded,
    '@type': constructor,
  };

  static GiveawayInfoOngoing? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiveawayInfoOngoing(
      creationDate: (json['creation_date'] as int?) ?? 0,
      status: GiveawayParticipantStatus.fromJson(tdMapFromJson(json['status'])),
      isEnded: (json['is_ended'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
