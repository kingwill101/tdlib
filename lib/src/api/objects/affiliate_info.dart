import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about an affiliate that received commission from a
/// Telegram Star transaction
@immutable
final class AffiliateInfo extends TdObject {
  AffiliateInfo({
    required this.commissionPerMille,
    required this.affiliateChatId,
    this.starAmount,
  });

  /// [commissionPerMille] The number of Telegram Stars received by the
  /// affiliate for each 1000 Telegram Stars received by the program owner
  final int commissionPerMille;

  /// [affiliateChatId] Identifier of the chat which received the commission
  final int affiliateChatId;

  /// [starAmount] The Telegram Star amount that was received by the affiliate;
  /// can be negative for refunds
  final StarAmount? starAmount;

  static const String constructor = 'affiliateInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'commission_per_mille': commissionPerMille,
    'affiliate_chat_id': affiliateChatId,
    'star_amount': starAmount?.toJson(),
    '@type': constructor,
  };

  static AffiliateInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AffiliateInfo(
      commissionPerMille: (json['commission_per_mille'] as int?) ?? 0,
      affiliateChatId: (json['affiliate_chat_id'] as int?) ?? 0,
      starAmount: StarAmount.fromJson(tdMapFromJson(json['star_amount'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
