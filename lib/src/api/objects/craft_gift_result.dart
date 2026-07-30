import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains result of gift crafting
@immutable
sealed class CraftGiftResult extends TdObject {
  const CraftGiftResult();

  static const String constructor = 'craftGiftResult';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [CraftGiftResultFail]
  /// [CraftGiftResultInvalidGift]
  /// [CraftGiftResultSuccess]
  /// [CraftGiftResultTooEarly]
  static CraftGiftResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CraftGiftResultFail.constructor:
        return CraftGiftResultFail.fromJson(json);

      case CraftGiftResultInvalidGift.constructor:
        return CraftGiftResultInvalidGift.fromJson(json);

      case CraftGiftResultSuccess.constructor:
        return CraftGiftResultSuccess.fromJson(json);

      case CraftGiftResultTooEarly.constructor:
        return CraftGiftResultTooEarly.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Crafting has failed
@immutable
final class CraftGiftResultFail extends CraftGiftResult {
  const CraftGiftResultFail();

  static const String constructor = 'craftGiftResultFail';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CraftGiftResultFail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CraftGiftResultFail();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Crafting isn't possible because one of the gifts isn't suitable for
/// crafting
@immutable
final class CraftGiftResultInvalidGift extends CraftGiftResult {
  const CraftGiftResultInvalidGift();

  static const String constructor = 'craftGiftResultInvalidGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CraftGiftResultInvalidGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CraftGiftResultInvalidGift();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Crafting was successful
@immutable
final class CraftGiftResultSuccess extends CraftGiftResult {
  CraftGiftResultSuccess({this.gift, required this.receivedGiftId});

  /// [gift] The created gift
  final UpgradedGift? gift;

  /// [receivedGiftId] Unique identifier of the received gift for the current
  /// user
  final String receivedGiftId;

  static const String constructor = 'craftGiftResultSuccess';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift': gift?.toJson(),
    'received_gift_id': receivedGiftId,
    '@type': constructor,
  };

  static CraftGiftResultSuccess? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CraftGiftResultSuccess(
      gift: UpgradedGift.fromJson(tdMapFromJson(json['gift'])),
      receivedGiftId: (json['received_gift_id'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Crafting isn't possible because one of the gifts can't be used for
/// crafting yet
@immutable
final class CraftGiftResultTooEarly extends CraftGiftResult {
  CraftGiftResultTooEarly({required this.retryAfter});

  /// [retryAfter] Time left before the gift can be used for crafting
  final int retryAfter;

  static const String constructor = 'craftGiftResultTooEarly';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'retry_after': retryAfter,
    '@type': constructor,
  };

  static CraftGiftResultTooEarly? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CraftGiftResultTooEarly(
      retryAfter: (json['retry_after'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
