import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about notification settings for reactions and poll
/// votes
@immutable
final class ReactionNotificationSettings extends TdObject {
  ReactionNotificationSettings({
    this.messageReactionSource,
    this.storyReactionSource,
    this.pollVoteSource,
    required this.soundId,
    required this.showPreview,
  });

  /// [messageReactionSource] Source of message reactions for which
  /// notifications are shown
  final ReactionNotificationSource? messageReactionSource;

  /// [storyReactionSource] Source of story reactions for which notifications
  /// are shown
  final ReactionNotificationSource? storyReactionSource;

  /// [pollVoteSource] Source of poll votes for which notifications are shown
  final ReactionNotificationSource? pollVoteSource;

  /// [soundId] Identifier of the notification sound to be played; 0 if sound is
  /// disabled; pass -1 to use the app-dependent default sound
  final int soundId;

  /// [showPreview] True, if reaction sender and emoji must be displayed in
  /// notifications
  final bool showPreview;

  static const String constructor = 'reactionNotificationSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'message_reaction_source': messageReactionSource?.toJson(),
    'story_reaction_source': storyReactionSource?.toJson(),
    'poll_vote_source': pollVoteSource?.toJson(),
    'sound_id': soundId.toString(),
    'show_preview': showPreview,
    '@type': constructor,
  };

  static ReactionNotificationSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReactionNotificationSettings(
      messageReactionSource: ReactionNotificationSource.fromJson(
        tdMapFromJson(json['message_reaction_source']),
      ),
      storyReactionSource: ReactionNotificationSource.fromJson(
        tdMapFromJson(json['story_reaction_source']),
      ),
      pollVoteSource: ReactionNotificationSource.fromJson(
        tdMapFromJson(json['poll_vote_source']),
      ),
      soundId:
          int.tryParse((json['sound_id'] as dynamic)?.toString() ?? '') ?? 0,
      showPreview: (json['show_preview'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
