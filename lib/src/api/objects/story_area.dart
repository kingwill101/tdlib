import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a clickable rectangle area on a story media
@immutable
final class StoryArea extends TdObject {
  StoryArea({this.position, this.type});

  /// [position] Position of the area
  final StoryAreaPosition? position;

  /// [type] Type of the area
  final StoryAreaType? type;

  static const String constructor = 'storyArea';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'position': position?.toJson(),
    'type': type?.toJson(),
    '@type': constructor,
  };

  static StoryArea? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryArea(
      position: StoryAreaPosition.fromJson(tdMapFromJson(json['position'])),
      type: StoryAreaType.fromJson(tdMapFromJson(json['type'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
