import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes current boost status of a chat
@immutable
final class ChatBoostStatus extends TdObject {
  ChatBoostStatus({
    required this.boostUrl,
    required this.appliedSlotIds,
    required this.level,
    required this.giftCodeBoostCount,
    required this.boostCount,
    required this.currentLevelBoostCount,
    required this.nextLevelBoostCount,
    required this.premiumMemberCount,
    required this.premiumMemberPercentage,
    required this.prepaidGiveaways,
  });

  /// [boostUrl] An HTTP URL, which can be used to boost the chat
  final String boostUrl;

  /// [appliedSlotIds] Identifiers of boost slots of the current user applied to
  /// the chat
  final List<int> appliedSlotIds;

  /// [level] Current boost level of the chat
  final int level;

  /// [giftCodeBoostCount] The number of boosts received by the chat from
  /// created Telegram Premium gift codes and giveaways; always 0 if the current
  /// user isn't an administrator in the chat
  final int giftCodeBoostCount;

  /// [boostCount] The number of boosts received by the chat
  final int boostCount;

  /// [currentLevelBoostCount] The number of boosts added to reach the current
  /// level
  final int currentLevelBoostCount;

  /// [nextLevelBoostCount] The number of boosts needed to reach the next level;
  /// 0 if the next level isn't available
  final int nextLevelBoostCount;

  /// [premiumMemberCount] Approximate number of Telegram Premium subscribers
  /// joined the chat; always 0 if the current user isn't an administrator in
  /// the chat
  final int premiumMemberCount;

  /// [premiumMemberPercentage] A percentage of Telegram Premium subscribers
  /// joined the chat; always 0 if the current user isn't an administrator in
  /// the chat
  final double premiumMemberPercentage;

  /// [prepaidGiveaways] The list of prepaid giveaways available for the chat;
  /// only for chat administrators
  final List<PrepaidGiveaway> prepaidGiveaways;

  static const String constructor = 'chatBoostStatus';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'boost_url': boostUrl,
    'applied_slot_ids': appliedSlotIds.map((item) => item).toList(),
    'level': level,
    'gift_code_boost_count': giftCodeBoostCount,
    'boost_count': boostCount,
    'current_level_boost_count': currentLevelBoostCount,
    'next_level_boost_count': nextLevelBoostCount,
    'premium_member_count': premiumMemberCount,
    'premium_member_percentage': premiumMemberPercentage,
    'prepaid_giveaways': prepaidGiveaways.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static ChatBoostStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatBoostStatus(
      boostUrl: (json['boost_url'] as String?) ?? '',
      appliedSlotIds: List<int>.from(
        tdListFromJson(
          json['applied_slot_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      level: (json['level'] as int?) ?? 0,
      giftCodeBoostCount: (json['gift_code_boost_count'] as int?) ?? 0,
      boostCount: (json['boost_count'] as int?) ?? 0,
      currentLevelBoostCount: (json['current_level_boost_count'] as int?) ?? 0,
      nextLevelBoostCount: (json['next_level_boost_count'] as int?) ?? 0,
      premiumMemberCount: (json['premium_member_count'] as int?) ?? 0,
      premiumMemberPercentage:
          ((json['premium_member_percentage'] as num?) ?? 0.0).toDouble(),
      prepaidGiveaways: List<PrepaidGiveaway>.from(
        tdListFromJson(json['prepaid_giveaways'])
            .map((item) => PrepaidGiveaway.fromJson(tdMapFromJson(item)))
            .whereType<PrepaidGiveaway>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
