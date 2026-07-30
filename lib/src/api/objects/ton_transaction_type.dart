import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of transaction with TON Grams
@immutable
sealed class TonTransactionType extends TdObject {
  const TonTransactionType();

  static const String constructor = 'tonTransactionType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [TonTransactionTypeFragmentDeposit]
  /// [TonTransactionTypeFragmentWithdrawal]
  /// [TonTransactionTypeGiftPurchaseOffer]
  /// [TonTransactionTypeStakeDicePayout]
  /// [TonTransactionTypeStakeDiceStake]
  /// [TonTransactionTypeSuggestedPostPayment]
  /// [TonTransactionTypeUnsupported]
  /// [TonTransactionTypeUpgradedGiftPurchase]
  /// [TonTransactionTypeUpgradedGiftSale]
  static TonTransactionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case TonTransactionTypeFragmentDeposit.constructor:
        return TonTransactionTypeFragmentDeposit.fromJson(json);

      case TonTransactionTypeFragmentWithdrawal.constructor:
        return TonTransactionTypeFragmentWithdrawal.fromJson(json);

      case TonTransactionTypeGiftPurchaseOffer.constructor:
        return TonTransactionTypeGiftPurchaseOffer.fromJson(json);

      case TonTransactionTypeStakeDicePayout.constructor:
        return TonTransactionTypeStakeDicePayout.fromJson(json);

      case TonTransactionTypeStakeDiceStake.constructor:
        return TonTransactionTypeStakeDiceStake.fromJson(json);

      case TonTransactionTypeSuggestedPostPayment.constructor:
        return TonTransactionTypeSuggestedPostPayment.fromJson(json);

      case TonTransactionTypeUnsupported.constructor:
        return TonTransactionTypeUnsupported.fromJson(json);

      case TonTransactionTypeUpgradedGiftPurchase.constructor:
        return TonTransactionTypeUpgradedGiftPurchase.fromJson(json);

      case TonTransactionTypeUpgradedGiftSale.constructor:
        return TonTransactionTypeUpgradedGiftSale.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a deposit of Grams from Fragment
@immutable
final class TonTransactionTypeFragmentDeposit extends TonTransactionType {
  TonTransactionTypeFragmentDeposit({required this.isGift, this.sticker});

  /// [isGift] True, if the transaction is a gift from another user
  final bool isGift;

  /// [sticker] The sticker to be shown in the transaction information; may be
  /// null if unknown
  final Sticker? sticker;

  static const String constructor = 'tonTransactionTypeFragmentDeposit';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_gift': isGift,
    'sticker': sticker?.toJson(),
    '@type': constructor,
  };

  static TonTransactionTypeFragmentDeposit? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return TonTransactionTypeFragmentDeposit(
      isGift: (json['is_gift'] as bool?) ?? false,
      sticker: Sticker.fromJson(tdMapFromJson(json['sticker'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a withdrawal of earned Grams to Fragment
@immutable
final class TonTransactionTypeFragmentWithdrawal extends TonTransactionType {
  TonTransactionTypeFragmentWithdrawal({this.withdrawalState});

  /// [withdrawalState] State of the withdrawal; may be null for refunds from
  /// Fragment
  final RevenueWithdrawalState? withdrawalState;

  static const String constructor = 'tonTransactionTypeFragmentWithdrawal';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'withdrawal_state': withdrawalState?.toJson(),
    '@type': constructor,
  };

  static TonTransactionTypeFragmentWithdrawal? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return TonTransactionTypeFragmentWithdrawal(
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

/// The transaction is an offer of gift purchase
@immutable
final class TonTransactionTypeGiftPurchaseOffer extends TonTransactionType {
  TonTransactionTypeGiftPurchaseOffer({this.gift});

  /// [gift] The gift
  final UpgradedGift? gift;

  static const String constructor = 'tonTransactionTypeGiftPurchaseOffer';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift': gift?.toJson(),
    '@type': constructor,
  };

  static TonTransactionTypeGiftPurchaseOffer? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return TonTransactionTypeGiftPurchaseOffer(
      gift: UpgradedGift.fromJson(tdMapFromJson(json['gift'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a payment for successful stake dice throw
@immutable
final class TonTransactionTypeStakeDicePayout extends TonTransactionType {
  const TonTransactionTypeStakeDicePayout();

  static const String constructor = 'tonTransactionTypeStakeDicePayout';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TonTransactionTypeStakeDicePayout? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const TonTransactionTypeStakeDicePayout();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a payment for stake dice throw
@immutable
final class TonTransactionTypeStakeDiceStake extends TonTransactionType {
  const TonTransactionTypeStakeDiceStake();

  static const String constructor = 'tonTransactionTypeStakeDiceStake';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TonTransactionTypeStakeDiceStake? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const TonTransactionTypeStakeDiceStake();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a payment for a suggested post
@immutable
final class TonTransactionTypeSuggestedPostPayment extends TonTransactionType {
  TonTransactionTypeSuggestedPostPayment({required this.chatId});

  /// [chatId] Identifier of the channel chat that posted the post
  final int chatId;

  static const String constructor = 'tonTransactionTypeSuggestedPostPayment';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    '@type': constructor,
  };

  static TonTransactionTypeSuggestedPostPayment? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return TonTransactionTypeSuggestedPostPayment(
      chatId: (json['chat_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a transaction of an unsupported type
@immutable
final class TonTransactionTypeUnsupported extends TonTransactionType {
  const TonTransactionTypeUnsupported();

  static const String constructor = 'tonTransactionTypeUnsupported';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TonTransactionTypeUnsupported? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TonTransactionTypeUnsupported();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a purchase of an upgraded gift for some user or channel
@immutable
final class TonTransactionTypeUpgradedGiftPurchase extends TonTransactionType {
  TonTransactionTypeUpgradedGiftPurchase({required this.userId, this.gift});

  /// [userId] Identifier of the user who sold the gift
  final int userId;

  /// [gift] The gift
  final UpgradedGift? gift;

  static const String constructor = 'tonTransactionTypeUpgradedGiftPurchase';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'gift': gift?.toJson(),
    '@type': constructor,
  };

  static TonTransactionTypeUpgradedGiftPurchase? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return TonTransactionTypeUpgradedGiftPurchase(
      userId: (json['user_id'] as int?) ?? 0,
      gift: UpgradedGift.fromJson(tdMapFromJson(json['gift'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The transaction is a sale of an upgraded gift
@immutable
final class TonTransactionTypeUpgradedGiftSale extends TonTransactionType {
  TonTransactionTypeUpgradedGiftSale({
    required this.userId,
    this.gift,
    required this.commissionPerMille,
    required this.commissionGramAmount,
    required this.viaOffer,
  });

  /// [userId] Identifier of the user who bought the gift
  final int userId;

  /// [gift] The gift
  final UpgradedGift? gift;

  /// [commissionPerMille] The number of Grams received by the Telegram for each
  /// 1000 Grams received by the seller of the gift
  final int commissionPerMille;

  /// [commissionGramAmount] The Gram amount that was received by the Telegram;
  /// in the smallest units of the currency
  final int commissionGramAmount;

  /// [viaOffer] True, if the gift was sold through a purchase offer
  final bool viaOffer;

  static const String constructor = 'tonTransactionTypeUpgradedGiftSale';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'gift': gift?.toJson(),
    'commission_per_mille': commissionPerMille,
    'commission_gram_amount': commissionGramAmount,
    'via_offer': viaOffer,
    '@type': constructor,
  };

  static TonTransactionTypeUpgradedGiftSale? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return TonTransactionTypeUpgradedGiftSale(
      userId: (json['user_id'] as int?) ?? 0,
      gift: UpgradedGift.fromJson(tdMapFromJson(json['gift'])),
      commissionPerMille: (json['commission_per_mille'] as int?) ?? 0,
      commissionGramAmount: (json['commission_gram_amount'] as int?) ?? 0,
      viaOffer: (json['via_offer'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
