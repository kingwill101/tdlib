import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a public forward or repost of a story
@immutable
sealed class PublicForward extends TdObject {
  const PublicForward();

  static const String constructor = 'publicForward';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [PublicForwardMessage]
  /// [PublicForwardStory]
  static PublicForward? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PublicForwardMessage.constructor:
        return PublicForwardMessage.fromJson(json);

      case PublicForwardStory.constructor:
        return PublicForwardStory.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Contains a public forward as a message
@immutable
final class PublicForwardMessage extends PublicForward {
  PublicForwardMessage({this.message});

  /// [message] Information about the message
  final Message? message;

  static const String constructor = 'publicForwardMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'message': message?.toJson(),
    '@type': constructor,
  };

  static PublicForwardMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PublicForwardMessage(
      message: Message.fromJson(tdMapFromJson(json['message'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Contains a public repost to a story
@immutable
final class PublicForwardStory extends PublicForward {
  PublicForwardStory({this.story});

  /// [story] Information about the story
  final Story? story;

  static const String constructor = 'publicForwardStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story': story?.toJson(),
    '@type': constructor,
  };

  static PublicForwardStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PublicForwardStory(
      story: Story.fromJson(tdMapFromJson(json['story'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
