import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An animation to be sent
@immutable
final class InputAnimation extends TdObject {
  InputAnimation({
    this.animation,
    this.thumbnail,
    required this.addedStickerFileIds,
    required this.duration,
    required this.width,
    required this.height,
  });

  /// [animation] Animation file to be sent
  final InputFile? animation;

  /// [thumbnail] Animation thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// [addedStickerFileIds] File identifiers of the stickers added to the
  /// animation, if applicable
  final List<int> addedStickerFileIds;

  /// [duration] Duration of the animation, in seconds; may be replaced by the
  /// server
  final int duration;

  /// [width] Width of the animation; may be replaced by the server
  final int width;

  /// [height] Height of the animation; may be replaced by the server
  final int height;

  static const String constructor = 'inputAnimation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'animation': animation?.toJson(),
    'thumbnail': thumbnail?.toJson(),
    'added_sticker_file_ids': addedStickerFileIds.map((item) => item).toList(),
    'duration': duration,
    'width': width,
    'height': height,
    '@type': constructor,
  };

  static InputAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputAnimation(
      animation: InputFile.fromJson(tdMapFromJson(json['animation'])),
      thumbnail: InputThumbnail.fromJson(tdMapFromJson(json['thumbnail'])),
      addedStickerFileIds: List<int>.from(
        tdListFromJson(
          json['added_sticker_file_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      duration: (json['duration'] as int?) ?? 0,
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
