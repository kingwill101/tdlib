import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of story albums
@immutable
final class StoryAlbums extends TdObject {
  StoryAlbums({required this.albums});

  /// [albums] List of story albums
  final List<StoryAlbum> albums;

  static const String constructor = 'storyAlbums';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'albums': albums.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static StoryAlbums? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryAlbums(
      albums: List<StoryAlbum>.from(
        tdListFromJson(json['albums'])
            .map((item) => StoryAlbum.fromJson(tdMapFromJson(item)))
            .whereType<StoryAlbum>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
