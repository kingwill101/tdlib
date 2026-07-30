import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes format of a sticker
@immutable
sealed class StickerFormat extends TdObject {
  const StickerFormat();

  static const String constructor = 'stickerFormat';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [StickerFormatTgs]
  /// [StickerFormatWebm]
  /// [StickerFormatWebp]
  static StickerFormat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StickerFormatTgs.constructor:
        return StickerFormatTgs.fromJson(json);

      case StickerFormatWebm.constructor:
        return StickerFormatWebm.fromJson(json);

      case StickerFormatWebp.constructor:
        return StickerFormatWebp.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The sticker is an animation in TGS format
@immutable
final class StickerFormatTgs extends StickerFormat {
  const StickerFormatTgs();

  static const String constructor = 'stickerFormatTgs';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static StickerFormatTgs? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StickerFormatTgs();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The sticker is a video in WEBM format
@immutable
final class StickerFormatWebm extends StickerFormat {
  const StickerFormatWebm();

  static const String constructor = 'stickerFormatWebm';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static StickerFormatWebm? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StickerFormatWebm();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The sticker is an image in WEBP format
@immutable
final class StickerFormatWebp extends StickerFormat {
  const StickerFormatWebp();

  static const String constructor = 'stickerFormatWebp';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static StickerFormatWebp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StickerFormatWebp();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
