import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes order in which upgraded gifts for resale will be sorted
@immutable
sealed class GiftForResaleOrder extends TdObject {
  const GiftForResaleOrder();

  static const String constructor = 'giftForResaleOrder';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [GiftForResaleOrderNumber]
  /// [GiftForResaleOrderPrice]
  /// [GiftForResaleOrderPriceChangeDate]
  static GiftForResaleOrder? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case GiftForResaleOrderNumber.constructor:
        return GiftForResaleOrderNumber.fromJson(json);

      case GiftForResaleOrderPrice.constructor:
        return GiftForResaleOrderPrice.fromJson(json);

      case GiftForResaleOrderPriceChangeDate.constructor:
        return GiftForResaleOrderPriceChangeDate.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The gifts will be sorted by their number from the smallest to the largest
@immutable
final class GiftForResaleOrderNumber extends GiftForResaleOrder {
  const GiftForResaleOrderNumber();

  static const String constructor = 'giftForResaleOrderNumber';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static GiftForResaleOrderNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GiftForResaleOrderNumber();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The gifts will be sorted by their price from the lowest to the highest
@immutable
final class GiftForResaleOrderPrice extends GiftForResaleOrder {
  const GiftForResaleOrderPrice();

  static const String constructor = 'giftForResaleOrderPrice';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static GiftForResaleOrderPrice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GiftForResaleOrderPrice();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The gifts will be sorted by the last date when their price was changed
/// from the newest to the oldest
@immutable
final class GiftForResaleOrderPriceChangeDate extends GiftForResaleOrder {
  const GiftForResaleOrderPriceChangeDate();

  static const String constructor = 'giftForResaleOrderPriceChangeDate';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static GiftForResaleOrderPriceChangeDate? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const GiftForResaleOrderPriceChangeDate();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
