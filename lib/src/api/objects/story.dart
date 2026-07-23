import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a story
@immutable
final class Story extends TdObject {
  Story({
    required this.id,
    required this.posterChatId,
    this.posterId,
    required this.date,
    required this.isBeingPosted,
    required this.isBeingEdited,
    required this.isEdited,
    required this.isPostedToChatPage,
    required this.isVisibleOnlyForSelf,
    required this.canBeAddedToAlbum,
    required this.canBeDeleted,
    required this.canBeEdited,
    required this.canBeForwarded,
    required this.canBeReplied,
    required this.canSetPrivacySettings,
    required this.canToggleIsPostedToChatPage,
    required this.canGetStatistics,
    required this.canGetInteractions,
    required this.hasExpiredViewers,
    this.repostInfo,
    this.interactionInfo,
    this.chosenReactionType,
    this.privacySettings,
    this.content,
    required this.areas,
    this.caption,
    required this.albumIds,
  });

  /// [id] Unique story identifier among stories posted by the given chat
  final int id;

  /// [posterChatId] Identifier of the chat that posted the story
  final int posterChatId;

  /// [posterId] Identifier of the user or chat that posted the story; may be
  /// null if the story is posted on behalf of the poster_chat_id
  final MessageSender? posterId;

  /// [date] Point in time (Unix timestamp) when the story was published
  final int date;

  /// [isBeingPosted] True, if the story is being posted by the current user
  final bool isBeingPosted;

  /// [isBeingEdited] True, if the story is being edited by the current user
  final bool isBeingEdited;

  /// [isEdited] True, if the story was edited
  final bool isEdited;

  /// [isPostedToChatPage] True, if the story is saved in the profile of the
  /// chat that posted it and will be available there after expiration
  final bool isPostedToChatPage;

  /// [isVisibleOnlyForSelf] True, if the story is visible only for the current
  /// user
  final bool isVisibleOnlyForSelf;

  /// [canBeAddedToAlbum] True, if the story can be added to an album using
  /// createStoryAlbum and addStoryAlbumStories
  final bool canBeAddedToAlbum;

  /// [canBeDeleted] True, if the story can be deleted
  final bool canBeDeleted;

  /// [canBeEdited] True, if the story can be edited
  final bool canBeEdited;

  /// [canBeForwarded] True, if the story can be forwarded as a message or
  /// reposted as a story. Otherwise, screenshotting and saving of the story
  /// content must be also forbidden
  final bool canBeForwarded;

  /// [canBeReplied] True, if the story can be replied in the chat with the user
  /// who posted the story
  final bool canBeReplied;

  /// [canSetPrivacySettings] True, if the story privacy settings can be changed
  final bool canSetPrivacySettings;

  /// [canToggleIsPostedToChatPage] True, if the story's is_posted_to_chat_page
  /// value can be changed
  final bool canToggleIsPostedToChatPage;

  /// [canGetStatistics] True, if the story statistics are available through
  /// getStoryStatistics
  final bool canGetStatistics;

  /// [canGetInteractions] True, if interactions with the story can be received
  /// through getStoryInteractions
  final bool canGetInteractions;

  /// [hasExpiredViewers] True, if users viewed the story can't be received,
  /// because the story has expired more than
  /// getOption("story_viewers_expiration_delay") seconds ago
  final bool hasExpiredViewers;

  /// [repostInfo] Information about the original story; may be null if the
  /// story wasn't reposted
  final StoryRepostInfo? repostInfo;

  /// [interactionInfo] Information about interactions with the story; may be
  /// null if the story isn't owned or there were no interactions
  final StoryInteractionInfo? interactionInfo;

  /// [chosenReactionType] Type of the chosen reaction; may be null if none
  final ReactionType? chosenReactionType;

  /// [privacySettings] Privacy rules affecting story visibility; may be
  /// approximate for non-owned stories
  final StoryPrivacySettings? privacySettings;

  /// [content] Content of the story
  final StoryContent? content;

  /// [areas] Clickable areas to be shown on the story content
  final List<StoryArea> areas;

  /// [caption] Caption of the story
  final FormattedText? caption;

  /// [albumIds] Identifiers of story albums to which the story is added; only
  /// for manageable stories
  final List<int> albumIds;

  static const String constructor = 'story';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'poster_chat_id': posterChatId,
    'poster_id': posterId?.toJson(),
    'date': date,
    'is_being_posted': isBeingPosted,
    'is_being_edited': isBeingEdited,
    'is_edited': isEdited,
    'is_posted_to_chat_page': isPostedToChatPage,
    'is_visible_only_for_self': isVisibleOnlyForSelf,
    'can_be_added_to_album': canBeAddedToAlbum,
    'can_be_deleted': canBeDeleted,
    'can_be_edited': canBeEdited,
    'can_be_forwarded': canBeForwarded,
    'can_be_replied': canBeReplied,
    'can_set_privacy_settings': canSetPrivacySettings,
    'can_toggle_is_posted_to_chat_page': canToggleIsPostedToChatPage,
    'can_get_statistics': canGetStatistics,
    'can_get_interactions': canGetInteractions,
    'has_expired_viewers': hasExpiredViewers,
    'repost_info': repostInfo?.toJson(),
    'interaction_info': interactionInfo?.toJson(),
    'chosen_reaction_type': chosenReactionType?.toJson(),
    'privacy_settings': privacySettings?.toJson(),
    'content': content?.toJson(),
    'areas': areas.map((item) => item.toJson()).toList(),
    'caption': caption?.toJson(),
    'album_ids': albumIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static Story? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Story(
      id: (json['id'] as int?) ?? 0,
      posterChatId: (json['poster_chat_id'] as int?) ?? 0,
      posterId: MessageSender.fromJson(tdMapFromJson(json['poster_id'])),
      date: (json['date'] as int?) ?? 0,
      isBeingPosted: (json['is_being_posted'] as bool?) ?? false,
      isBeingEdited: (json['is_being_edited'] as bool?) ?? false,
      isEdited: (json['is_edited'] as bool?) ?? false,
      isPostedToChatPage: (json['is_posted_to_chat_page'] as bool?) ?? false,
      isVisibleOnlyForSelf:
          (json['is_visible_only_for_self'] as bool?) ?? false,
      canBeAddedToAlbum: (json['can_be_added_to_album'] as bool?) ?? false,
      canBeDeleted: (json['can_be_deleted'] as bool?) ?? false,
      canBeEdited: (json['can_be_edited'] as bool?) ?? false,
      canBeForwarded: (json['can_be_forwarded'] as bool?) ?? false,
      canBeReplied: (json['can_be_replied'] as bool?) ?? false,
      canSetPrivacySettings:
          (json['can_set_privacy_settings'] as bool?) ?? false,
      canToggleIsPostedToChatPage:
          (json['can_toggle_is_posted_to_chat_page'] as bool?) ?? false,
      canGetStatistics: (json['can_get_statistics'] as bool?) ?? false,
      canGetInteractions: (json['can_get_interactions'] as bool?) ?? false,
      hasExpiredViewers: (json['has_expired_viewers'] as bool?) ?? false,
      repostInfo: StoryRepostInfo.fromJson(tdMapFromJson(json['repost_info'])),
      interactionInfo: StoryInteractionInfo.fromJson(
        tdMapFromJson(json['interaction_info']),
      ),
      chosenReactionType: ReactionType.fromJson(
        tdMapFromJson(json['chosen_reaction_type']),
      ),
      privacySettings: StoryPrivacySettings.fromJson(
        tdMapFromJson(json['privacy_settings']),
      ),
      content: StoryContent.fromJson(tdMapFromJson(json['content'])),
      areas: List<StoryArea>.from(
        tdListFromJson(json['areas'])
            .map((item) => StoryArea.fromJson(tdMapFromJson(item)))
            .whereType<StoryArea>(),
      ),
      caption: FormattedText.fromJson(tdMapFromJson(json['caption'])),
      albumIds: List<int>.from(
        tdListFromJson(
          json['album_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
