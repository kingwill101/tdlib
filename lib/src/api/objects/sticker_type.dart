import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of sticker
@immutable
sealed class StickerType extends TdObject {
  const StickerType();

  static const String constructor = 'stickerType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [StickerTypeCustomEmoji]
  /// [StickerTypeMask]
  /// [StickerTypeRegular]
  static StickerType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StickerTypeCustomEmoji.constructor:
        return StickerTypeCustomEmoji.fromJson(json);

      case StickerTypeMask.constructor:
        return StickerTypeMask.fromJson(json);

      case StickerTypeRegular.constructor:
        return StickerTypeRegular.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The sticker is a custom emoji to be used inside message text and caption
@immutable
final class StickerTypeCustomEmoji extends StickerType {
  const StickerTypeCustomEmoji();

  static const String constructor = 'stickerTypeCustomEmoji';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static StickerTypeCustomEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StickerTypeCustomEmoji();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The sticker is a mask in WEBP format to be placed on photos or videos
@immutable
final class StickerTypeMask extends StickerType {
  const StickerTypeMask();

  static const String constructor = 'stickerTypeMask';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static StickerTypeMask? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StickerTypeMask();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The sticker is a regular sticker
@immutable
final class StickerTypeRegular extends StickerType {
  const StickerTypeRegular();

  static const String constructor = 'stickerTypeRegular';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static StickerTypeRegular? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StickerTypeRegular();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
