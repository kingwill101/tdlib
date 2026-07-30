import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of paid message reaction
@immutable
sealed class PaidReactionType extends TdObject {
  const PaidReactionType();

  static const String constructor = 'paidReactionType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [PaidReactionTypeAnonymous]
  /// [PaidReactionTypeChat]
  /// [PaidReactionTypeRegular]
  static PaidReactionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PaidReactionTypeAnonymous.constructor:
        return PaidReactionTypeAnonymous.fromJson(json);

      case PaidReactionTypeChat.constructor:
        return PaidReactionTypeChat.fromJson(json);

      case PaidReactionTypeRegular.constructor:
        return PaidReactionTypeRegular.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An anonymous paid reaction
@immutable
final class PaidReactionTypeAnonymous extends PaidReactionType {
  const PaidReactionTypeAnonymous();

  static const String constructor = 'paidReactionTypeAnonymous';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PaidReactionTypeAnonymous? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PaidReactionTypeAnonymous();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A paid reaction on behalf of an owned chat
@immutable
final class PaidReactionTypeChat extends PaidReactionType {
  PaidReactionTypeChat({required this.chatId});

  /// [chatId] Identifier of the chat
  final int chatId;

  static const String constructor = 'paidReactionTypeChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    '@type': constructor,
  };

  static PaidReactionTypeChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaidReactionTypeChat(chatId: (json['chat_id'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A paid reaction on behalf of the current user
@immutable
final class PaidReactionTypeRegular extends PaidReactionType {
  const PaidReactionTypeRegular();

  static const String constructor = 'paidReactionTypeRegular';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PaidReactionTypeRegular? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PaidReactionTypeRegular();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
