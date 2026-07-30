import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents content of a gift received by a user or a channel chat
@immutable
sealed class SentGift extends TdObject {
  const SentGift();

  static const String constructor = 'sentGift';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [SentGiftRegular]
  /// [SentGiftUpgraded]
  static SentGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SentGiftRegular.constructor:
        return SentGiftRegular.fromJson(json);

      case SentGiftUpgraded.constructor:
        return SentGiftUpgraded.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Regular gift
@immutable
final class SentGiftRegular extends SentGift {
  SentGiftRegular({this.gift});

  /// [gift] The gift
  final Gift? gift;

  static const String constructor = 'sentGiftRegular';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift': gift?.toJson(),
    '@type': constructor,
  };

  static SentGiftRegular? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SentGiftRegular(gift: Gift.fromJson(tdMapFromJson(json['gift'])));
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Upgraded gift
@immutable
final class SentGiftUpgraded extends SentGift {
  SentGiftUpgraded({this.gift});

  /// [gift] The gift
  final UpgradedGift? gift;

  static const String constructor = 'sentGiftUpgraded';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift': gift?.toJson(),
    '@type': constructor,
  };

  static SentGiftUpgraded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SentGiftUpgraded(
      gift: UpgradedGift.fromJson(tdMapFromJson(json['gift'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
