import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains autosave settings for an autosave settings scope
@immutable
final class ScopeAutosaveSettings extends TdObject {
  ScopeAutosaveSettings({
    required this.autosavePhotos,
    required this.autosaveVideos,
    required this.maxVideoFileSize,
  });

  /// [autosavePhotos] True, if photo autosave is enabled
  final bool autosavePhotos;

  /// [autosaveVideos] True, if video autosave is enabled
  final bool autosaveVideos;

  /// [maxVideoFileSize] The maximum size of a video file to be autosaved, in
  /// bytes; 512 KB - 4000 MB
  final int maxVideoFileSize;

  static const String constructor = 'scopeAutosaveSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'autosave_photos': autosavePhotos,
    'autosave_videos': autosaveVideos,
    'max_video_file_size': maxVideoFileSize,
    '@type': constructor,
  };

  static ScopeAutosaveSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ScopeAutosaveSettings(
      autosavePhotos: (json['autosave_photos'] as bool?) ?? false,
      autosaveVideos: (json['autosave_videos'] as bool?) ?? false,
      maxVideoFileSize: (json['max_video_file_size'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
