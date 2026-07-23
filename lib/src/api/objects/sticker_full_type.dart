import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains full information about sticker type
@immutable
sealed class StickerFullType extends TdObject {
  const StickerFullType();

  static const String constructor = 'stickerFullType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [StickerFullTypeCustomEmoji]
  /// [StickerFullTypeMask]
  /// [StickerFullTypeRegular]
  static StickerFullType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StickerFullTypeCustomEmoji.constructor:
        return StickerFullTypeCustomEmoji.fromJson(json);

      case StickerFullTypeMask.constructor:
        return StickerFullTypeMask.fromJson(json);

      case StickerFullTypeRegular.constructor:
        return StickerFullTypeRegular.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The sticker is a custom emoji to be used inside message text and caption.
/// Currently, only Telegram Premium users can use custom emoji
@immutable
final class StickerFullTypeCustomEmoji extends StickerFullType {
  StickerFullTypeCustomEmoji({
    required this.customEmojiId,
    required this.needsRepainting,
  });

  /// [customEmojiId] Identifier of the custom emoji
  final int customEmojiId;

  /// [needsRepainting] True, if the sticker must be repainted to a text color
  /// in messages, the color of the Telegram Premium badge in emoji status,
  /// white color on chat photos, or another appropriate color in other places
  final bool needsRepainting;

  static const String constructor = 'stickerFullTypeCustomEmoji';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'custom_emoji_id': customEmojiId.toString(),
    'needs_repainting': needsRepainting,
    '@type': constructor,
  };

  static StickerFullTypeCustomEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StickerFullTypeCustomEmoji(
      customEmojiId:
          int.tryParse(
            (json['custom_emoji_id'] as dynamic)?.toString() ?? '',
          ) ??
          0,
      needsRepainting: (json['needs_repainting'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The sticker is a mask in WEBP format to be placed on photos or videos
@immutable
final class StickerFullTypeMask extends StickerFullType {
  StickerFullTypeMask({this.maskPosition});

  /// [maskPosition] Position where the mask is placed; may be null
  final MaskPosition? maskPosition;

  static const String constructor = 'stickerFullTypeMask';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'mask_position': maskPosition?.toJson(),
    '@type': constructor,
  };

  static StickerFullTypeMask? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StickerFullTypeMask(
      maskPosition: MaskPosition.fromJson(tdMapFromJson(json['mask_position'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The sticker is a regular sticker
@immutable
final class StickerFullTypeRegular extends StickerFullType {
  StickerFullTypeRegular({this.premiumAnimation});

  /// [premiumAnimation] Premium animation of the sticker; may be null. If
  /// present, only Telegram Premium users can use the sticker
  final File? premiumAnimation;

  static const String constructor = 'stickerFullTypeRegular';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'premium_animation': premiumAnimation?.toJson(),
    '@type': constructor,
  };

  static StickerFullTypeRegular? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StickerFullTypeRegular(
      premiumAnimation: File.fromJson(tdMapFromJson(json['premium_animation'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
