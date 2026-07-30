import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of emoji status
@immutable
sealed class EmojiStatusType extends TdObject {
  const EmojiStatusType();

  static const String constructor = 'emojiStatusType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [EmojiStatusTypeCustomEmoji]
  /// [EmojiStatusTypeUpgradedGift]
  static EmojiStatusType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case EmojiStatusTypeCustomEmoji.constructor:
        return EmojiStatusTypeCustomEmoji.fromJson(json);

      case EmojiStatusTypeUpgradedGift.constructor:
        return EmojiStatusTypeUpgradedGift.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A custom emoji set as emoji status
@immutable
final class EmojiStatusTypeCustomEmoji extends EmojiStatusType {
  EmojiStatusTypeCustomEmoji({required this.customEmojiId});

  /// [customEmojiId] Identifier of the custom emoji in stickerFormatTgs format
  final int customEmojiId;

  static const String constructor = 'emojiStatusTypeCustomEmoji';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'custom_emoji_id': customEmojiId.toString(),
    '@type': constructor,
  };

  static EmojiStatusTypeCustomEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiStatusTypeCustomEmoji(
      customEmojiId:
          int.tryParse(
            (json['custom_emoji_id'] as dynamic)?.toString() ?? '',
          ) ??
          0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An upgraded gift set as emoji status
@immutable
final class EmojiStatusTypeUpgradedGift extends EmojiStatusType {
  EmojiStatusTypeUpgradedGift({
    required this.upgradedGiftId,
    required this.giftTitle,
    required this.giftName,
    required this.modelCustomEmojiId,
    required this.symbolCustomEmojiId,
    this.backdropColors,
  });

  /// [upgradedGiftId] Identifier of the upgraded gift
  final int upgradedGiftId;

  /// [giftTitle] The title of the upgraded gift
  final String giftTitle;

  /// [giftName] Unique name of the upgraded gift that can be used with
  /// internalLinkTypeUpgradedGift
  final String giftName;

  /// [modelCustomEmojiId] Custom emoji identifier of the model of the upgraded
  /// gift
  final int modelCustomEmojiId;

  /// [symbolCustomEmojiId] Custom emoji identifier of the symbol of the
  /// upgraded gift
  final int symbolCustomEmojiId;

  /// [backdropColors] Colors of the backdrop of the upgraded gift
  final UpgradedGiftBackdropColors? backdropColors;

  static const String constructor = 'emojiStatusTypeUpgradedGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'upgraded_gift_id': upgradedGiftId.toString(),
    'gift_title': giftTitle,
    'gift_name': giftName,
    'model_custom_emoji_id': modelCustomEmojiId.toString(),
    'symbol_custom_emoji_id': symbolCustomEmojiId.toString(),
    'backdrop_colors': backdropColors?.toJson(),
    '@type': constructor,
  };

  static EmojiStatusTypeUpgradedGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiStatusTypeUpgradedGift(
      upgradedGiftId:
          int.tryParse(
            (json['upgraded_gift_id'] as dynamic)?.toString() ?? '',
          ) ??
          0,
      giftTitle: (json['gift_title'] as String?) ?? '',
      giftName: (json['gift_name'] as String?) ?? '',
      modelCustomEmojiId:
          int.tryParse(
            (json['model_custom_emoji_id'] as dynamic)?.toString() ?? '',
          ) ??
          0,
      symbolCustomEmojiId:
          int.tryParse(
            (json['symbol_custom_emoji_id'] as dynamic)?.toString() ?? '',
          ) ??
          0,
      backdropColors: UpgradedGiftBackdropColors.fromJson(
        tdMapFromJson(json['backdrop_colors']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
