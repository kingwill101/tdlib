import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a gift that can be sent to another user or channel chat
@immutable
final class Gift extends TdObject {
  Gift({
    required this.id,
    required this.publisherChatId,
    this.sticker,
    required this.starCount,
    required this.defaultSellStarCount,
    required this.upgradeStarCount,
    required this.upgradeVariantCount,
    required this.hasColors,
    required this.isForBirthday,
    required this.isPremium,
    this.auctionInfo,
    required this.nextSendDate,
    this.userLimits,
    this.overallLimits,
    this.background,
    required this.firstSendDate,
    required this.lastSendDate,
  });

  /// [id] Unique identifier of the gift
  final int id;

  /// [publisherChatId] Identifier of the chat that published the gift; 0 if
  /// none
  final int publisherChatId;

  /// [sticker] The sticker representing the gift
  final Sticker? sticker;

  /// [starCount] Number of Telegram Stars that must be paid for the gift
  final int starCount;

  /// [defaultSellStarCount] Number of Telegram Stars that can be claimed by the
  /// receiver instead of the regular gift by default. If the gift was paid with
  /// just bought Telegram Stars, then full value can be claimed
  final int defaultSellStarCount;

  /// [upgradeStarCount] Number of Telegram Stars that must be paid to upgrade
  /// the gift; 0 if upgrade isn't possible
  final int upgradeStarCount;

  /// [upgradeVariantCount] Number of unique gift variants that are available
  /// for the upgraded gift; 0 if unknown
  final int upgradeVariantCount;

  /// [hasColors] True, if the gift can be used to customize the user's name,
  /// and backgrounds of profile photo, reply header, and link preview
  final bool hasColors;

  /// [isForBirthday] True, if the gift is a birthday gift
  final bool isForBirthday;

  /// [isPremium] True, if the gift can be bought only by Telegram Premium
  /// subscribers
  final bool isPremium;

  /// [auctionInfo] Information about the auction on which the gift can be
  /// purchased; may be null if the gift can be purchased directly
  final GiftAuction? auctionInfo;

  /// [nextSendDate] Point in time (Unix timestamp) when the gift can be sent
  /// next time by the current user; may be 0 or a date in the past. If the date
  /// is in the future, then call canSendGift to get the reason, why the gift
  /// can't be sent now
  final int nextSendDate;

  /// [userLimits] Number of times the gift can be purchased by the current
  /// user; may be null if not limited
  final GiftPurchaseLimits? userLimits;

  /// [overallLimits] Number of times the gift can be purchased all users; may
  /// be null if not limited
  final GiftPurchaseLimits? overallLimits;

  /// [background] Background of the gift
  final GiftBackground? background;

  /// [firstSendDate] Point in time (Unix timestamp) when the gift was send for
  /// the first time; for sold out gifts only
  final int firstSendDate;

  /// [lastSendDate] Point in time (Unix timestamp) when the gift was send for
  /// the last time; for sold out gifts only
  final int lastSendDate;

  static const String constructor = 'gift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id.toString(),
    'publisher_chat_id': publisherChatId,
    'sticker': sticker?.toJson(),
    'star_count': starCount,
    'default_sell_star_count': defaultSellStarCount,
    'upgrade_star_count': upgradeStarCount,
    'upgrade_variant_count': upgradeVariantCount,
    'has_colors': hasColors,
    'is_for_birthday': isForBirthday,
    'is_premium': isPremium,
    'auction_info': auctionInfo?.toJson(),
    'next_send_date': nextSendDate,
    'user_limits': userLimits?.toJson(),
    'overall_limits': overallLimits?.toJson(),
    'background': background?.toJson(),
    'first_send_date': firstSendDate,
    'last_send_date': lastSendDate,
    '@type': constructor,
  };

  static Gift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Gift(
      id: int.tryParse((json['id'] as dynamic)?.toString() ?? '') ?? 0,
      publisherChatId: (json['publisher_chat_id'] as int?) ?? 0,
      sticker: Sticker.fromJson(tdMapFromJson(json['sticker'])),
      starCount: (json['star_count'] as int?) ?? 0,
      defaultSellStarCount: (json['default_sell_star_count'] as int?) ?? 0,
      upgradeStarCount: (json['upgrade_star_count'] as int?) ?? 0,
      upgradeVariantCount: (json['upgrade_variant_count'] as int?) ?? 0,
      hasColors: (json['has_colors'] as bool?) ?? false,
      isForBirthday: (json['is_for_birthday'] as bool?) ?? false,
      isPremium: (json['is_premium'] as bool?) ?? false,
      auctionInfo: GiftAuction.fromJson(tdMapFromJson(json['auction_info'])),
      nextSendDate: (json['next_send_date'] as int?) ?? 0,
      userLimits: GiftPurchaseLimits.fromJson(
        tdMapFromJson(json['user_limits']),
      ),
      overallLimits: GiftPurchaseLimits.fromJson(
        tdMapFromJson(json['overall_limits']),
      ),
      background: GiftBackground.fromJson(tdMapFromJson(json['background'])),
      firstSendDate: (json['first_send_date'] as int?) ?? 0,
      lastSendDate: (json['last_send_date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
