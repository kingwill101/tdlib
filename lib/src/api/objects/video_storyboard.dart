import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a storyboard for a video
@immutable
final class VideoStoryboard extends TdObject {
  VideoStoryboard({
    this.storyboardFile,
    required this.width,
    required this.height,
    this.mapFile,
  });

  /// [storyboardFile] A JPEG file that contains tiled previews of video
  final File? storyboardFile;

  /// [width] Width of a tile
  final int width;

  /// [height] Height of a tile
  final int height;

  /// [mapFile] File that describes mapping of position in the video to a tile
  /// in the JPEG file
  final File? mapFile;

  static const String constructor = 'videoStoryboard';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'storyboard_file': storyboardFile?.toJson(),
    'width': width,
    'height': height,
    'map_file': mapFile?.toJson(),
    '@type': constructor,
  };

  static VideoStoryboard? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return VideoStoryboard(
      storyboardFile: File.fromJson(tdMapFromJson(json['storyboard_file'])),
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
      mapFile: File.fromJson(tdMapFromJson(json['map_file'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
