import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a purpose of a payment toward Telegram
@immutable
sealed class TelegramPaymentPurpose extends TdObject {
  const TelegramPaymentPurpose();

  static const String constructor = 'telegramPaymentPurpose';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [TelegramPaymentPurposeGiftedStars]
  /// [TelegramPaymentPurposeJoinChat]
  /// [TelegramPaymentPurposePremiumGift]
  /// [TelegramPaymentPurposePremiumGiftCodes]
  /// [TelegramPaymentPurposePremiumGiveaway]
  /// [TelegramPaymentPurposeStarGiveaway]
  /// [TelegramPaymentPurposeStars]
  static TelegramPaymentPurpose? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case TelegramPaymentPurposeGiftedStars.constructor:
        return TelegramPaymentPurposeGiftedStars.fromJson(json);

      case TelegramPaymentPurposeJoinChat.constructor:
        return TelegramPaymentPurposeJoinChat.fromJson(json);

      case TelegramPaymentPurposePremiumGift.constructor:
        return TelegramPaymentPurposePremiumGift.fromJson(json);

      case TelegramPaymentPurposePremiumGiftCodes.constructor:
        return TelegramPaymentPurposePremiumGiftCodes.fromJson(json);

      case TelegramPaymentPurposePremiumGiveaway.constructor:
        return TelegramPaymentPurposePremiumGiveaway.fromJson(json);

      case TelegramPaymentPurposeStarGiveaway.constructor:
        return TelegramPaymentPurposeStarGiveaway.fromJson(json);

      case TelegramPaymentPurposeStars.constructor:
        return TelegramPaymentPurposeStars.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user buying Telegram Stars for other users
@immutable
final class TelegramPaymentPurposeGiftedStars extends TelegramPaymentPurpose {
  TelegramPaymentPurposeGiftedStars({
    required this.userId,
    required this.currency,
    required this.amount,
    required this.starCount,
  });

  /// [userId] Identifier of the user to which Telegram Stars are gifted
  final int userId;

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  /// [starCount] Number of bought Telegram Stars
  final int starCount;

  static const String constructor = 'telegramPaymentPurposeGiftedStars';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'currency': currency,
    'amount': amount,
    'star_count': starCount,
    '@type': constructor,
  };

  static TelegramPaymentPurposeGiftedStars? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return TelegramPaymentPurposeGiftedStars(
      userId: (json['user_id'] as int?) ?? 0,
      currency: (json['currency'] as String?) ?? '',
      amount: (json['amount'] as int?) ?? 0,
      starCount: (json['star_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user joins a chat and subscribes to regular payments in Telegram Stars
@immutable
final class TelegramPaymentPurposeJoinChat extends TelegramPaymentPurpose {
  TelegramPaymentPurposeJoinChat({required this.inviteLink});

  /// [inviteLink] Invite link to use
  final String inviteLink;

  static const String constructor = 'telegramPaymentPurposeJoinChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'invite_link': inviteLink,
    '@type': constructor,
  };

  static TelegramPaymentPurposeJoinChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TelegramPaymentPurposeJoinChat(
      inviteLink: (json['invite_link'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user gifting Telegram Premium to another user
@immutable
final class TelegramPaymentPurposePremiumGift extends TelegramPaymentPurpose {
  TelegramPaymentPurposePremiumGift({
    required this.currency,
    required this.amount,
    required this.userId,
    required this.monthCount,
    this.text,
  });

  /// [currency] ISO 4217 currency code of the payment currency, or "XTR" for
  /// payments in Telegram Stars
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  /// [userId] Identifier of the user which will receive Telegram Premium
  final int userId;

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active for the user
  final int monthCount;

  /// [text] Text to show to the user receiving Telegram Premium;
  /// 0-getOption("gift_text_length_max") characters. Only Bold, Italic,
  /// Underline, Strikethrough, Spoiler, CustomEmoji, and DateTime entities are
  /// allowed
  final FormattedText? text;

  static const String constructor = 'telegramPaymentPurposePremiumGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'currency': currency,
    'amount': amount,
    'user_id': userId,
    'month_count': monthCount,
    'text': text?.toJson(),
    '@type': constructor,
  };

  static TelegramPaymentPurposePremiumGift? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return TelegramPaymentPurposePremiumGift(
      currency: (json['currency'] as String?) ?? '',
      amount: (json['amount'] as int?) ?? 0,
      userId: (json['user_id'] as int?) ?? 0,
      monthCount: (json['month_count'] as int?) ?? 0,
      text: FormattedText.fromJson(tdMapFromJson(json['text'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user boosting a chat by creating Telegram Premium gift codes for other
/// users
@immutable
final class TelegramPaymentPurposePremiumGiftCodes
    extends TelegramPaymentPurpose {
  TelegramPaymentPurposePremiumGiftCodes({
    required this.boostedChatId,
    required this.currency,
    required this.amount,
    required this.userIds,
    required this.monthCount,
    this.text,
  });

  /// [boostedChatId] Identifier of the supergroup or channel chat, which will
  /// be automatically boosted by the users for duration of the Premium
  /// subscription and which is administered by the user
  final int boostedChatId;

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  /// [userIds] Identifiers of the users which can activate the gift codes
  final List<int> userIds;

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active for the users
  final int monthCount;

  /// [text] Text to show along with the gift codes;
  /// 0-getOption("gift_text_length_max") characters. Only Bold, Italic,
  /// Underline, Strikethrough, Spoiler, CustomEmoji, and DateTime entities are
  /// allowed
  final FormattedText? text;

  static const String constructor = 'telegramPaymentPurposePremiumGiftCodes';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'boosted_chat_id': boostedChatId,
    'currency': currency,
    'amount': amount,
    'user_ids': userIds.map((item) => item).toList(),
    'month_count': monthCount,
    'text': text?.toJson(),
    '@type': constructor,
  };

  static TelegramPaymentPurposePremiumGiftCodes? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return TelegramPaymentPurposePremiumGiftCodes(
      boostedChatId: (json['boosted_chat_id'] as int?) ?? 0,
      currency: (json['currency'] as String?) ?? '',
      amount: (json['amount'] as int?) ?? 0,
      userIds: List<int>.from(
        tdListFromJson(
          json['user_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      monthCount: (json['month_count'] as int?) ?? 0,
      text: FormattedText.fromJson(tdMapFromJson(json['text'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user creating a Telegram Premium giveaway
@immutable
final class TelegramPaymentPurposePremiumGiveaway
    extends TelegramPaymentPurpose {
  TelegramPaymentPurposePremiumGiveaway({
    this.parameters,
    required this.currency,
    required this.amount,
    required this.winnerCount,
    required this.monthCount,
  });

  /// [parameters] Giveaway parameters
  final GiveawayParameters? parameters;

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  /// [winnerCount] Number of users which will be able to activate the gift
  /// codes
  final int winnerCount;

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active for the users
  final int monthCount;

  static const String constructor = 'telegramPaymentPurposePremiumGiveaway';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'parameters': parameters?.toJson(),
    'currency': currency,
    'amount': amount,
    'winner_count': winnerCount,
    'month_count': monthCount,
    '@type': constructor,
  };

  static TelegramPaymentPurposePremiumGiveaway? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return TelegramPaymentPurposePremiumGiveaway(
      parameters: GiveawayParameters.fromJson(
        tdMapFromJson(json['parameters']),
      ),
      currency: (json['currency'] as String?) ?? '',
      amount: (json['amount'] as int?) ?? 0,
      winnerCount: (json['winner_count'] as int?) ?? 0,
      monthCount: (json['month_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user creating a Telegram Star giveaway
@immutable
final class TelegramPaymentPurposeStarGiveaway extends TelegramPaymentPurpose {
  TelegramPaymentPurposeStarGiveaway({
    this.parameters,
    required this.currency,
    required this.amount,
    required this.winnerCount,
    required this.starCount,
  });

  /// [parameters] Giveaway parameters
  final GiveawayParameters? parameters;

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  /// [winnerCount] The number of users to receive Telegram Stars
  final int winnerCount;

  /// [starCount] The number of Telegram Stars to be distributed through the
  /// giveaway
  final int starCount;

  static const String constructor = 'telegramPaymentPurposeStarGiveaway';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'parameters': parameters?.toJson(),
    'currency': currency,
    'amount': amount,
    'winner_count': winnerCount,
    'star_count': starCount,
    '@type': constructor,
  };

  static TelegramPaymentPurposeStarGiveaway? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return TelegramPaymentPurposeStarGiveaway(
      parameters: GiveawayParameters.fromJson(
        tdMapFromJson(json['parameters']),
      ),
      currency: (json['currency'] as String?) ?? '',
      amount: (json['amount'] as int?) ?? 0,
      winnerCount: (json['winner_count'] as int?) ?? 0,
      starCount: (json['star_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user buying Telegram Stars
@immutable
final class TelegramPaymentPurposeStars extends TelegramPaymentPurpose {
  TelegramPaymentPurposeStars({
    required this.currency,
    required this.amount,
    required this.starCount,
    required this.chatId,
  });

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  /// [starCount] Number of bought Telegram Stars
  final int starCount;

  /// [chatId] Identifier of the chat that is supposed to receive the Telegram
  /// Stars; pass 0 if none
  final int chatId;

  static const String constructor = 'telegramPaymentPurposeStars';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'currency': currency,
    'amount': amount,
    'star_count': starCount,
    'chat_id': chatId,
    '@type': constructor,
  };

  static TelegramPaymentPurposeStars? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TelegramPaymentPurposeStars(
      currency: (json['currency'] as String?) ?? '',
      amount: (json['amount'] as int?) ?? 0,
      starCount: (json['star_count'] as int?) ?? 0,
      chatId: (json['chat_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
