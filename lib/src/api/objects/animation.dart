import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an animation file. The animation must be encoded in GIF or MPEG4
/// format
@immutable
final class Animation extends TdObject {
  Animation({
    required this.duration,
    required this.width,
    required this.height,
    required this.fileName,
    required this.mimeType,
    required this.hasStickers,
    this.minithumbnail,
    this.thumbnail,
    this.animation,
  });

  /// [duration] Duration of the animation, in seconds; as defined by the sender
  final int duration;

  /// [width] Width of the animation
  final int width;

  /// [height] Height of the animation
  final int height;

  /// [fileName] Original name of the file; as defined by the sender
  final String fileName;

  /// [mimeType] MIME type of the file, usually "image/gif" or "video/mp4"
  final String mimeType;

  /// [hasStickers] True, if stickers were added to the animation. The list of
  /// corresponding sticker sets can be received using getAttachedStickerSets
  final bool hasStickers;

  /// [minithumbnail] Animation minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [thumbnail] Animation thumbnail in JPEG or MPEG4 format; may be null
  final Thumbnail? thumbnail;

  /// [animation] File containing the animation
  final File? animation;

  static const String constructor = 'animation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'duration': duration,
    'width': width,
    'height': height,
    'file_name': fileName,
    'mime_type': mimeType,
    'has_stickers': hasStickers,
    'minithumbnail': minithumbnail?.toJson(),
    'thumbnail': thumbnail?.toJson(),
    'animation': animation?.toJson(),
    '@type': constructor,
  };

  static Animation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Animation(
      duration: (json['duration'] as int?) ?? 0,
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
      fileName: (json['file_name'] as String?) ?? '',
      mimeType: (json['mime_type'] as String?) ?? '',
      hasStickers: (json['has_stickers'] as bool?) ?? false,
      minithumbnail: Minithumbnail.fromJson(
        tdMapFromJson(json['minithumbnail']),
      ),
      thumbnail: Thumbnail.fromJson(tdMapFromJson(json['thumbnail'])),
      animation: File.fromJson(tdMapFromJson(json['animation'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
