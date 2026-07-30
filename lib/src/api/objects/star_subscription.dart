import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about subscription to a channel chat, a bot, or a
/// business account that was paid in Telegram Stars
@immutable
final class StarSubscription extends TdObject {
  StarSubscription({
    required this.id,
    required this.chatId,
    required this.expirationDate,
    required this.isCanceled,
    required this.isExpiring,
    this.pricing,
    this.type,
  });

  /// [id] Unique identifier of the subscription
  final String id;

  /// [chatId] Identifier of the chat that is subscribed
  final int chatId;

  /// [expirationDate] Point in time (Unix timestamp) when the subscription will
  /// expire or expired
  final int expirationDate;

  /// [isCanceled] True, if the subscription was canceled
  final bool isCanceled;

  /// [isExpiring] True, if the subscription expires soon and there aren't
  /// enough Telegram Stars on the user's balance to extend it
  final bool isExpiring;

  /// [pricing] The subscription plan
  final StarSubscriptionPricing? pricing;

  /// [type] Type of the subscription
  final StarSubscriptionType? type;

  static const String constructor = 'starSubscription';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'chat_id': chatId,
    'expiration_date': expirationDate,
    'is_canceled': isCanceled,
    'is_expiring': isExpiring,
    'pricing': pricing?.toJson(),
    'type': type?.toJson(),
    '@type': constructor,
  };

  static StarSubscription? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarSubscription(
      id: (json['id'] as String?) ?? '',
      chatId: (json['chat_id'] as int?) ?? 0,
      expirationDate: (json['expiration_date'] as int?) ?? 0,
      isCanceled: (json['is_canceled'] as bool?) ?? false,
      isExpiring: (json['is_expiring'] as bool?) ?? false,
      pricing: StarSubscriptionPricing.fromJson(tdMapFromJson(json['pricing'])),
      type: StarSubscriptionType.fromJson(tdMapFromJson(json['type'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
