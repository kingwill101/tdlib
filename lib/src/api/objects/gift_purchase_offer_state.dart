import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes state of a gift purchase offer
@immutable
sealed class GiftPurchaseOfferState extends TdObject {
  const GiftPurchaseOfferState();

  static const String constructor = 'giftPurchaseOfferState';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [GiftPurchaseOfferStateAccepted]
  /// [GiftPurchaseOfferStatePending]
  /// [GiftPurchaseOfferStateRejected]
  static GiftPurchaseOfferState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case GiftPurchaseOfferStateAccepted.constructor:
        return GiftPurchaseOfferStateAccepted.fromJson(json);

      case GiftPurchaseOfferStatePending.constructor:
        return GiftPurchaseOfferStatePending.fromJson(json);

      case GiftPurchaseOfferStateRejected.constructor:
        return GiftPurchaseOfferStateRejected.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The offer was accepted
@immutable
final class GiftPurchaseOfferStateAccepted extends GiftPurchaseOfferState {
  const GiftPurchaseOfferStateAccepted();

  static const String constructor = 'giftPurchaseOfferStateAccepted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static GiftPurchaseOfferStateAccepted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GiftPurchaseOfferStateAccepted();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The offer must be accepted or rejected
@immutable
final class GiftPurchaseOfferStatePending extends GiftPurchaseOfferState {
  const GiftPurchaseOfferStatePending();

  static const String constructor = 'giftPurchaseOfferStatePending';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static GiftPurchaseOfferStatePending? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GiftPurchaseOfferStatePending();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The offer was rejected
@immutable
final class GiftPurchaseOfferStateRejected extends GiftPurchaseOfferState {
  const GiftPurchaseOfferStateRejected();

  static const String constructor = 'giftPurchaseOfferStateRejected';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static GiftPurchaseOfferStateRejected? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GiftPurchaseOfferStateRejected();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
