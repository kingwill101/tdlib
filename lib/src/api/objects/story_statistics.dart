import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A detailed statistics about a story
@immutable
final class StoryStatistics extends TdObject {
  StoryStatistics({this.storyInteractionGraph, this.storyReactionGraph});

  /// [storyInteractionGraph] A graph containing number of story views and
  /// shares
  final StatisticalGraph? storyInteractionGraph;

  /// [storyReactionGraph] A graph containing number of story reactions
  final StatisticalGraph? storyReactionGraph;

  static const String constructor = 'storyStatistics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story_interaction_graph': storyInteractionGraph?.toJson(),
    'story_reaction_graph': storyReactionGraph?.toJson(),
    '@type': constructor,
  };

  static StoryStatistics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryStatistics(
      storyInteractionGraph: StatisticalGraph.fromJson(
        tdMapFromJson(json['story_interaction_graph']),
      ),
      storyReactionGraph: StatisticalGraph.fromJson(
        tdMapFromJson(json['story_reaction_graph']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
