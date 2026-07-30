import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of subscription paid in Telegram Stars
@immutable
sealed class StarSubscriptionType extends TdObject {
  const StarSubscriptionType();

  static const String constructor = 'starSubscriptionType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [StarSubscriptionTypeBot]
  /// [StarSubscriptionTypeChannel]
  static StarSubscriptionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StarSubscriptionTypeBot.constructor:
        return StarSubscriptionTypeBot.fromJson(json);

      case StarSubscriptionTypeChannel.constructor:
        return StarSubscriptionTypeChannel.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes a subscription in a bot or a business account
@immutable
final class StarSubscriptionTypeBot extends StarSubscriptionType {
  StarSubscriptionTypeBot({
    required this.isCanceledByBot,
    required this.title,
    this.photo,
    required this.invoiceLink,
  });

  /// [isCanceledByBot] True, if the subscription was canceled by the bot and
  /// can't be extended
  final bool isCanceledByBot;

  /// [title] Subscription invoice title
  final String title;

  /// [photo] Subscription invoice photo
  final Photo? photo;

  /// [invoiceLink] The link to the subscription invoice
  final String invoiceLink;

  static const String constructor = 'starSubscriptionTypeBot';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_canceled_by_bot': isCanceledByBot,
    'title': title,
    'photo': photo?.toJson(),
    'invoice_link': invoiceLink,
    '@type': constructor,
  };

  static StarSubscriptionTypeBot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarSubscriptionTypeBot(
      isCanceledByBot: (json['is_canceled_by_bot'] as bool?) ?? false,
      title: (json['title'] as String?) ?? '',
      photo: Photo.fromJson(tdMapFromJson(json['photo'])),
      invoiceLink: (json['invoice_link'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes a subscription to a channel chat
@immutable
final class StarSubscriptionTypeChannel extends StarSubscriptionType {
  StarSubscriptionTypeChannel({
    required this.canReuse,
    required this.inviteLink,
  });

  /// [canReuse] True, if the subscription is active and the user can use the
  /// method reuseStarSubscription to join the subscribed chat again
  final bool canReuse;

  /// [inviteLink] The invite link that can be used to renew the subscription if
  /// it has expired; may be empty if the link isn't available anymore
  final String inviteLink;

  static const String constructor = 'starSubscriptionTypeChannel';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'can_reuse': canReuse,
    'invite_link': inviteLink,
    '@type': constructor,
  };

  static StarSubscriptionTypeChannel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarSubscriptionTypeChannel(
      canReuse: (json['can_reuse'] as bool?) ?? false,
      inviteLink: (json['invite_link'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
