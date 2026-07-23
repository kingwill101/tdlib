import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes format of a thumbnail
@immutable
sealed class ThumbnailFormat extends TdObject {
  const ThumbnailFormat();

  static const String constructor = 'thumbnailFormat';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ThumbnailFormatGif]
  /// [ThumbnailFormatJpeg]
  /// [ThumbnailFormatMpeg4]
  /// [ThumbnailFormatPng]
  /// [ThumbnailFormatTgs]
  /// [ThumbnailFormatWebm]
  /// [ThumbnailFormatWebp]
  static ThumbnailFormat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ThumbnailFormatGif.constructor:
        return ThumbnailFormatGif.fromJson(json);

      case ThumbnailFormatJpeg.constructor:
        return ThumbnailFormatJpeg.fromJson(json);

      case ThumbnailFormatMpeg4.constructor:
        return ThumbnailFormatMpeg4.fromJson(json);

      case ThumbnailFormatPng.constructor:
        return ThumbnailFormatPng.fromJson(json);

      case ThumbnailFormatTgs.constructor:
        return ThumbnailFormatTgs.fromJson(json);

      case ThumbnailFormatWebm.constructor:
        return ThumbnailFormatWebm.fromJson(json);

      case ThumbnailFormatWebp.constructor:
        return ThumbnailFormatWebp.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The thumbnail is in static GIF format. It will be used only for some bot
/// inline query results
@immutable
final class ThumbnailFormatGif extends ThumbnailFormat {
  const ThumbnailFormatGif();

  static const String constructor = 'thumbnailFormatGif';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ThumbnailFormatGif? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ThumbnailFormatGif();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The thumbnail is in JPEG format
@immutable
final class ThumbnailFormatJpeg extends ThumbnailFormat {
  const ThumbnailFormatJpeg();

  static const String constructor = 'thumbnailFormatJpeg';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ThumbnailFormatJpeg? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ThumbnailFormatJpeg();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The thumbnail is in MPEG4 format. It will be used only for some animations
/// and videos
@immutable
final class ThumbnailFormatMpeg4 extends ThumbnailFormat {
  const ThumbnailFormatMpeg4();

  static const String constructor = 'thumbnailFormatMpeg4';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ThumbnailFormatMpeg4? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ThumbnailFormatMpeg4();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The thumbnail is in PNG format. It will be used only for background
/// patterns
@immutable
final class ThumbnailFormatPng extends ThumbnailFormat {
  const ThumbnailFormatPng();

  static const String constructor = 'thumbnailFormatPng';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ThumbnailFormatPng? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ThumbnailFormatPng();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The thumbnail is in TGS format. It will be used only for sticker sets
@immutable
final class ThumbnailFormatTgs extends ThumbnailFormat {
  const ThumbnailFormatTgs();

  static const String constructor = 'thumbnailFormatTgs';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ThumbnailFormatTgs? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ThumbnailFormatTgs();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The thumbnail is in WEBM format. It will be used only for sticker sets
@immutable
final class ThumbnailFormatWebm extends ThumbnailFormat {
  const ThumbnailFormatWebm();

  static const String constructor = 'thumbnailFormatWebm';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ThumbnailFormatWebm? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ThumbnailFormatWebm();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The thumbnail is in WEBP format. It will be used only for some stickers
/// and sticker sets
@immutable
final class ThumbnailFormatWebp extends ThumbnailFormat {
  const ThumbnailFormatWebp();

  static const String constructor = 'thumbnailFormatWebp';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ThumbnailFormatWebp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ThumbnailFormatWebp();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
