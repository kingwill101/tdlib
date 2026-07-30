import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a clickable rectangle area on a story media to be added
@immutable
final class InputStoryArea extends TdObject {
  InputStoryArea({this.position, this.type});

  /// [position] Position of the area
  final StoryAreaPosition? position;

  /// [type] Type of the area
  final InputStoryAreaType? type;

  static const String constructor = 'inputStoryArea';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'position': position?.toJson(),
    'type': type?.toJson(),
    '@type': constructor,
  };

  static InputStoryArea? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputStoryArea(
      position: StoryAreaPosition.fromJson(tdMapFromJson(json['position'])),
      type: InputStoryAreaType.fromJson(tdMapFromJson(json['type'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
