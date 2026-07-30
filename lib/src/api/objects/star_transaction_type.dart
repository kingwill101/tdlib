import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of transaction with Telegram Stars
@immutable
sealed class StarTransactionType extends TdObject {
  const StarTransactionType();

  static const String constructor = 'starTransactionType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [StarTransactionTypeAffiliateProgramCommission]
  /// [StarTransactionTypeAppStoreDeposit]
  /// [StarTransactionTypeBotInvoicePurchase]
  /// [StarTransactionTypeBotInvoiceSale]
  /// [StarTransactionTypeBotPaidMediaPurchase]
  /// [StarTransactionTypeBotPaidMediaSale]
  /// [StarTransactionTypeBotSubscriptionPurchase]
  /// [StarTransactionTypeBotSubscriptionSale]
  /// [StarTransactionTypeBusinessBotTransferReceive]
  /// [StarTransactionTypeBusinessBotTransferSend]
  /// [StarTransactionTypeChannelPaidMediaPurchase]
  /// [StarTransactionTypeChannelPaidMediaSale]
  /// [StarTransactionTypeChannelPaidReactionReceive]
  /// [StarTransactionTypeChannelPaidReactionSend]
  /// [StarTransactionTypeChannelSubscriptionPurchase]
  /// [StarTransactionTypeChannelSubscriptionSale]
  /// [StarTransactionTypeFragmentDeposit]
  /// [StarTransactionTypeFragmentWithdrawal]
  /// [StarTransactionTypeGiftAuctionBid]
  /// [StarTransactionTypeGiftOriginalDetailsDrop]
  /// [StarTransactionTypeGiftPurchase]
  /// [StarTransactionTypeGiftPurchaseOffer]
  /// [StarTransactionTypeGiftSale]
  /// [StarTransactionTypeGiftTransfer]
  /// [StarTransactionTypeGiftUpgrade]
  /// [StarTransactionTypeGiftUpgradePurchase]
  /// [StarTransactionTypeGiveawayDeposit]
  /// [StarTransactionTypeGooglePlayDeposit]
  /// [StarTransactionTypePaidGroupCallMessageReceive]
  /// [StarTransactionTypePaidGroupCallMessageSend]
  /// [StarTransactionTypePaidGroupCallReactionReceive]
  /// [StarTransactionTypePaidGroupCallReactionSend]
  /// [StarTransactionTypePaidMessageReceive]
  /// [StarTransactionTypePaidMessageSend]
  /// [StarTransactionTypePremiumBotDeposit]
  /// [StarTransactionTypePremiumPurchase]
  /// [StarTransactionTypePublicPostSearch]
  /// [StarTransactionTypeSuggestedPostPaymentReceive]
  /// [StarTransactionTypeSuggestedPostPaymentSend]
  /// [StarTransactionTypeTelegramAdsWithdrawal]
  /// [StarTransactionTypeTelegramApiUsage]
  /// [StarTransactionTypeUnsupported]
  /// [StarTransactionTypeUpgradedGiftPurchase]
  /// [StarTransactionTypeUpgradedGiftSale]
  /// [StarTransactionTypeUserDeposit]
  static StarTransactionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StarTransactionTypeAffiliateProgramCommission.constructor:
        return StarTransactionTypeAffiliateProgramCommission.fromJson(json);

      case StarTransactionTypeAppStoreDeposit.constructor:
        return StarTransactionTypeAppStoreDeposit.fromJson(json);

      case StarTransactionTypeBotInvoicePurchase.constructor:
        return StarTransactionTypeBotInvoicePurchase.fromJson(json);

      case StarTransactionTypeBotInvoiceSale.constructor:
        return StarTransactionTypeBotInvoiceSale.fromJson(json);

      case StarTransactionTypeBotPaidMediaPurchase.constructor:
        return StarTransactionTypeBotPaidMediaPurchase.fromJson(json);

      case StarTransactionTypeBotPaidMediaSale.constructor:
        return StarTransactionTypeBotPaidMediaSale.fromJson(json);

      case StarTransactionTypeBotSubscriptionPurchase.constructor:
        return StarTransactionTypeBotSubscriptionPurchase.fromJson(json);

      case StarTransactionTypeBotSubscriptionSale.constructor:
        return StarTransactionTypeBotSubscriptionSale.fromJson(json);

      case StarTransactionTypeBusinessBotTransferReceive.constructor:
        return StarTransactionTypeBusinessBotTransferReceive.fromJson(json);

      case StarTransactionTypeBusinessBotTransferSend.constructor:
        return StarTransactionTypeBusinessBotTransferSend.fromJson(json);

      case StarTransactionTypeChannelPaidMediaPurchase.constructor:
        return StarTransactionTypeChannelPaidMediaPurchase.fromJson(json);

      case StarTransactionTypeChannelPaidMediaSale.constructor:
        return StarTransactionTypeChannelPaidMediaSale.fromJson(json);

      case StarTransactionTypeChannelPaidReactionReceive.constructor:
        return StarTransactionTypeChannelPaidReactionReceive.fromJson(json);

      case StarTransactionTypeChannelPaidReactionSend.constructor:
        return StarTransactionTypeChannelPaidReactionSend.fromJson(json);

      case StarTransactionTypeChannelSubscriptionPurchase.constructor:
        return StarTransactionTypeChannelSubscriptionPurchase.fromJson(json);

      case StarTransactionTypeChannelSubscriptionSale.constructor:
        return StarTransactionTypeChannelSubscriptionSale.fromJson(json);

      case StarTransactionTypeFragmentDeposit.constructor:
        return StarTransactionTypeFragmentDeposit.fromJson(json);

      case StarTransactionTypeFragmentWithdrawal.constructor:
        return StarTransactionTypeFragmentWithdrawal.fromJson(json);

      case StarTransactionTypeGiftAuctionBid.constructor:
        return StarTransactionTypeGiftAuctionBid.fromJson(json);

      case StarTransactionTypeGiftOriginalDetailsDrop.constructor:
        return StarTransactionTypeGiftOriginalDetailsDrop.fromJson(json);

      case StarTransactionTypeGiftPurchase.constructor:
        return StarTransactionTypeGiftPurchase.fromJson(json);

      case StarTransactionTypeGiftPurchaseOffer.constructor:
        return StarTransactionTypeGiftPurchaseOffer.fromJson(json);

      case StarTransactionTypeGiftSale.constructor:
        return StarTransactionTypeGiftSale.fromJson(json);

      case StarTransactionTypeGiftTransfer.constructor:
        return StarTransactionTypeGiftTransfer.fromJson(json);

      case StarTransactionTypeGiftUpgrade.constructor:
        return StarTransactionTypeGiftUpgrade.fromJson(json);

      case StarTransactionTypeGiftUpgradePurchase.constructor:
        return StarTransactionTypeGiftUpgradePurchase.fromJson(json);

      case StarTransactionTypeGiveawayDeposit.constructor:
        return StarTransactionTypeGiveawayDeposit.fromJson(json);

      case StarTransactionTypeGooglePlayDeposit.constructor:
        return StarTransactionTypeGooglePlayDeposit.fromJson(json);

      case StarTransactionTypePaidGroupCallMessageReceive.constructor:
        return StarTransactionTypePaidGroupCallMessageReceive.fromJson(json);

      case StarTransactionTypePaidGroupCallMessageSend.constructor:
        return StarTransactionTypePaidGroupCallMessageSend.fromJson(json);

      case StarTransactionTypePaidGroupCallReactionReceive.constructor:
        return StarTransactionTypePaidGroupCallReactionReceive.fromJson(json);

      case StarTransactionTypePaidGroupCallReactionSend.constructor:
        return StarTransactionTypePaidGroupCallReactionSend.fromJson(json);

      case StarTransactionTypePaidMessageReceive.constructor:
        return StarTransactionTypePaidMessageReceive.fromJson(json);

      case StarTransactionTypePaidMessageSend.constructor:
        return StarTransactionTypePaidMessageSend.fromJson(json);

      case StarTransactionTypePremiumBotDeposit.constructor:
        return StarTransactionTypePremiumBotDeposit.fromJson(json);

      case StarTransactionTypePremiumPurchase.constructor:
        return StarTransactionTypePremiumPurchase.fromJson(json);

      case StarTransactionTypePublicPostSearch.constructor:
        return StarTransactionTypePublicPostSearch.fromJson(json);

      case StarTransactionTypeSuggestedPostPaymentReceive.constructor:
        return StarTransactionTypeSuggestedPostPaymentReceive.fromJson(json);

      case StarTransactionTypeSuggestedPostPaymentSend.constructor:
        return StarTransactionTypeSuggestedPostPaymentSend.fromJson(json);

      case StarTransactionTypeTelegramAdsWithdrawal.constructor:
        return StarTransactionTypeTelegramAdsWithdrawal.fromJson(json);

      case StarTransactionTypeTelegramApiUsage.constructor:
        return StarTransactionTypeTelegramApiUsage.fromJson(json);

      case StarTransactionTypeUnsupported.constructor:
        return StarTransactionTypeUnsupported.fromJson(json);

      case StarTransactionTypeUpgradedGiftPurchase.constructor:
        return StarTransactionTypeUpgradedGiftPurchase.fromJson(json);

      case StarTransactionTypeUpgradedGiftSale.constructor:
        return StarTransactionTypeUpgradedGiftSale.fromJson(json);

      case StarTransactionTypeUserDeposit.constructor:
        return StarTransactionTypeUserDeposit.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a receiving of a commission from an affiliate program;
/// relevant for regular users, bots and channel chats only
@immutable
final class StarTransactionTypeAffiliateProgramCommission
    extends StarTransactionType {
  StarTransactionTypeAffiliateProgramCommission({
    required this.chatId,
    required this.commissionPerMille,
  });

  /// [chatId] Identifier of the chat that created the affiliate program
  final int chatId;

  /// [commissionPerMille] The number of Telegram Stars received by the
  /// affiliate for each 1000 Telegram Stars received by the program owner
  final int commissionPerMille;

  static const String constructor =
      'starTransactionTypeAffiliateProgramCommission';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'commission_per_mille': commissionPerMille,
    '@type': constructor,
  };

  static StarTransactionTypeAffiliateProgramCommission? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeAffiliateProgramCommission(
      chatId: (json['chat_id'] as int?) ?? 0,
      commissionPerMille: (json['commission_per_mille'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a deposit of Telegram Stars from App Store; relevant
/// for regular users only
@immutable
final class StarTransactionTypeAppStoreDeposit extends StarTransactionType {
  const StarTransactionTypeAppStoreDeposit();

  static const String constructor = 'starTransactionTypeAppStoreDeposit';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static StarTransactionTypeAppStoreDeposit? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const StarTransactionTypeAppStoreDeposit();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a purchase of a product from a bot or a business
/// account by the current user; relevant for regular users only
@immutable
final class StarTransactionTypeBotInvoicePurchase extends StarTransactionType {
  StarTransactionTypeBotInvoicePurchase({
    required this.userId,
    this.productInfo,
  });

  /// [userId] Identifier of the bot or the business account user who created
  /// the invoice
  final int userId;

  /// [productInfo] Information about the bought product
  final ProductInfo? productInfo;

  static const String constructor = 'starTransactionTypeBotInvoicePurchase';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'product_info': productInfo?.toJson(),
    '@type': constructor,
  };

  static StarTransactionTypeBotInvoicePurchase? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeBotInvoicePurchase(
      userId: (json['user_id'] as int?) ?? 0,
      productInfo: ProductInfo.fromJson(tdMapFromJson(json['product_info'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a sale of a product by the bot; relevant for bots only
@immutable
final class StarTransactionTypeBotInvoiceSale extends StarTransactionType {
  StarTransactionTypeBotInvoiceSale({
    required this.userId,
    this.productInfo,
    required this.invoicePayload,
    this.affiliate,
  });

  /// [userId] Identifier of the user who bought the product
  final int userId;

  /// [productInfo] Information about the bought product
  final ProductInfo? productInfo;

  /// [invoicePayload] Invoice payload
  final String invoicePayload;

  /// [affiliate] Information about the affiliate which received commission from
  /// the transaction; may be null if none
  final AffiliateInfo? affiliate;

  static const String constructor = 'starTransactionTypeBotInvoiceSale';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'product_info': productInfo?.toJson(),
    'invoice_payload': invoicePayload,
    'affiliate': affiliate?.toJson(),
    '@type': constructor,
  };

  static StarTransactionTypeBotInvoiceSale? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeBotInvoiceSale(
      userId: (json['user_id'] as int?) ?? 0,
      productInfo: ProductInfo.fromJson(tdMapFromJson(json['product_info'])),
      invoicePayload: (json['invoice_payload'] as String?) ?? '',
      affiliate: AffiliateInfo.fromJson(tdMapFromJson(json['affiliate'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a purchase of paid media from a bot or a business
/// account by the current user; relevant for regular users only
@immutable
final class StarTransactionTypeBotPaidMediaPurchase
    extends StarTransactionType {
  StarTransactionTypeBotPaidMediaPurchase({
    required this.userId,
    required this.media,
  });

  /// [userId] Identifier of the bot or the business account user who sent the
  /// paid media
  final int userId;

  /// [media] The bought media if the transaction wasn't refunded
  final List<PaidMedia> media;

  static const String constructor = 'starTransactionTypeBotPaidMediaPurchase';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'media': media.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static StarTransactionTypeBotPaidMediaPurchase? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeBotPaidMediaPurchase(
      userId: (json['user_id'] as int?) ?? 0,
      media: List<PaidMedia>.from(
        tdListFromJson(json['media'])
            .map((item) => PaidMedia.fromJson(tdMapFromJson(item)))
            .whereType<PaidMedia>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a sale of paid media by the bot or a business account
/// managed by the bot; relevant for bots only
@immutable
final class StarTransactionTypeBotPaidMediaSale extends StarTransactionType {
  StarTransactionTypeBotPaidMediaSale({
    required this.userId,
    required this.media,
    required this.payload,
    this.affiliate,
  });

  /// [userId] Identifier of the user who bought the media
  final int userId;

  /// [media] The bought media
  final List<PaidMedia> media;

  /// [payload] Bot-provided payload
  final String payload;

  /// [affiliate] Information about the affiliate which received commission from
  /// the transaction; may be null if none
  final AffiliateInfo? affiliate;

  static const String constructor = 'starTransactionTypeBotPaidMediaSale';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'media': media.map((item) => item.toJson()).toList(),
    'payload': payload,
    'affiliate': affiliate?.toJson(),
    '@type': constructor,
  };

  static StarTransactionTypeBotPaidMediaSale? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeBotPaidMediaSale(
      userId: (json['user_id'] as int?) ?? 0,
      media: List<PaidMedia>.from(
        tdListFromJson(json['media'])
            .map((item) => PaidMedia.fromJson(tdMapFromJson(item)))
            .whereType<PaidMedia>(),
      ),
      payload: (json['payload'] as String?) ?? '',
      affiliate: AffiliateInfo.fromJson(tdMapFromJson(json['affiliate'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a purchase of a subscription from a bot or a business
/// account by the current user; relevant for regular users only
@immutable
final class StarTransactionTypeBotSubscriptionPurchase
    extends StarTransactionType {
  StarTransactionTypeBotSubscriptionPurchase({
    required this.userId,
    required this.subscriptionPeriod,
    this.productInfo,
  });

  /// [userId] Identifier of the bot or the business account user who created
  /// the subscription link
  final int userId;

  /// [subscriptionPeriod] The number of seconds between consecutive Telegram
  /// Star debitings
  final int subscriptionPeriod;

  /// [productInfo] Information about the bought subscription
  final ProductInfo? productInfo;

  static const String constructor =
      'starTransactionTypeBotSubscriptionPurchase';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'subscription_period': subscriptionPeriod,
    'product_info': productInfo?.toJson(),
    '@type': constructor,
  };

  static StarTransactionTypeBotSubscriptionPurchase? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeBotSubscriptionPurchase(
      userId: (json['user_id'] as int?) ?? 0,
      subscriptionPeriod: (json['subscription_period'] as int?) ?? 0,
      productInfo: ProductInfo.fromJson(tdMapFromJson(json['product_info'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a sale of a subscription by the bot; relevant for bots
/// only
@immutable
final class StarTransactionTypeBotSubscriptionSale extends StarTransactionType {
  StarTransactionTypeBotSubscriptionSale({
    required this.userId,
    required this.subscriptionPeriod,
    this.productInfo,
    required this.invoicePayload,
    this.affiliate,
  });

  /// [userId] Identifier of the user who bought the subscription
  final int userId;

  /// [subscriptionPeriod] The number of seconds between consecutive Telegram
  /// Star debitings
  final int subscriptionPeriod;

  /// [productInfo] Information about the bought subscription
  final ProductInfo? productInfo;

  /// [invoicePayload] Invoice payload
  final String invoicePayload;

  /// [affiliate] Information about the affiliate which received commission from
  /// the transaction; may be null if none
  final AffiliateInfo? affiliate;

  static const String constructor = 'starTransactionTypeBotSubscriptionSale';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'subscription_period': subscriptionPeriod,
    'product_info': productInfo?.toJson(),
    'invoice_payload': invoicePayload,
    'affiliate': affiliate?.toJson(),
    '@type': constructor,
  };

  static StarTransactionTypeBotSubscriptionSale? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeBotSubscriptionSale(
      userId: (json['user_id'] as int?) ?? 0,
      subscriptionPeriod: (json['subscription_period'] as int?) ?? 0,
      productInfo: ProductInfo.fromJson(tdMapFromJson(json['product_info'])),
      invoicePayload: (json['invoice_payload'] as String?) ?? '',
      affiliate: AffiliateInfo.fromJson(tdMapFromJson(json['affiliate'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a transfer of Telegram Stars from a business account;
/// relevant for bots only
@immutable
final class StarTransactionTypeBusinessBotTransferReceive
    extends StarTransactionType {
  StarTransactionTypeBusinessBotTransferReceive({required this.userId});

  /// [userId] Identifier of the user who sent Telegram Stars
  final int userId;

  static const String constructor =
      'starTransactionTypeBusinessBotTransferReceive';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    '@type': constructor,
  };

  static StarTransactionTypeBusinessBotTransferReceive? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeBusinessBotTransferReceive(
      userId: (json['user_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a transfer of Telegram Stars to a business bot;
/// relevant for regular users only
@immutable
final class StarTransactionTypeBusinessBotTransferSend
    extends StarTransactionType {
  StarTransactionTypeBusinessBotTransferSend({required this.userId});

  /// [userId] Identifier of the bot that received Telegram Stars
  final int userId;

  static const String constructor =
      'starTransactionTypeBusinessBotTransferSend';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    '@type': constructor,
  };

  static StarTransactionTypeBusinessBotTransferSend? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeBusinessBotTransferSend(
      userId: (json['user_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a purchase of paid media from a channel by the current
/// user; relevant for regular users only
@immutable
final class StarTransactionTypeChannelPaidMediaPurchase
    extends StarTransactionType {
  StarTransactionTypeChannelPaidMediaPurchase({
    required this.chatId,
    required this.messageId,
    required this.media,
  });

  /// [chatId] Identifier of the channel chat that sent the paid media
  final int chatId;

  /// [messageId] Identifier of the corresponding message with paid media; may
  /// be 0 or an identifier of a deleted message
  final int messageId;

  /// [media] The bought media if the transaction wasn't refunded
  final List<PaidMedia> media;

  static const String constructor =
      'starTransactionTypeChannelPaidMediaPurchase';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    'media': media.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static StarTransactionTypeChannelPaidMediaPurchase? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeChannelPaidMediaPurchase(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      media: List<PaidMedia>.from(
        tdListFromJson(json['media'])
            .map((item) => PaidMedia.fromJson(tdMapFromJson(item)))
            .whereType<PaidMedia>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a sale of paid media by the channel chat; relevant for
/// channel chats only
@immutable
final class StarTransactionTypeChannelPaidMediaSale
    extends StarTransactionType {
  StarTransactionTypeChannelPaidMediaSale({
    required this.userId,
    required this.messageId,
    required this.media,
  });

  /// [userId] Identifier of the user who bought the media
  final int userId;

  /// [messageId] Identifier of the corresponding message with paid media; may
  /// be 0 or an identifier of a deleted message
  final int messageId;

  /// [media] The bought media
  final List<PaidMedia> media;

  static const String constructor = 'starTransactionTypeChannelPaidMediaSale';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'message_id': messageId,
    'media': media.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static StarTransactionTypeChannelPaidMediaSale? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeChannelPaidMediaSale(
      userId: (json['user_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      media: List<PaidMedia>.from(
        tdListFromJson(json['media'])
            .map((item) => PaidMedia.fromJson(tdMapFromJson(item)))
            .whereType<PaidMedia>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a receiving of a paid reaction to a message by the
/// channel chat; relevant for channel chats only
@immutable
final class StarTransactionTypeChannelPaidReactionReceive
    extends StarTransactionType {
  StarTransactionTypeChannelPaidReactionReceive({
    required this.userId,
    required this.messageId,
  });

  /// [userId] Identifier of the user who added the paid reaction
  final int userId;

  /// [messageId] Identifier of the reacted message; may be 0 or an identifier
  /// of a deleted message
  final int messageId;

  static const String constructor =
      'starTransactionTypeChannelPaidReactionReceive';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'message_id': messageId,
    '@type': constructor,
  };

  static StarTransactionTypeChannelPaidReactionReceive? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeChannelPaidReactionReceive(
      userId: (json['user_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a sending of a paid reaction to a message in a channel
/// chat by the current user; relevant for regular users only
@immutable
final class StarTransactionTypeChannelPaidReactionSend
    extends StarTransactionType {
  StarTransactionTypeChannelPaidReactionSend({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the channel chat
  final int chatId;

  /// [messageId] Identifier of the reacted message; may be 0 or an identifier
  /// of a deleted message
  final int messageId;

  static const String constructor =
      'starTransactionTypeChannelPaidReactionSend';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    '@type': constructor,
  };

  static StarTransactionTypeChannelPaidReactionSend? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeChannelPaidReactionSend(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a purchase of a subscription to a channel chat by the
/// current user; relevant for regular users only
@immutable
final class StarTransactionTypeChannelSubscriptionPurchase
    extends StarTransactionType {
  StarTransactionTypeChannelSubscriptionPurchase({
    required this.chatId,
    required this.subscriptionPeriod,
  });

  /// [chatId] Identifier of the channel chat that created the subscription
  final int chatId;

  /// [subscriptionPeriod] The number of seconds between consecutive Telegram
  /// Star debitings
  final int subscriptionPeriod;

  static const String constructor =
      'starTransactionTypeChannelSubscriptionPurchase';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'subscription_period': subscriptionPeriod,
    '@type': constructor,
  };

  static StarTransactionTypeChannelSubscriptionPurchase? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeChannelSubscriptionPurchase(
      chatId: (json['chat_id'] as int?) ?? 0,
      subscriptionPeriod: (json['subscription_period'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a sale of a subscription by the channel chat; relevant
/// for channel chats only
@immutable
final class StarTransactionTypeChannelSubscriptionSale
    extends StarTransactionType {
  StarTransactionTypeChannelSubscriptionSale({
    required this.userId,
    required this.subscriptionPeriod,
  });

  /// [userId] Identifier of the user who bought the subscription
  final int userId;

  /// [subscriptionPeriod] The number of seconds between consecutive Telegram
  /// Star debitings
  final int subscriptionPeriod;

  static const String constructor =
      'starTransactionTypeChannelSubscriptionSale';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'subscription_period': subscriptionPeriod,
    '@type': constructor,
  };

  static StarTransactionTypeChannelSubscriptionSale? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeChannelSubscriptionSale(
      userId: (json['user_id'] as int?) ?? 0,
      subscriptionPeriod: (json['subscription_period'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a deposit of Telegram Stars from Fragment; relevant for
/// regular users and bots only
@immutable
final class StarTransactionTypeFragmentDeposit extends StarTransactionType {
  const StarTransactionTypeFragmentDeposit();

  static const String constructor = 'starTransactionTypeFragmentDeposit';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static StarTransactionTypeFragmentDeposit? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const StarTransactionTypeFragmentDeposit();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a withdrawal of earned Telegram Stars to Fragment;
/// relevant for regular users, bots, supergroup and channel chats only
@immutable
final class StarTransactionTypeFragmentWithdrawal extends StarTransactionType {
  StarTransactionTypeFragmentWithdrawal({this.withdrawalState});

  /// [withdrawalState] State of the withdrawal; may be null for refunds from
  /// Fragment
  final RevenueWithdrawalState? withdrawalState;

  static const String constructor = 'starTransactionTypeFragmentWithdrawal';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'withdrawal_state': withdrawalState?.toJson(),
    '@type': constructor,
  };

  static StarTransactionTypeFragmentWithdrawal? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeFragmentWithdrawal(
      withdrawalState: RevenueWithdrawalState.fromJson(
        tdMapFromJson(json['withdrawal_state']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a bid on a gift auction; relevant for regular users
/// only
@immutable
final class StarTransactionTypeGiftAuctionBid extends StarTransactionType {
  StarTransactionTypeGiftAuctionBid({this.ownerId, this.gift});

  /// [ownerId] Identifier of the user who will receive the gift
  final MessageSender? ownerId;

  /// [gift] The gift
  final Gift? gift;

  static const String constructor = 'starTransactionTypeGiftAuctionBid';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'owner_id': ownerId?.toJson(),
    'gift': gift?.toJson(),
    '@type': constructor,
  };

  static StarTransactionTypeGiftAuctionBid? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeGiftAuctionBid(
      ownerId: MessageSender.fromJson(tdMapFromJson(json['owner_id'])),
      gift: Gift.fromJson(tdMapFromJson(json['gift'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a drop of original details of an upgraded gift;
/// relevant for regular users only
@immutable
final class StarTransactionTypeGiftOriginalDetailsDrop
    extends StarTransactionType {
  StarTransactionTypeGiftOriginalDetailsDrop({this.ownerId, this.gift});

  /// [ownerId] Identifier of the user or the channel that owns the gift
  final MessageSender? ownerId;

  /// [gift] The gift
  final UpgradedGift? gift;

  static const String constructor =
      'starTransactionTypeGiftOriginalDetailsDrop';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'owner_id': ownerId?.toJson(),
    'gift': gift?.toJson(),
    '@type': constructor,
  };

  static StarTransactionTypeGiftOriginalDetailsDrop? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeGiftOriginalDetailsDrop(
      ownerId: MessageSender.fromJson(tdMapFromJson(json['owner_id'])),
      gift: UpgradedGift.fromJson(tdMapFromJson(json['gift'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a purchase of a regular gift; relevant for regular
/// users and bots only
@immutable
final class StarTransactionTypeGiftPurchase extends StarTransactionType {
  StarTransactionTypeGiftPurchase({this.ownerId, this.gift});

  /// [ownerId] Identifier of the user or the channel that received the gift
  final MessageSender? ownerId;

  /// [gift] The gift
  final Gift? gift;

  static const String constructor = 'starTransactionTypeGiftPurchase';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'owner_id': ownerId?.toJson(),
    'gift': gift?.toJson(),
    '@type': constructor,
  };

  static StarTransactionTypeGiftPurchase? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeGiftPurchase(
      ownerId: MessageSender.fromJson(tdMapFromJson(json['owner_id'])),
      gift: Gift.fromJson(tdMapFromJson(json['gift'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is an offer of gift purchase; relevant for regular users
/// only
@immutable
final class StarTransactionTypeGiftPurchaseOffer extends StarTransactionType {
  StarTransactionTypeGiftPurchaseOffer({this.gift});

  /// [gift] The gift
  final UpgradedGift? gift;

  static const String constructor = 'starTransactionTypeGiftPurchaseOffer';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift': gift?.toJson(),
    '@type': constructor,
  };

  static StarTransactionTypeGiftPurchaseOffer? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeGiftPurchaseOffer(
      gift: UpgradedGift.fromJson(tdMapFromJson(json['gift'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a sale of a received gift; relevant for regular users
/// and channel chats only
@immutable
final class StarTransactionTypeGiftSale extends StarTransactionType {
  StarTransactionTypeGiftSale({required this.userId, this.gift});

  /// [userId] Identifier of the user who sent the gift
  final int userId;

  /// [gift] The gift
  final Gift? gift;

  static const String constructor = 'starTransactionTypeGiftSale';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'gift': gift?.toJson(),
    '@type': constructor,
  };

  static StarTransactionTypeGiftSale? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeGiftSale(
      userId: (json['user_id'] as int?) ?? 0,
      gift: Gift.fromJson(tdMapFromJson(json['gift'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a transfer of an upgraded gift; relevant for regular
/// users only
@immutable
final class StarTransactionTypeGiftTransfer extends StarTransactionType {
  StarTransactionTypeGiftTransfer({this.ownerId, this.gift});

  /// [ownerId] Identifier of the user or the channel that received the gift
  final MessageSender? ownerId;

  /// [gift] The gift
  final UpgradedGift? gift;

  static const String constructor = 'starTransactionTypeGiftTransfer';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'owner_id': ownerId?.toJson(),
    'gift': gift?.toJson(),
    '@type': constructor,
  };

  static StarTransactionTypeGiftTransfer? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeGiftTransfer(
      ownerId: MessageSender.fromJson(tdMapFromJson(json['owner_id'])),
      gift: UpgradedGift.fromJson(tdMapFromJson(json['gift'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is an upgrade of a gift; relevant for regular users only
@immutable
final class StarTransactionTypeGiftUpgrade extends StarTransactionType {
  StarTransactionTypeGiftUpgrade({required this.userId, this.gift});

  /// [userId] Identifier of the user who initially sent the gift
  final int userId;

  /// [gift] The upgraded gift
  final UpgradedGift? gift;

  static const String constructor = 'starTransactionTypeGiftUpgrade';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'gift': gift?.toJson(),
    '@type': constructor,
  };

  static StarTransactionTypeGiftUpgrade? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeGiftUpgrade(
      userId: (json['user_id'] as int?) ?? 0,
      gift: UpgradedGift.fromJson(tdMapFromJson(json['gift'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a purchase of an upgrade of a gift owned by another
/// user or channel; relevant for regular users only
@immutable
final class StarTransactionTypeGiftUpgradePurchase extends StarTransactionType {
  StarTransactionTypeGiftUpgradePurchase({this.ownerId, this.gift});

  /// [ownerId] Owner of the upgraded gift
  final MessageSender? ownerId;

  /// [gift] The gift
  final Gift? gift;

  static const String constructor = 'starTransactionTypeGiftUpgradePurchase';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'owner_id': ownerId?.toJson(),
    'gift': gift?.toJson(),
    '@type': constructor,
  };

  static StarTransactionTypeGiftUpgradePurchase? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeGiftUpgradePurchase(
      ownerId: MessageSender.fromJson(tdMapFromJson(json['owner_id'])),
      gift: Gift.fromJson(tdMapFromJson(json['gift'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a deposit of Telegram Stars from a giveaway; relevant
/// for regular users only
@immutable
final class StarTransactionTypeGiveawayDeposit extends StarTransactionType {
  StarTransactionTypeGiveawayDeposit({
    required this.chatId,
    required this.giveawayMessageId,
  });

  /// [chatId] Identifier of a supergroup or a channel chat that created the
  /// giveaway
  final int chatId;

  /// [giveawayMessageId] Identifier of the message with the giveaway; may be 0
  /// or an identifier of a deleted message
  final int giveawayMessageId;

  static const String constructor = 'starTransactionTypeGiveawayDeposit';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'giveaway_message_id': giveawayMessageId,
    '@type': constructor,
  };

  static StarTransactionTypeGiveawayDeposit? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeGiveawayDeposit(
      chatId: (json['chat_id'] as int?) ?? 0,
      giveawayMessageId: (json['giveaway_message_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a deposit of Telegram Stars from Google Play; relevant
/// for regular users only
@immutable
final class StarTransactionTypeGooglePlayDeposit extends StarTransactionType {
  const StarTransactionTypeGooglePlayDeposit();

  static const String constructor = 'starTransactionTypeGooglePlayDeposit';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static StarTransactionTypeGooglePlayDeposit? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const StarTransactionTypeGooglePlayDeposit();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a receiving of a paid group call message; relevant for
/// regular users and channel chats only
@immutable
final class StarTransactionTypePaidGroupCallMessageReceive
    extends StarTransactionType {
  StarTransactionTypePaidGroupCallMessageReceive({
    this.senderId,
    required this.commissionPerMille,
    this.commissionStarAmount,
  });

  /// [senderId] Identifier of the sender of the message
  final MessageSender? senderId;

  /// [commissionPerMille] The number of Telegram Stars received by the Telegram
  /// for each 1000 Telegram Stars paid for message sending
  final int commissionPerMille;

  /// [commissionStarAmount] The Telegram Star amount that was received by
  /// Telegram; can be negative for refunds
  final StarAmount? commissionStarAmount;

  static const String constructor =
      'starTransactionTypePaidGroupCallMessageReceive';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sender_id': senderId?.toJson(),
    'commission_per_mille': commissionPerMille,
    'commission_star_amount': commissionStarAmount?.toJson(),
    '@type': constructor,
  };

  static StarTransactionTypePaidGroupCallMessageReceive? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypePaidGroupCallMessageReceive(
      senderId: MessageSender.fromJson(tdMapFromJson(json['sender_id'])),
      commissionPerMille: (json['commission_per_mille'] as int?) ?? 0,
      commissionStarAmount: StarAmount.fromJson(
        tdMapFromJson(json['commission_star_amount']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a sending of a paid group call message; relevant for
/// regular users only
@immutable
final class StarTransactionTypePaidGroupCallMessageSend
    extends StarTransactionType {
  StarTransactionTypePaidGroupCallMessageSend({required this.chatId});

  /// [chatId] Identifier of the chat that received the payment
  final int chatId;

  static const String constructor =
      'starTransactionTypePaidGroupCallMessageSend';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    '@type': constructor,
  };

  static StarTransactionTypePaidGroupCallMessageSend? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypePaidGroupCallMessageSend(
      chatId: (json['chat_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a receiving of a paid group call reaction; relevant for
/// regular users and channel chats only
@immutable
final class StarTransactionTypePaidGroupCallReactionReceive
    extends StarTransactionType {
  StarTransactionTypePaidGroupCallReactionReceive({
    this.senderId,
    required this.commissionPerMille,
    this.commissionStarAmount,
  });

  /// [senderId] Identifier of the sender of the reaction
  final MessageSender? senderId;

  /// [commissionPerMille] The number of Telegram Stars received by the Telegram
  /// for each 1000 Telegram Stars paid for reaction sending
  final int commissionPerMille;

  /// [commissionStarAmount] The Telegram Star amount that was received by
  /// Telegram; can be negative for refunds
  final StarAmount? commissionStarAmount;

  static const String constructor =
      'starTransactionTypePaidGroupCallReactionReceive';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sender_id': senderId?.toJson(),
    'commission_per_mille': commissionPerMille,
    'commission_star_amount': commissionStarAmount?.toJson(),
    '@type': constructor,
  };

  static StarTransactionTypePaidGroupCallReactionReceive? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypePaidGroupCallReactionReceive(
      senderId: MessageSender.fromJson(tdMapFromJson(json['sender_id'])),
      commissionPerMille: (json['commission_per_mille'] as int?) ?? 0,
      commissionStarAmount: StarAmount.fromJson(
        tdMapFromJson(json['commission_star_amount']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a sending of a paid group reaction; relevant for
/// regular users only
@immutable
final class StarTransactionTypePaidGroupCallReactionSend
    extends StarTransactionType {
  StarTransactionTypePaidGroupCallReactionSend({required this.chatId});

  /// [chatId] Identifier of the chat that received the payment
  final int chatId;

  static const String constructor =
      'starTransactionTypePaidGroupCallReactionSend';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    '@type': constructor,
  };

  static StarTransactionTypePaidGroupCallReactionSend? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypePaidGroupCallReactionSend(
      chatId: (json['chat_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a receiving of a paid message; relevant for regular
/// users, supergroup and channel chats only
@immutable
final class StarTransactionTypePaidMessageReceive extends StarTransactionType {
  StarTransactionTypePaidMessageReceive({
    this.senderId,
    required this.messageCount,
    required this.commissionPerMille,
    this.commissionStarAmount,
  });

  /// [senderId] Identifier of the sender of the message
  final MessageSender? senderId;

  /// [messageCount] Number of received paid messages
  final int messageCount;

  /// [commissionPerMille] The number of Telegram Stars received by the Telegram
  /// for each 1000 Telegram Stars paid for message sending
  final int commissionPerMille;

  /// [commissionStarAmount] The Telegram Star amount that was received by
  /// Telegram; can be negative for refunds
  final StarAmount? commissionStarAmount;

  static const String constructor = 'starTransactionTypePaidMessageReceive';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sender_id': senderId?.toJson(),
    'message_count': messageCount,
    'commission_per_mille': commissionPerMille,
    'commission_star_amount': commissionStarAmount?.toJson(),
    '@type': constructor,
  };

  static StarTransactionTypePaidMessageReceive? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypePaidMessageReceive(
      senderId: MessageSender.fromJson(tdMapFromJson(json['sender_id'])),
      messageCount: (json['message_count'] as int?) ?? 0,
      commissionPerMille: (json['commission_per_mille'] as int?) ?? 0,
      commissionStarAmount: StarAmount.fromJson(
        tdMapFromJson(json['commission_star_amount']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a sending of a paid message; relevant for regular users
/// only
@immutable
final class StarTransactionTypePaidMessageSend extends StarTransactionType {
  StarTransactionTypePaidMessageSend({
    required this.chatId,
    required this.messageCount,
  });

  /// [chatId] Identifier of the chat that received the payment
  final int chatId;

  /// [messageCount] Number of sent paid messages
  final int messageCount;

  static const String constructor = 'starTransactionTypePaidMessageSend';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_count': messageCount,
    '@type': constructor,
  };

  static StarTransactionTypePaidMessageSend? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypePaidMessageSend(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageCount: (json['message_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a deposit of Telegram Stars from the Premium bot;
/// relevant for regular users only
@immutable
final class StarTransactionTypePremiumBotDeposit extends StarTransactionType {
  const StarTransactionTypePremiumBotDeposit();

  static const String constructor = 'starTransactionTypePremiumBotDeposit';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static StarTransactionTypePremiumBotDeposit? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const StarTransactionTypePremiumBotDeposit();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a purchase of Telegram Premium subscription; relevant
/// for regular users and bots only
@immutable
final class StarTransactionTypePremiumPurchase extends StarTransactionType {
  StarTransactionTypePremiumPurchase({
    required this.userId,
    required this.monthCount,
    this.sticker,
  });

  /// [userId] Identifier of the user who received the Telegram Premium
  /// subscription
  final int userId;

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active
  final int monthCount;

  /// [sticker] A sticker to be shown in the transaction information; may be
  /// null if unknown
  final Sticker? sticker;

  static const String constructor = 'starTransactionTypePremiumPurchase';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'month_count': monthCount,
    'sticker': sticker?.toJson(),
    '@type': constructor,
  };

  static StarTransactionTypePremiumPurchase? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypePremiumPurchase(
      userId: (json['user_id'] as int?) ?? 0,
      monthCount: (json['month_count'] as int?) ?? 0,
      sticker: Sticker.fromJson(tdMapFromJson(json['sticker'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a payment for search of posts in public Telegram
/// channels; relevant for regular users only
@immutable
final class StarTransactionTypePublicPostSearch extends StarTransactionType {
  const StarTransactionTypePublicPostSearch();

  static const String constructor = 'starTransactionTypePublicPostSearch';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static StarTransactionTypePublicPostSearch? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const StarTransactionTypePublicPostSearch();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a receiving of a payment for a suggested post by the
/// channel chat; relevant for channel chats only
@immutable
final class StarTransactionTypeSuggestedPostPaymentReceive
    extends StarTransactionType {
  StarTransactionTypeSuggestedPostPaymentReceive({required this.userId});

  /// [userId] Identifier of the user who paid for the suggested post
  final int userId;

  static const String constructor =
      'starTransactionTypeSuggestedPostPaymentReceive';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    '@type': constructor,
  };

  static StarTransactionTypeSuggestedPostPaymentReceive? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeSuggestedPostPaymentReceive(
      userId: (json['user_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a payment for a suggested post; relevant for regular
/// users only
@immutable
final class StarTransactionTypeSuggestedPostPaymentSend
    extends StarTransactionType {
  StarTransactionTypeSuggestedPostPaymentSend({required this.chatId});

  /// [chatId] Identifier of the channel chat that posted the post
  final int chatId;

  static const String constructor =
      'starTransactionTypeSuggestedPostPaymentSend';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    '@type': constructor,
  };

  static StarTransactionTypeSuggestedPostPaymentSend? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeSuggestedPostPaymentSend(
      chatId: (json['chat_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a withdrawal of earned Telegram Stars to Telegram Ad
/// platform; relevant for bots and channel chats only
@immutable
final class StarTransactionTypeTelegramAdsWithdrawal
    extends StarTransactionType {
  const StarTransactionTypeTelegramAdsWithdrawal();

  static const String constructor = 'starTransactionTypeTelegramAdsWithdrawal';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static StarTransactionTypeTelegramAdsWithdrawal? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const StarTransactionTypeTelegramAdsWithdrawal();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a payment for Telegram API usage; relevant for bots
/// only
@immutable
final class StarTransactionTypeTelegramApiUsage extends StarTransactionType {
  StarTransactionTypeTelegramApiUsage({required this.requestCount});

  /// [requestCount] The number of billed requests
  final int requestCount;

  static const String constructor = 'starTransactionTypeTelegramApiUsage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'request_count': requestCount,
    '@type': constructor,
  };

  static StarTransactionTypeTelegramApiUsage? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeTelegramApiUsage(
      requestCount: (json['request_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a transaction of an unsupported type
@immutable
final class StarTransactionTypeUnsupported extends StarTransactionType {
  const StarTransactionTypeUnsupported();

  static const String constructor = 'starTransactionTypeUnsupported';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static StarTransactionTypeUnsupported? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StarTransactionTypeUnsupported();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a purchase of an upgraded gift for some user or
/// channel; relevant for regular users only
@immutable
final class StarTransactionTypeUpgradedGiftPurchase
    extends StarTransactionType {
  StarTransactionTypeUpgradedGiftPurchase({required this.userId, this.gift});

  /// [userId] Identifier of the user who sold the gift
  final int userId;

  /// [gift] The gift
  final UpgradedGift? gift;

  static const String constructor = 'starTransactionTypeUpgradedGiftPurchase';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'gift': gift?.toJson(),
    '@type': constructor,
  };

  static StarTransactionTypeUpgradedGiftPurchase? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeUpgradedGiftPurchase(
      userId: (json['user_id'] as int?) ?? 0,
      gift: UpgradedGift.fromJson(tdMapFromJson(json['gift'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a sale of an upgraded gift; relevant for regular users
/// only
@immutable
final class StarTransactionTypeUpgradedGiftSale extends StarTransactionType {
  StarTransactionTypeUpgradedGiftSale({
    required this.userId,
    this.gift,
    required this.commissionPerMille,
    this.commissionStarAmount,
    required this.viaOffer,
  });

  /// [userId] Identifier of the user who bought the gift
  final int userId;

  /// [gift] The gift
  final UpgradedGift? gift;

  /// [commissionPerMille] The number of Telegram Stars received by the Telegram
  /// for each 1000 Telegram Stars received by the seller of the gift
  final int commissionPerMille;

  /// [commissionStarAmount] The Telegram Star amount that was received by
  /// Telegram; can be negative for refunds
  final StarAmount? commissionStarAmount;

  /// [viaOffer] True, if the gift was sold through a purchase offer
  final bool viaOffer;

  static const String constructor = 'starTransactionTypeUpgradedGiftSale';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'gift': gift?.toJson(),
    'commission_per_mille': commissionPerMille,
    'commission_star_amount': commissionStarAmount?.toJson(),
    'via_offer': viaOffer,
    '@type': constructor,
  };

  static StarTransactionTypeUpgradedGiftSale? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeUpgradedGiftSale(
      userId: (json['user_id'] as int?) ?? 0,
      gift: UpgradedGift.fromJson(tdMapFromJson(json['gift'])),
      commissionPerMille: (json['commission_per_mille'] as int?) ?? 0,
      commissionStarAmount: StarAmount.fromJson(
        tdMapFromJson(json['commission_star_amount']),
      ),
      viaOffer: (json['via_offer'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a deposit of Telegram Stars by another user; relevant
/// for regular users only
@immutable
final class StarTransactionTypeUserDeposit extends StarTransactionType {
  StarTransactionTypeUserDeposit({required this.userId, this.sticker});

  /// [userId] Identifier of the user who gifted Telegram Stars; 0 if the user
  /// was anonymous
  final int userId;

  /// [sticker] The sticker to be shown in the transaction information; may be
  /// null if unknown
  final Sticker? sticker;

  static const String constructor = 'starTransactionTypeUserDeposit';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'sticker': sticker?.toJson(),
    '@type': constructor,
  };

  static StarTransactionTypeUserDeposit? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeUserDeposit(
      userId: (json['user_id'] as int?) ?? 0,
      sticker: Sticker.fromJson(tdMapFromJson(json['sticker'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
