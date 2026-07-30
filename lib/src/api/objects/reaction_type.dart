import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of message reaction
@immutable
sealed class ReactionType extends TdObject {
  const ReactionType();

  static const String constructor = 'reactionType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ReactionTypeCustomEmoji]
  /// [ReactionTypeEmoji]
  /// [ReactionTypePaid]
  static ReactionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ReactionTypeCustomEmoji.constructor:
        return ReactionTypeCustomEmoji.fromJson(json);

      case ReactionTypeEmoji.constructor:
        return ReactionTypeEmoji.fromJson(json);

      case ReactionTypePaid.constructor:
        return ReactionTypePaid.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A reaction with a custom emoji
@immutable
final class ReactionTypeCustomEmoji extends ReactionType {
  ReactionTypeCustomEmoji({required this.customEmojiId});

  /// [customEmojiId] Unique identifier of the custom emoji
  final int customEmojiId;

  static const String constructor = 'reactionTypeCustomEmoji';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'custom_emoji_id': customEmojiId.toString(),
    '@type': constructor,
  };

  static ReactionTypeCustomEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReactionTypeCustomEmoji(
      customEmojiId:
          int.tryParse(
            (json['custom_emoji_id'] as dynamic)?.toString() ?? '',
          ) ??
          0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A reaction with an emoji
@immutable
final class ReactionTypeEmoji extends ReactionType {
  ReactionTypeEmoji({required this.emoji});

  /// [emoji] Text representation of the reaction
  final String emoji;

  static const String constructor = 'reactionTypeEmoji';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'emoji': emoji,
    '@type': constructor,
  };

  static ReactionTypeEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReactionTypeEmoji(emoji: (json['emoji'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The paid reaction in a channel chat
@immutable
final class ReactionTypePaid extends ReactionType {
  const ReactionTypePaid();

  static const String constructor = 'reactionTypePaid';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ReactionTypePaid? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReactionTypePaid();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
