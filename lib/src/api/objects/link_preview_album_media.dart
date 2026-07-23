import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a media from a link preview album
@immutable
sealed class LinkPreviewAlbumMedia extends TdObject {
  const LinkPreviewAlbumMedia();

  static const String constructor = 'linkPreviewAlbumMedia';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [LinkPreviewAlbumMediaPhoto]
  /// [LinkPreviewAlbumMediaVideo]
  static LinkPreviewAlbumMedia? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case LinkPreviewAlbumMediaPhoto.constructor:
        return LinkPreviewAlbumMediaPhoto.fromJson(json);

      case LinkPreviewAlbumMediaVideo.constructor:
        return LinkPreviewAlbumMediaVideo.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The media is a photo
@immutable
final class LinkPreviewAlbumMediaPhoto extends LinkPreviewAlbumMedia {
  LinkPreviewAlbumMediaPhoto({this.photo});

  /// [photo] Photo description
  final Photo? photo;

  static const String constructor = 'linkPreviewAlbumMediaPhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'photo': photo?.toJson(),
    '@type': constructor,
  };

  static LinkPreviewAlbumMediaPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewAlbumMediaPhoto(
      photo: Photo.fromJson(tdMapFromJson(json['photo'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The media is a video
@immutable
final class LinkPreviewAlbumMediaVideo extends LinkPreviewAlbumMedia {
  LinkPreviewAlbumMediaVideo({this.video});

  /// [video] Video description
  final Video? video;

  static const String constructor = 'linkPreviewAlbumMediaVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'video': video?.toJson(),
    '@type': constructor,
  };

  static LinkPreviewAlbumMediaVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewAlbumMediaVideo(
      video: Video.fromJson(tdMapFromJson(json['video'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
