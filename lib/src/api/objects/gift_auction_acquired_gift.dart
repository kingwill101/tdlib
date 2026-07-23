import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a gift that was acquired by the current user on an auction
@immutable
final class GiftAuctionAcquiredGift extends TdObject {
  GiftAuctionAcquiredGift({
    this.receiverId,
    required this.date,
    required this.starCount,
    required this.auctionRoundNumber,
    required this.auctionRoundPosition,
    required this.uniqueGiftNumber,
    this.text,
    required this.isPrivate,
  });

  /// [receiverId] Receiver of the gift
  final MessageSender? receiverId;

  /// [date] Point in time (Unix timestamp) when the gift was acquired
  final int date;

  /// [starCount] The number of Telegram Stars that were paid for the gift
  final int starCount;

  /// [auctionRoundNumber] Identifier of the auction round in which the gift was
  /// acquired
  final int auctionRoundNumber;

  /// [auctionRoundPosition] Position of the user in the round among all auction
  /// participants
  final int auctionRoundPosition;

  /// [uniqueGiftNumber] Unique number of the gift among gifts upgraded from the
  /// same gift after upgrade; 0 if yet unassigned
  final int uniqueGiftNumber;

  /// [text] Message added to the gift
  final FormattedText? text;

  /// [isPrivate] True, if the sender and gift text are shown only to the gift
  /// receiver; otherwise, everyone will be able to see them
  final bool isPrivate;

  static const String constructor = 'giftAuctionAcquiredGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'receiver_id': receiverId?.toJson(),
    'date': date,
    'star_count': starCount,
    'auction_round_number': auctionRoundNumber,
    'auction_round_position': auctionRoundPosition,
    'unique_gift_number': uniqueGiftNumber,
    'text': text?.toJson(),
    'is_private': isPrivate,
    '@type': constructor,
  };

  static GiftAuctionAcquiredGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftAuctionAcquiredGift(
      receiverId: MessageSender.fromJson(tdMapFromJson(json['receiver_id'])),
      date: (json['date'] as int?) ?? 0,
      starCount: (json['star_count'] as int?) ?? 0,
      auctionRoundNumber: (json['auction_round_number'] as int?) ?? 0,
      auctionRoundPosition: (json['auction_round_position'] as int?) ?? 0,
      uniqueGiftNumber: (json['unique_gift_number'] as int?) ?? 0,
      text: FormattedText.fromJson(tdMapFromJson(json['text'])),
      isPrivate: (json['is_private'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
