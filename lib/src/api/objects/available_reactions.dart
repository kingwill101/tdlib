import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of reactions that can be added to a message
@immutable
final class AvailableReactions extends TdObject {
  AvailableReactions({
    required this.topReactions,
    required this.recentReactions,
    required this.popularReactions,
    required this.allowCustomEmoji,
    required this.areTags,
    this.unavailabilityReason,
  });

  /// [topReactions] List of reactions to be shown at the top
  final List<AvailableReaction> topReactions;

  /// [recentReactions] List of recently used reactions
  final List<AvailableReaction> recentReactions;

  /// [popularReactions] List of popular reactions
  final List<AvailableReaction> popularReactions;

  /// [allowCustomEmoji] True, if any custom emoji reaction can be added by
  /// Telegram Premium subscribers
  final bool allowCustomEmoji;

  /// [areTags] True, if the reactions will be tags and the message can be found
  /// by them
  final bool areTags;

  /// [unavailabilityReason] The reason why the current user can't add reactions
  /// to the message, despite some other users can; may be null if none
  final ReactionUnavailabilityReason? unavailabilityReason;

  static const String constructor = 'availableReactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'top_reactions': topReactions.map((item) => item.toJson()).toList(),
    'recent_reactions': recentReactions.map((item) => item.toJson()).toList(),
    'popular_reactions': popularReactions.map((item) => item.toJson()).toList(),
    'allow_custom_emoji': allowCustomEmoji,
    'are_tags': areTags,
    'unavailability_reason': unavailabilityReason?.toJson(),
    '@type': constructor,
  };

  static AvailableReactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AvailableReactions(
      topReactions: List<AvailableReaction>.from(
        tdListFromJson(json['top_reactions'])
            .map((item) => AvailableReaction.fromJson(tdMapFromJson(item)))
            .whereType<AvailableReaction>(),
      ),
      recentReactions: List<AvailableReaction>.from(
        tdListFromJson(json['recent_reactions'])
            .map((item) => AvailableReaction.fromJson(tdMapFromJson(item)))
            .whereType<AvailableReaction>(),
      ),
      popularReactions: List<AvailableReaction>.from(
        tdListFromJson(json['popular_reactions'])
            .map((item) => AvailableReaction.fromJson(tdMapFromJson(item)))
            .whereType<AvailableReaction>(),
      ),
      allowCustomEmoji: (json['allow_custom_emoji'] as bool?) ?? false,
      areTags: (json['are_tags'] as bool?) ?? false,
      unavailabilityReason: ReactionUnavailabilityReason.fromJson(
        tdMapFromJson(json['unavailability_reason']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
