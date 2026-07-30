import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes result of sending a resold gift
@immutable
sealed class GiftResaleResult extends TdObject {
  const GiftResaleResult();

  static const String constructor = 'giftResaleResult';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [GiftResaleResultOk]
  /// [GiftResaleResultPriceIncreased]
  static GiftResaleResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case GiftResaleResultOk.constructor:
        return GiftResaleResultOk.fromJson(json);

      case GiftResaleResultPriceIncreased.constructor:
        return GiftResaleResultPriceIncreased.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Operation was successfully completed
@immutable
final class GiftResaleResultOk extends GiftResaleResult {
  GiftResaleResultOk({required this.receivedGiftId});

  /// [receivedGiftId] Unique identifier of the received gift; only for the
  /// gifts sent to the current user
  final String receivedGiftId;

  static const String constructor = 'giftResaleResultOk';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'received_gift_id': receivedGiftId,
    '@type': constructor,
  };

  static GiftResaleResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftResaleResultOk(
      receivedGiftId: (json['received_gift_id'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Operation has failed, because price has increased. If the price has
/// decreased, then the buying will succeed anyway
@immutable
final class GiftResaleResultPriceIncreased extends GiftResaleResult {
  GiftResaleResultPriceIncreased({this.price});

  /// [price] New price for the gift
  final GiftResalePrice? price;

  static const String constructor = 'giftResaleResultPriceIncreased';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'price': price?.toJson(),
    '@type': constructor,
  };

  static GiftResaleResultPriceIncreased? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftResaleResultPriceIncreased(
      price: GiftResalePrice.fromJson(tdMapFromJson(json['price'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
