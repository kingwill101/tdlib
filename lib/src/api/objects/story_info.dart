import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains basic information about a story
@immutable
final class StoryInfo extends TdObject {
  StoryInfo({
    required this.storyId,
    required this.date,
    required this.isForCloseFriends,
    required this.isLive,
  });

  /// [storyId] Unique story identifier among stories of the chat
  final int storyId;

  /// [date] Point in time (Unix timestamp) when the story was published
  final int date;

  /// [isForCloseFriends] True, if the story is available only to close friends
  final bool isForCloseFriends;

  /// [isLive] True, if the story is a live story
  final bool isLive;

  static const String constructor = 'storyInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story_id': storyId,
    'date': date,
    'is_for_close_friends': isForCloseFriends,
    'is_live': isLive,
    '@type': constructor,
  };

  static StoryInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryInfo(
      storyId: (json['story_id'] as int?) ?? 0,
      date: (json['date'] as int?) ?? 0,
      isForCloseFriends: (json['is_for_close_friends'] as bool?) ?? false,
      isLive: (json['is_live'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
