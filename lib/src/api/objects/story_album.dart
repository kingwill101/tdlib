import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes album of stories
@immutable
final class StoryAlbum extends TdObject {
  StoryAlbum({
    required this.id,
    required this.name,
    this.photoIcon,
    this.videoIcon,
  });

  /// [id] Unique identifier of the album
  final int id;

  /// [name] Name of the album
  final String name;

  /// [photoIcon] Icon of the album; may be null if none
  final Photo? photoIcon;

  /// [videoIcon] Video icon of the album; may be null if none
  final Video? videoIcon;

  static const String constructor = 'storyAlbum';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'name': name,
    'photo_icon': photoIcon?.toJson(),
    'video_icon': videoIcon?.toJson(),
    '@type': constructor,
  };

  static StoryAlbum? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryAlbum(
      id: (json['id'] as int?) ?? 0,
      name: (json['name'] as String?) ?? '',
      photoIcon: Photo.fromJson(tdMapFromJson(json['photo_icon'])),
      videoIcon: Video.fromJson(tdMapFromJson(json['video_icon'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
