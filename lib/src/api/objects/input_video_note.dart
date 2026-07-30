import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A video note to be sent
@immutable
final class InputVideoNote extends TdObject {
  InputVideoNote({
    this.videoNote,
    this.thumbnail,
    required this.duration,
    required this.length,
  });

  /// [videoNote] Video note file to be sent. The video is expected to be
  /// encoded to MPEG4 format with H.264 codec and have no data outside of the
  /// visible circle
  final InputFile? videoNote;

  /// [thumbnail] Video thumbnail; may be null if empty; pass null to skip
  /// thumbnail uploading
  final InputThumbnail? thumbnail;

  /// [duration] Duration of the video, in seconds; 0-60
  final int duration;

  /// [length] Video width and height; must be positive and not greater than 640
  final int length;

  static const String constructor = 'inputVideoNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'video_note': videoNote?.toJson(),
    'thumbnail': thumbnail?.toJson(),
    'duration': duration,
    'length': length,
    '@type': constructor,
  };

  static InputVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputVideoNote(
      videoNote: InputFile.fromJson(tdMapFromJson(json['video_note'])),
      thumbnail: InputThumbnail.fromJson(tdMapFromJson(json['thumbnail'])),
      duration: (json['duration'] as int?) ?? 0,
      length: (json['length'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
