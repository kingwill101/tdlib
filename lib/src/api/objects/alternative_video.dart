import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an alternative re-encoded quality of a video file
@immutable
final class AlternativeVideo extends TdObject {
  AlternativeVideo({
    required this.id,
    required this.width,
    required this.height,
    required this.codec,
    this.hlsFile,
    this.video,
  });

  /// [id] Unique identifier of the alternative video, which is used in the HLS
  /// file
  final int id;

  /// [width] Video width
  final int width;

  /// [height] Video height
  final int height;

  /// [codec] Codec used for video file encoding, for example, "h264", "h265",
  /// "av1", or "av01"
  final String codec;

  /// [hlsFile] HLS file describing the video
  final File? hlsFile;

  /// [video] File containing the video
  final File? video;

  static const String constructor = 'alternativeVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id.toString(),
    'width': width,
    'height': height,
    'codec': codec,
    'hls_file': hlsFile?.toJson(),
    'video': video?.toJson(),
    '@type': constructor,
  };

  static AlternativeVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AlternativeVideo(
      id: int.tryParse((json['id'] as dynamic)?.toString() ?? '') ?? 0,
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
      codec: (json['codec'] as String?) ?? '',
      hlsFile: File.fromJson(tdMapFromJson(json['hls_file'])),
      video: File.fromJson(tdMapFromJson(json['video'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
