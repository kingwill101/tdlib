import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes origin from which the upgraded gift was obtained
@immutable
sealed class UpgradedGiftOrigin extends TdObject {
  const UpgradedGiftOrigin();

  static const String constructor = 'upgradedGiftOrigin';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [UpgradedGiftOriginBlockchain]
  /// [UpgradedGiftOriginCraft]
  /// [UpgradedGiftOriginOffer]
  /// [UpgradedGiftOriginPrepaidUpgrade]
  /// [UpgradedGiftOriginResale]
  /// [UpgradedGiftOriginTransfer]
  /// [UpgradedGiftOriginUpgrade]
  static UpgradedGiftOrigin? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case UpgradedGiftOriginBlockchain.constructor:
        return UpgradedGiftOriginBlockchain.fromJson(json);

      case UpgradedGiftOriginCraft.constructor:
        return UpgradedGiftOriginCraft.fromJson(json);

      case UpgradedGiftOriginOffer.constructor:
        return UpgradedGiftOriginOffer.fromJson(json);

      case UpgradedGiftOriginPrepaidUpgrade.constructor:
        return UpgradedGiftOriginPrepaidUpgrade.fromJson(json);

      case UpgradedGiftOriginResale.constructor:
        return UpgradedGiftOriginResale.fromJson(json);

      case UpgradedGiftOriginTransfer.constructor:
        return UpgradedGiftOriginTransfer.fromJson(json);

      case UpgradedGiftOriginUpgrade.constructor:
        return UpgradedGiftOriginUpgrade.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The gift was assigned from blockchain and isn't owned by the current user.
/// The gift can't be transferred, resold or withdrawn to blockchain
@immutable
final class UpgradedGiftOriginBlockchain extends UpgradedGiftOrigin {
  const UpgradedGiftOriginBlockchain();

  static const String constructor = 'upgradedGiftOriginBlockchain';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UpgradedGiftOriginBlockchain? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UpgradedGiftOriginBlockchain();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The gift was crafted from other gifts
@immutable
final class UpgradedGiftOriginCraft extends UpgradedGiftOrigin {
  const UpgradedGiftOriginCraft();

  static const String constructor = 'upgradedGiftOriginCraft';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UpgradedGiftOriginCraft? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UpgradedGiftOriginCraft();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The gift was bought through an offer
@immutable
final class UpgradedGiftOriginOffer extends UpgradedGiftOrigin {
  UpgradedGiftOriginOffer({this.price});

  /// [price] Price paid for the gift
  final GiftResalePrice? price;

  static const String constructor = 'upgradedGiftOriginOffer';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'price': price?.toJson(),
    '@type': constructor,
  };

  static UpgradedGiftOriginOffer? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftOriginOffer(
      price: GiftResalePrice.fromJson(tdMapFromJson(json['price'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The sender or receiver of the message has paid for upgraid of the gift,
/// which has been completed
@immutable
final class UpgradedGiftOriginPrepaidUpgrade extends UpgradedGiftOrigin {
  const UpgradedGiftOriginPrepaidUpgrade();

  static const String constructor = 'upgradedGiftOriginPrepaidUpgrade';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UpgradedGiftOriginPrepaidUpgrade? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const UpgradedGiftOriginPrepaidUpgrade();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The gift was bought from another user
@immutable
final class UpgradedGiftOriginResale extends UpgradedGiftOrigin {
  UpgradedGiftOriginResale({this.price});

  /// [price] Price paid for the gift
  final GiftResalePrice? price;

  static const String constructor = 'upgradedGiftOriginResale';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'price': price?.toJson(),
    '@type': constructor,
  };

  static UpgradedGiftOriginResale? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftOriginResale(
      price: GiftResalePrice.fromJson(tdMapFromJson(json['price'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The gift was transferred from another owner
@immutable
final class UpgradedGiftOriginTransfer extends UpgradedGiftOrigin {
  const UpgradedGiftOriginTransfer();

  static const String constructor = 'upgradedGiftOriginTransfer';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UpgradedGiftOriginTransfer? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UpgradedGiftOriginTransfer();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The gift was obtained by upgrading of a previously received gift
@immutable
final class UpgradedGiftOriginUpgrade extends UpgradedGiftOrigin {
  UpgradedGiftOriginUpgrade({required this.giftMessageId});

  /// [giftMessageId] Identifier of the message with the regular gift that was
  /// upgraded; may be 0 or an identifier of a deleted message
  final int giftMessageId;

  static const String constructor = 'upgradedGiftOriginUpgrade';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift_message_id': giftMessageId,
    '@type': constructor,
  };

  static UpgradedGiftOriginUpgrade? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftOriginUpgrade(
      giftMessageId: (json['gift_message_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
