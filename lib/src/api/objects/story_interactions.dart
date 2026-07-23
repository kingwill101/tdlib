import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of interactions with a story
@immutable
final class StoryInteractions extends TdObject {
  StoryInteractions({
    required this.totalCount,
    required this.totalForwardCount,
    required this.totalReactionCount,
    required this.interactions,
    required this.nextOffset,
  });

  /// [totalCount] Approximate total number of interactions found
  final int totalCount;

  /// [totalForwardCount] Approximate total number of found forwards and
  /// reposts; always 0 for chat stories
  final int totalForwardCount;

  /// [totalReactionCount] Approximate total number of found reactions; always 0
  /// for chat stories
  final int totalReactionCount;

  /// [interactions] List of story interactions
  final List<StoryInteraction> interactions;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'storyInteractions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'total_forward_count': totalForwardCount,
    'total_reaction_count': totalReactionCount,
    'interactions': interactions.map((item) => item.toJson()).toList(),
    'next_offset': nextOffset,
    '@type': constructor,
  };

  static StoryInteractions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryInteractions(
      totalCount: (json['total_count'] as int?) ?? 0,
      totalForwardCount: (json['total_forward_count'] as int?) ?? 0,
      totalReactionCount: (json['total_reaction_count'] as int?) ?? 0,
      interactions: List<StoryInteraction>.from(
        tdListFromJson(json['interactions'])
            .map((item) => StoryInteraction.fromJson(tdMapFromJson(item)))
            .whereType<StoryInteraction>(),
      ),
      nextOffset: (json['next_offset'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
