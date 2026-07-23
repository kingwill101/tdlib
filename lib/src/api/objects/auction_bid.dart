import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a bid in an auction
@immutable
final class AuctionBid extends TdObject {
  AuctionBid({
    required this.starCount,
    required this.bidDate,
    required this.position,
  });

  /// [starCount] The number of Telegram Stars that were put in the bid
  final int starCount;

  /// [bidDate] Point in time (Unix timestamp) when the bid was made
  final int bidDate;

  /// [position] Position of the bid in the list of all bids
  final int position;

  static const String constructor = 'auctionBid';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'star_count': starCount,
    'bid_date': bidDate,
    'position': position,
    '@type': constructor,
  };

  static AuctionBid? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuctionBid(
      starCount: (json['star_count'] as int?) ?? 0,
      bidDate: (json['bid_date'] as int?) ?? 0,
      position: (json['position'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
