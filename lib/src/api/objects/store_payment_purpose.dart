import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a purpose of an in-store payment
@immutable
sealed class StorePaymentPurpose extends TdObject {
  const StorePaymentPurpose();

  static const String constructor = 'storePaymentPurpose';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [StorePaymentPurposeGiftedStars]
  /// [StorePaymentPurposePremiumGift]
  /// [StorePaymentPurposePremiumGiftCodes]
  /// [StorePaymentPurposePremiumGiveaway]
  /// [StorePaymentPurposePremiumSubscription]
  /// [StorePaymentPurposeStarGiveaway]
  /// [StorePaymentPurposeStars]
  static StorePaymentPurpose? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StorePaymentPurposeGiftedStars.constructor:
        return StorePaymentPurposeGiftedStars.fromJson(json);

      case StorePaymentPurposePremiumGift.constructor:
        return StorePaymentPurposePremiumGift.fromJson(json);

      case StorePaymentPurposePremiumGiftCodes.constructor:
        return StorePaymentPurposePremiumGiftCodes.fromJson(json);

      case StorePaymentPurposePremiumGiveaway.constructor:
        return StorePaymentPurposePremiumGiveaway.fromJson(json);

      case StorePaymentPurposePremiumSubscription.constructor:
        return StorePaymentPurposePremiumSubscription.fromJson(json);

      case StorePaymentPurposeStarGiveaway.constructor:
        return StorePaymentPurposeStarGiveaway.fromJson(json);

      case StorePaymentPurposeStars.constructor:
        return StorePaymentPurposeStars.fromJson(json);

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
final class StorePaymentPurposeGiftedStars extends StorePaymentPurpose {
  StorePaymentPurposeGiftedStars({
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

  static const String constructor = 'storePaymentPurposeGiftedStars';

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

  static StorePaymentPurposeGiftedStars? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StorePaymentPurposeGiftedStars(
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

/// The user gifting Telegram Premium to another user
@immutable
final class StorePaymentPurposePremiumGift extends StorePaymentPurpose {
  StorePaymentPurposePremiumGift({
    required this.currency,
    required this.amount,
    required this.userId,
    this.text,
  });

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  /// [userId] Identifiers of the user which will receive Telegram Premium
  final int userId;

  /// [text] Text to show along with the gift codes;
  /// 0-getOption("gift_text_length_max") characters. Only Bold, Italic,
  /// Underline, Strikethrough, Spoiler, CustomEmoji, and DateTime entities are
  /// allowed
  final FormattedText? text;

  static const String constructor = 'storePaymentPurposePremiumGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'currency': currency,
    'amount': amount,
    'user_id': userId,
    'text': text?.toJson(),
    '@type': constructor,
  };

  static StorePaymentPurposePremiumGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StorePaymentPurposePremiumGift(
      currency: (json['currency'] as String?) ?? '',
      amount: (json['amount'] as int?) ?? 0,
      userId: (json['user_id'] as int?) ?? 0,
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
final class StorePaymentPurposePremiumGiftCodes extends StorePaymentPurpose {
  StorePaymentPurposePremiumGiftCodes({
    required this.boostedChatId,
    required this.currency,
    required this.amount,
    required this.userIds,
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

  /// [text] Text to show along with the gift codes;
  /// 0-getOption("gift_text_length_max") characters. Only Bold, Italic,
  /// Underline, Strikethrough, Spoiler, CustomEmoji, and DateTime entities are
  /// allowed
  final FormattedText? text;

  static const String constructor = 'storePaymentPurposePremiumGiftCodes';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'boosted_chat_id': boostedChatId,
    'currency': currency,
    'amount': amount,
    'user_ids': userIds.map((item) => item).toList(),
    'text': text?.toJson(),
    '@type': constructor,
  };

  static StorePaymentPurposePremiumGiftCodes? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StorePaymentPurposePremiumGiftCodes(
      boostedChatId: (json['boosted_chat_id'] as int?) ?? 0,
      currency: (json['currency'] as String?) ?? '',
      amount: (json['amount'] as int?) ?? 0,
      userIds: List<int>.from(
        tdListFromJson(
          json['user_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
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
final class StorePaymentPurposePremiumGiveaway extends StorePaymentPurpose {
  StorePaymentPurposePremiumGiveaway({
    this.parameters,
    required this.currency,
    required this.amount,
  });

  /// [parameters] Giveaway parameters
  final GiveawayParameters? parameters;

  /// [currency] ISO 4217 currency code of the payment currency
  final String currency;

  /// [amount] Paid amount, in the smallest units of the currency
  final int amount;

  static const String constructor = 'storePaymentPurposePremiumGiveaway';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'parameters': parameters?.toJson(),
    'currency': currency,
    'amount': amount,
    '@type': constructor,
  };

  static StorePaymentPurposePremiumGiveaway? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StorePaymentPurposePremiumGiveaway(
      parameters: GiveawayParameters.fromJson(
        tdMapFromJson(json['parameters']),
      ),
      currency: (json['currency'] as String?) ?? '',
      amount: (json['amount'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user subscribing to Telegram Premium
@immutable
final class StorePaymentPurposePremiumSubscription extends StorePaymentPurpose {
  StorePaymentPurposePremiumSubscription({
    required this.isRestore,
    required this.isUpgrade,
  });

  /// [isRestore] Pass true if this is a restore of a Telegram Premium purchase;
  /// only for App Store
  final bool isRestore;

  /// [isUpgrade] Pass true if this is an upgrade from a monthly subscription to
  /// early subscription; only for App Store
  final bool isUpgrade;

  static const String constructor = 'storePaymentPurposePremiumSubscription';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_restore': isRestore,
    'is_upgrade': isUpgrade,
    '@type': constructor,
  };

  static StorePaymentPurposePremiumSubscription? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StorePaymentPurposePremiumSubscription(
      isRestore: (json['is_restore'] as bool?) ?? false,
      isUpgrade: (json['is_upgrade'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user creating a Telegram Star giveaway
@immutable
final class StorePaymentPurposeStarGiveaway extends StorePaymentPurpose {
  StorePaymentPurposeStarGiveaway({
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

  static const String constructor = 'storePaymentPurposeStarGiveaway';

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

  static StorePaymentPurposeStarGiveaway? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StorePaymentPurposeStarGiveaway(
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
final class StorePaymentPurposeStars extends StorePaymentPurpose {
  StorePaymentPurposeStars({
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

  static const String constructor = 'storePaymentPurposeStars';

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

  static StorePaymentPurposeStars? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StorePaymentPurposeStars(
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
