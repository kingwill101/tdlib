import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes active stories posted by a chat
@immutable
final class ChatActiveStories extends TdObject {
  ChatActiveStories({
    required this.chatId,
    this.list,
    required this.order,
    required this.canBeArchived,
    required this.maxReadStoryId,
    required this.stories,
  });

  /// [chatId] Identifier of the chat that posted the stories
  final int chatId;

  /// [list] Identifier of the story list in which the stories are shown; may be
  /// null if the stories aren't shown in a story list
  final StoryList? list;

  /// [order] A parameter used to determine order of the stories in the story
  /// list; 0 if the stories don't need to be shown in the story list. Stories
  /// must be sorted by the pair (order, story_poster_chat_id) in descending
  /// order
  final int order;

  /// [canBeArchived] True, if the stories are shown in the main story list and
  /// can be archived; otherwise, the stories can be hidden from the main story
  /// list only by calling removeTopChat with topChatCategoryUsers and the
  /// chat_id. Stories of the current user can't be archived nor hidden using
  /// removeTopChat
  final bool canBeArchived;

  /// [maxReadStoryId] Identifier of the last read active story
  final int maxReadStoryId;

  /// [stories] Basic information about the stories; use getStory to get full
  /// information about the stories. The stories are in chronological order
  /// (i.e., in order of increasing story identifiers)
  final List<StoryInfo> stories;

  static const String constructor = 'chatActiveStories';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'list': list?.toJson(),
    'order': order,
    'can_be_archived': canBeArchived,
    'max_read_story_id': maxReadStoryId,
    'stories': stories.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static ChatActiveStories? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActiveStories(
      chatId: (json['chat_id'] as int?) ?? 0,
      list: StoryList.fromJson(tdMapFromJson(json['list'])),
      order: (json['order'] as int?) ?? 0,
      canBeArchived: (json['can_be_archived'] as bool?) ?? false,
      maxReadStoryId: (json['max_read_story_id'] as int?) ?? 0,
      stories: List<StoryInfo>.from(
        tdListFromJson(json['stories'])
            .map((item) => StoryInfo.fromJson(tdMapFromJson(item)))
            .whereType<StoryInfo>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
