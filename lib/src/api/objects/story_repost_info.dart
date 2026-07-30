import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about original story that was reposted
@immutable
final class StoryRepostInfo extends TdObject {
  StoryRepostInfo({this.origin, required this.isContentModified});

  /// [origin] Origin of the story that was reposted
  final StoryOrigin? origin;

  /// [isContentModified] True, if story content was modified during reposting;
  /// otherwise, story wasn't modified
  final bool isContentModified;

  static const String constructor = 'storyRepostInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'origin': origin?.toJson(),
    'is_content_modified': isContentModified,
    '@type': constructor,
  };

  static StoryRepostInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryRepostInfo(
      origin: StoryOrigin.fromJson(tdMapFromJson(json['origin'])),
      isContentModified: (json['is_content_modified'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
