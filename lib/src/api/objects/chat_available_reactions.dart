import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes reactions available in the chat
@immutable
sealed class ChatAvailableReactions extends TdObject {
  const ChatAvailableReactions();

  static const String constructor = 'chatAvailableReactions';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ChatAvailableReactionsAll]
  /// [ChatAvailableReactionsSome]
  static ChatAvailableReactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatAvailableReactionsAll.constructor:
        return ChatAvailableReactionsAll.fromJson(json);

      case ChatAvailableReactionsSome.constructor:
        return ChatAvailableReactionsSome.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// All reactions are available in the chat, excluding the paid reaction and
/// custom reactions in channel chats
@immutable
final class ChatAvailableReactionsAll extends ChatAvailableReactions {
  ChatAvailableReactionsAll({required this.maxReactionCount});

  /// [maxReactionCount] The maximum allowed number of reactions per message;
  /// 1-11
  final int maxReactionCount;

  static const String constructor = 'chatAvailableReactionsAll';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'max_reaction_count': maxReactionCount,
    '@type': constructor,
  };

  static ChatAvailableReactionsAll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatAvailableReactionsAll(
      maxReactionCount: (json['max_reaction_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Only specific reactions are available in the chat
@immutable
final class ChatAvailableReactionsSome extends ChatAvailableReactions {
  ChatAvailableReactionsSome({
    required this.reactions,
    required this.maxReactionCount,
  });

  /// [reactions] The list of reactions
  final List<ReactionType> reactions;

  /// [maxReactionCount] The maximum allowed number of reactions per message;
  /// 1-11
  final int maxReactionCount;

  static const String constructor = 'chatAvailableReactionsSome';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'reactions': reactions.map((item) => item.toJson()).toList(),
    'max_reaction_count': maxReactionCount,
    '@type': constructor,
  };

  static ChatAvailableReactionsSome? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatAvailableReactionsSome(
      reactions: List<ReactionType>.from(
        tdListFromJson(json['reactions'])
            .map((item) => ReactionType.fromJson(tdMapFromJson(item)))
            .whereType<ReactionType>(),
      ),
      maxReactionCount: (json['max_reaction_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
