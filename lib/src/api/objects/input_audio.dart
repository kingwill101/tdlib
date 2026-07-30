import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An audio to be sent
@immutable
final class InputAudio extends TdObject {
  InputAudio({
    this.audio,
    this.albumCoverThumbnail,
    required this.duration,
    required this.title,
    required this.performer,
  });

  /// [audio] Audio file to be sent
  final InputFile? audio;

  /// [albumCoverThumbnail] Thumbnail of the cover for the album; pass null to
  /// skip thumbnail uploading
  final InputThumbnail? albumCoverThumbnail;

  /// [duration] Duration of the audio, in seconds; may be replaced by the
  /// server
  final int duration;

  /// [title] Title of the audio; 0-64 characters; may be replaced by the server
  final String title;

  /// [performer] Performer of the audio; 0-64 characters, may be replaced by
  /// the server
  final String performer;

  static const String constructor = 'inputAudio';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'audio': audio?.toJson(),
    'album_cover_thumbnail': albumCoverThumbnail?.toJson(),
    'duration': duration,
    'title': title,
    'performer': performer,
    '@type': constructor,
  };

  static InputAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputAudio(
      audio: InputFile.fromJson(tdMapFromJson(json['audio'])),
      albumCoverThumbnail: InputThumbnail.fromJson(
        tdMapFromJson(json['album_cover_thumbnail']),
      ),
      duration: (json['duration'] as int?) ?? 0,
      title: (json['title'] as String?) ?? '',
      performer: (json['performer'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
