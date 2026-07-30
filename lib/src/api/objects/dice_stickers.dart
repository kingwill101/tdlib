import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains animated stickers which must be used for dice animation rendering
@immutable
sealed class DiceStickers extends TdObject {
  const DiceStickers();

  static const String constructor = 'diceStickers';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [DiceStickersRegular]
  /// [DiceStickersSlotMachine]
  static DiceStickers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case DiceStickersRegular.constructor:
        return DiceStickersRegular.fromJson(json);

      case DiceStickersSlotMachine.constructor:
        return DiceStickersSlotMachine.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A regular animated sticker
@immutable
final class DiceStickersRegular extends DiceStickers {
  DiceStickersRegular({this.sticker});

  /// [sticker] The animated sticker with the dice animation
  final Sticker? sticker;

  static const String constructor = 'diceStickersRegular';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sticker': sticker?.toJson(),
    '@type': constructor,
  };

  static DiceStickersRegular? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DiceStickersRegular(
      sticker: Sticker.fromJson(tdMapFromJson(json['sticker'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Animated stickers to be combined into a slot machine
@immutable
final class DiceStickersSlotMachine extends DiceStickers {
  DiceStickersSlotMachine({
    this.background,
    this.lever,
    this.leftReel,
    this.centerReel,
    this.rightReel,
  });

  /// [background] The animated sticker with the slot machine background. The
  /// background animation must start playing after all reel animations finish
  final Sticker? background;

  /// [lever] The animated sticker with the lever animation. The lever animation
  /// must play once in the initial dice state
  final Sticker? lever;

  /// [leftReel] The animated sticker with the left reel
  final Sticker? leftReel;

  /// [centerReel] The animated sticker with the center reel
  final Sticker? centerReel;

  /// [rightReel] The animated sticker with the right reel
  final Sticker? rightReel;

  static const String constructor = 'diceStickersSlotMachine';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'background': background?.toJson(),
    'lever': lever?.toJson(),
    'left_reel': leftReel?.toJson(),
    'center_reel': centerReel?.toJson(),
    'right_reel': rightReel?.toJson(),
    '@type': constructor,
  };

  static DiceStickersSlotMachine? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DiceStickersSlotMachine(
      background: Sticker.fromJson(tdMapFromJson(json['background'])),
      lever: Sticker.fromJson(tdMapFromJson(json['lever'])),
      leftReel: Sticker.fromJson(tdMapFromJson(json['left_reel'])),
      centerReel: Sticker.fromJson(tdMapFromJson(json['center_reel'])),
      rightReel: Sticker.fromJson(tdMapFromJson(json['right_reel'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
