import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of object, for which statistics are provided
@immutable
sealed class ChatStatisticsObjectType extends TdObject {
  const ChatStatisticsObjectType();

  static const String constructor = 'chatStatisticsObjectType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ChatStatisticsObjectTypeMessage]
  /// [ChatStatisticsObjectTypeStory]
  static ChatStatisticsObjectType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatStatisticsObjectTypeMessage.constructor:
        return ChatStatisticsObjectTypeMessage.fromJson(json);

      case ChatStatisticsObjectTypeStory.constructor:
        return ChatStatisticsObjectTypeStory.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes a message sent in the chat
@immutable
final class ChatStatisticsObjectTypeMessage extends ChatStatisticsObjectType {
  ChatStatisticsObjectTypeMessage({required this.messageId});

  /// [messageId] Message identifier
  final int messageId;

  static const String constructor = 'chatStatisticsObjectTypeMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'message_id': messageId,
    '@type': constructor,
  };

  static ChatStatisticsObjectTypeMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatStatisticsObjectTypeMessage(
      messageId: (json['message_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Describes a story posted on behalf of the chat
@immutable
final class ChatStatisticsObjectTypeStory extends ChatStatisticsObjectType {
  ChatStatisticsObjectTypeStory({required this.storyId});

  /// [storyId] Story identifier
  final int storyId;

  static const String constructor = 'chatStatisticsObjectTypeStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story_id': storyId,
    '@type': constructor,
  };

  static ChatStatisticsObjectTypeStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatStatisticsObjectTypeStory(
      storyId: (json['story_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
