import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes state of an auction
@immutable
sealed class AuctionState extends TdObject {
  const AuctionState();

  static const String constructor = 'auctionState';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [AuctionStateActive]
  /// [AuctionStateFinished]
  static AuctionState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case AuctionStateActive.constructor:
        return AuctionStateActive.fromJson(json);

      case AuctionStateFinished.constructor:
        return AuctionStateFinished.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Contains information about an ongoing or scheduled auction
@immutable
final class AuctionStateActive extends AuctionState {
  AuctionStateActive({
    required this.startDate,
    required this.endDate,
    required this.minBid,
    required this.bidLevels,
    required this.topBidderUserIds,
    required this.rounds,
    required this.currentRoundEndDate,
    required this.currentRoundNumber,
    required this.totalRoundCount,
    required this.distributedItemCount,
    required this.leftItemCount,
    required this.acquiredItemCount,
    this.userBid,
  });

  /// [startDate] Point in time (Unix timestamp) when the auction started or
  /// will start
  final int startDate;

  /// [endDate] Point in time (Unix timestamp) when the auction will be ended
  final int endDate;

  /// [minBid] The minimum possible bid in the auction in Telegram Stars
  final int minBid;

  /// [bidLevels] A sparse list of bids that were made in the auction
  final List<AuctionBid> bidLevels;

  /// [topBidderUserIds] User identifiers of at most 3 users with the biggest
  /// bids
  final List<int> topBidderUserIds;

  /// [rounds] Rounds of the auction in which their duration or extension rules
  /// are changed
  final List<AuctionRound> rounds;

  /// [currentRoundEndDate] Point in time (Unix timestamp) when the current
  /// round will end
  final int currentRoundEndDate;

  /// [currentRoundNumber] 1-based number of the current round
  final int currentRoundNumber;

  /// [totalRoundCount] The total number of rounds
  final int totalRoundCount;

  /// [distributedItemCount] The number of items that were purchased on the
  /// auction by all users
  final int distributedItemCount;

  /// [leftItemCount] The number of items that have to be distributed on the
  /// auction
  final int leftItemCount;

  /// [acquiredItemCount] The number of items that were purchased by the current
  /// user on the auction
  final int acquiredItemCount;

  /// [userBid] Bid of the current user in the auction; may be null if none
  final UserAuctionBid? userBid;

  static const String constructor = 'auctionStateActive';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'start_date': startDate,
    'end_date': endDate,
    'min_bid': minBid,
    'bid_levels': bidLevels.map((item) => item.toJson()).toList(),
    'top_bidder_user_ids': topBidderUserIds.map((item) => item).toList(),
    'rounds': rounds.map((item) => item.toJson()).toList(),
    'current_round_end_date': currentRoundEndDate,
    'current_round_number': currentRoundNumber,
    'total_round_count': totalRoundCount,
    'distributed_item_count': distributedItemCount,
    'left_item_count': leftItemCount,
    'acquired_item_count': acquiredItemCount,
    'user_bid': userBid?.toJson(),
    '@type': constructor,
  };

  static AuctionStateActive? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuctionStateActive(
      startDate: (json['start_date'] as int?) ?? 0,
      endDate: (json['end_date'] as int?) ?? 0,
      minBid: (json['min_bid'] as int?) ?? 0,
      bidLevels: List<AuctionBid>.from(
        tdListFromJson(json['bid_levels'])
            .map((item) => AuctionBid.fromJson(tdMapFromJson(item)))
            .whereType<AuctionBid>(),
      ),
      topBidderUserIds: List<int>.from(
        tdListFromJson(
          json['top_bidder_user_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      rounds: List<AuctionRound>.from(
        tdListFromJson(json['rounds'])
            .map((item) => AuctionRound.fromJson(tdMapFromJson(item)))
            .whereType<AuctionRound>(),
      ),
      currentRoundEndDate: (json['current_round_end_date'] as int?) ?? 0,
      currentRoundNumber: (json['current_round_number'] as int?) ?? 0,
      totalRoundCount: (json['total_round_count'] as int?) ?? 0,
      distributedItemCount: (json['distributed_item_count'] as int?) ?? 0,
      leftItemCount: (json['left_item_count'] as int?) ?? 0,
      acquiredItemCount: (json['acquired_item_count'] as int?) ?? 0,
      userBid: UserAuctionBid.fromJson(tdMapFromJson(json['user_bid'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Contains information about a finished auction
@immutable
final class AuctionStateFinished extends AuctionState {
  AuctionStateFinished({
    required this.startDate,
    required this.endDate,
    required this.averagePrice,
    required this.acquiredItemCount,
    required this.telegramListedItemCount,
    required this.fragmentListedItemCount,
    required this.fragmentUrl,
  });

  /// [startDate] Point in time (Unix timestamp) when the auction started
  final int startDate;

  /// [endDate] Point in time (Unix timestamp) when the auction will be ended
  final int endDate;

  /// [averagePrice] Average price of bought items in Telegram Stars
  final int averagePrice;

  /// [acquiredItemCount] The number of items that were purchased by the current
  /// user on the auction
  final int acquiredItemCount;

  /// [telegramListedItemCount] Number of items from the auction being resold on
  /// Telegram
  final int telegramListedItemCount;

  /// [fragmentListedItemCount] Number of items from the auction being resold on
  /// Fragment
  final int fragmentListedItemCount;

  /// [fragmentUrl] The HTTPS link to the Fragment for the resold items; may be
  /// empty if there are no such items being sold on Fragment
  final String fragmentUrl;

  static const String constructor = 'auctionStateFinished';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'start_date': startDate,
    'end_date': endDate,
    'average_price': averagePrice,
    'acquired_item_count': acquiredItemCount,
    'telegram_listed_item_count': telegramListedItemCount,
    'fragment_listed_item_count': fragmentListedItemCount,
    'fragment_url': fragmentUrl,
    '@type': constructor,
  };

  static AuctionStateFinished? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuctionStateFinished(
      startDate: (json['start_date'] as int?) ?? 0,
      endDate: (json['end_date'] as int?) ?? 0,
      averagePrice: (json['average_price'] as int?) ?? 0,
      acquiredItemCount: (json['acquired_item_count'] as int?) ?? 0,
      telegramListedItemCount:
          (json['telegram_listed_item_count'] as int?) ?? 0,
      fragmentListedItemCount:
          (json['fragment_listed_item_count'] as int?) ?? 0,
      fragmentUrl: (json['fragment_url'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
