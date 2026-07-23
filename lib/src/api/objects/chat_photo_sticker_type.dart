import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of sticker, which was used to create a chat photo
@immutable
sealed class ChatPhotoStickerType extends TdObject {
  const ChatPhotoStickerType();

  static const String constructor = 'chatPhotoStickerType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ChatPhotoStickerTypeCustomEmoji]
  /// [ChatPhotoStickerTypeRegularOrMask]
  static ChatPhotoStickerType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatPhotoStickerTypeCustomEmoji.constructor:
        return ChatPhotoStickerTypeCustomEmoji.fromJson(json);

      case ChatPhotoStickerTypeRegularOrMask.constructor:
        return ChatPhotoStickerTypeRegularOrMask.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Information about the custom emoji, which was used to create the chat
/// photo
@immutable
final class ChatPhotoStickerTypeCustomEmoji extends ChatPhotoStickerType {
  ChatPhotoStickerTypeCustomEmoji({required this.customEmojiId});

  /// [customEmojiId] Identifier of the custom emoji
  final int customEmojiId;

  static const String constructor = 'chatPhotoStickerTypeCustomEmoji';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'custom_emoji_id': customEmojiId.toString(),
    '@type': constructor,
  };

  static ChatPhotoStickerTypeCustomEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatPhotoStickerTypeCustomEmoji(
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

/// Information about the sticker, which was used to create the chat photo
@immutable
final class ChatPhotoStickerTypeRegularOrMask extends ChatPhotoStickerType {
  ChatPhotoStickerTypeRegularOrMask({
    required this.stickerSetId,
    required this.stickerId,
  });

  /// [stickerSetId] Sticker set identifier
  final int stickerSetId;

  /// [stickerId] Identifier of the sticker in the set
  final int stickerId;

  static const String constructor = 'chatPhotoStickerTypeRegularOrMask';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sticker_set_id': stickerSetId.toString(),
    'sticker_id': stickerId.toString(),
    '@type': constructor,
  };

  static ChatPhotoStickerTypeRegularOrMask? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatPhotoStickerTypeRegularOrMask(
      stickerSetId:
          int.tryParse((json['sticker_set_id'] as dynamic)?.toString() ?? '') ??
          0,
      stickerId:
          int.tryParse((json['sticker_id'] as dynamic)?.toString() ?? '') ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
