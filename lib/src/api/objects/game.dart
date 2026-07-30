import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a game. Use getInternalLink with internalLinkTypeGame to share
/// the game
@immutable
final class Game extends TdObject {
  Game({
    required this.id,
    required this.shortName,
    required this.title,
    this.text,
    required this.description,
    this.photo,
    this.animation,
  });

  /// [id] Unique game identifier
  final int id;

  /// [shortName] Game short name
  final String shortName;

  /// [title] Game title
  final String title;

  /// [text] Game text, usually containing scoreboards for a game
  final FormattedText? text;

  /// param_[description] Game description
  final String description;

  /// [photo] Game photo
  final Photo? photo;

  /// [animation] Game animation; may be null
  final Animation? animation;

  static const String constructor = 'game';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id.toString(),
    'short_name': shortName,
    'title': title,
    'text': text?.toJson(),
    'description': description,
    'photo': photo?.toJson(),
    'animation': animation?.toJson(),
    '@type': constructor,
  };

  static Game? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Game(
      id: int.tryParse((json['id'] as dynamic)?.toString() ?? '') ?? 0,
      shortName: (json['short_name'] as String?) ?? '',
      title: (json['title'] as String?) ?? '',
      text: FormattedText.fromJson(tdMapFromJson(json['text'])),
      description: (json['description'] as String?) ?? '',
      photo: Photo.fromJson(tdMapFromJson(json['photo'])),
      animation: Animation.fromJson(tdMapFromJson(json['animation'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
