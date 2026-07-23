import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of interaction with a story
@immutable
sealed class StoryInteractionType extends TdObject {
  const StoryInteractionType();

  static const String constructor = 'storyInteractionType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [StoryInteractionTypeForward]
  /// [StoryInteractionTypeRepost]
  /// [StoryInteractionTypeView]
  static StoryInteractionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StoryInteractionTypeForward.constructor:
        return StoryInteractionTypeForward.fromJson(json);

      case StoryInteractionTypeRepost.constructor:
        return StoryInteractionTypeRepost.fromJson(json);

      case StoryInteractionTypeView.constructor:
        return StoryInteractionTypeView.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A forward of the story as a message
@immutable
final class StoryInteractionTypeForward extends StoryInteractionType {
  StoryInteractionTypeForward({this.message});

  /// [message] The message with story forward
  final Message? message;

  static const String constructor = 'storyInteractionTypeForward';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'message': message?.toJson(),
    '@type': constructor,
  };

  static StoryInteractionTypeForward? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryInteractionTypeForward(
      message: Message.fromJson(tdMapFromJson(json['message'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A repost of the story as a story
@immutable
final class StoryInteractionTypeRepost extends StoryInteractionType {
  StoryInteractionTypeRepost({this.story});

  /// [story] The reposted story
  final Story? story;

  static const String constructor = 'storyInteractionTypeRepost';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story': story?.toJson(),
    '@type': constructor,
  };

  static StoryInteractionTypeRepost? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryInteractionTypeRepost(
      story: Story.fromJson(tdMapFromJson(json['story'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A view of the story
@immutable
final class StoryInteractionTypeView extends StoryInteractionType {
  StoryInteractionTypeView({this.chosenReactionType});

  /// [chosenReactionType] Type of the reaction that was chosen by the viewer;
  /// may be null if none
  final ReactionType? chosenReactionType;

  static const String constructor = 'storyInteractionTypeView';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chosen_reaction_type': chosenReactionType?.toJson(),
    '@type': constructor,
  };

  static StoryInteractionTypeView? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryInteractionTypeView(
      chosenReactionType: ReactionType.fromJson(
        tdMapFromJson(json['chosen_reaction_type']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
