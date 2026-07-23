import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a Telegram Premium gift code
@immutable
final class PremiumGiftCodeInfo extends TdObject {
  PremiumGiftCodeInfo({
    this.creatorId,
    required this.creationDate,
    required this.isFromGiveaway,
    required this.giveawayMessageId,
    required this.monthCount,
    required this.dayCount,
    required this.userId,
    required this.useDate,
  });

  /// [creatorId] Identifier of a chat or a user who created the gift code; may
  /// be null if unknown. If null and the code is from messagePremiumGiftCode
  /// message, then creator_id from the message can be used
  final MessageSender? creatorId;

  /// [creationDate] Point in time (Unix timestamp) when the code was created
  final int creationDate;

  /// [isFromGiveaway] True, if the gift code was created for a giveaway
  final bool isFromGiveaway;

  /// [giveawayMessageId] Identifier of the corresponding giveaway message in
  /// the creator_id chat; may be 0 or an identifier of a deleted message
  final int giveawayMessageId;

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active after code activation; 0 if the number of months isn't integer
  final int monthCount;

  /// [dayCount] Number of days the Telegram Premium subscription will be active
  /// after code activation
  final int dayCount;

  /// [userId] Identifier of a user for which the code was created; 0 if none
  final int userId;

  /// [useDate] Point in time (Unix timestamp) when the code was activated; 0 if
  /// none
  final int useDate;

  static const String constructor = 'premiumGiftCodeInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'creator_id': creatorId?.toJson(),
    'creation_date': creationDate,
    'is_from_giveaway': isFromGiveaway,
    'giveaway_message_id': giveawayMessageId,
    'month_count': monthCount,
    'day_count': dayCount,
    'user_id': userId,
    'use_date': useDate,
    '@type': constructor,
  };

  static PremiumGiftCodeInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumGiftCodeInfo(
      creatorId: MessageSender.fromJson(tdMapFromJson(json['creator_id'])),
      creationDate: (json['creation_date'] as int?) ?? 0,
      isFromGiveaway: (json['is_from_giveaway'] as bool?) ?? false,
      giveawayMessageId: (json['giveaway_message_id'] as int?) ?? 0,
      monthCount: (json['month_count'] as int?) ?? 0,
      dayCount: (json['day_count'] as int?) ?? 0,
      userId: (json['user_id'] as int?) ?? 0,
      useDate: (json['use_date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
