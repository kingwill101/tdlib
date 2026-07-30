import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about the origin of a story that was reposted
@immutable
sealed class StoryOrigin extends TdObject {
  const StoryOrigin();

  static const String constructor = 'storyOrigin';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [StoryOriginHiddenUser]
  /// [StoryOriginPublicStory]
  static StoryOrigin? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StoryOriginHiddenUser.constructor:
        return StoryOriginHiddenUser.fromJson(json);

      case StoryOriginPublicStory.constructor:
        return StoryOriginPublicStory.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The original story was posted by an unknown user
@immutable
final class StoryOriginHiddenUser extends StoryOrigin {
  StoryOriginHiddenUser({required this.posterName});

  /// [posterName] Name of the user or the chat that posted the story
  final String posterName;

  static const String constructor = 'storyOriginHiddenUser';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'poster_name': posterName,
    '@type': constructor,
  };

  static StoryOriginHiddenUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryOriginHiddenUser(
      posterName: (json['poster_name'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The original story was a public story that was posted by a known chat
@immutable
final class StoryOriginPublicStory extends StoryOrigin {
  StoryOriginPublicStory({required this.chatId, required this.storyId});

  /// [chatId] Identifier of the chat that posted original story
  final int chatId;

  /// [storyId] Story identifier of the original story
  final int storyId;

  static const String constructor = 'storyOriginPublicStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'story_id': storyId,
    '@type': constructor,
  };

  static StoryOriginPublicStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryOriginPublicStory(
      chatId: (json['chat_id'] as int?) ?? 0,
      storyId: (json['story_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
