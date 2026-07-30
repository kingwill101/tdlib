import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes result of join of a chat by the current user
@immutable
sealed class ChatJoinResult extends TdObject {
  const ChatJoinResult();

  static const String constructor = 'chatJoinResult';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ChatJoinResultDeclined]
  /// [ChatJoinResultGuardBotApprovalRequired]
  /// [ChatJoinResultRequestSent]
  /// [ChatJoinResultSuccess]
  static ChatJoinResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatJoinResultDeclined.constructor:
        return ChatJoinResultDeclined.fromJson(json);

      case ChatJoinResultGuardBotApprovalRequired.constructor:
        return ChatJoinResultGuardBotApprovalRequired.fromJson(json);

      case ChatJoinResultRequestSent.constructor:
        return ChatJoinResultRequestSent.fromJson(json);

      case ChatJoinResultSuccess.constructor:
        return ChatJoinResultSuccess.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The join was declined by the guard bot
@immutable
final class ChatJoinResultDeclined extends ChatJoinResult {
  const ChatJoinResultDeclined();

  static const String constructor = 'chatJoinResultDeclined';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatJoinResultDeclined? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatJoinResultDeclined();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An approval from a guard bot through a Web App is required to join the
/// chat
@immutable
final class ChatJoinResultGuardBotApprovalRequired extends ChatJoinResult {
  ChatJoinResultGuardBotApprovalRequired({
    required this.botUserId,
    required this.queryId,
  });

  /// [botUserId] Identifier of the guard bot
  final int botUserId;

  /// [queryId] Unique identifier of the join request, which will be used in
  /// getGuardBotWebAppUrl and updateChatJoinResult
  final int queryId;

  static const String constructor = 'chatJoinResultGuardBotApprovalRequired';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bot_user_id': botUserId,
    'query_id': queryId.toString(),
    '@type': constructor,
  };

  static ChatJoinResultGuardBotApprovalRequired? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ChatJoinResultGuardBotApprovalRequired(
      botUserId: (json['bot_user_id'] as int?) ?? 0,
      queryId:
          int.tryParse((json['query_id'] as dynamic)?.toString() ?? '') ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The join request was sent and have to be approved by administrators of the
/// chat
@immutable
final class ChatJoinResultRequestSent extends ChatJoinResult {
  const ChatJoinResultRequestSent();

  static const String constructor = 'chatJoinResultRequestSent';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatJoinResultRequestSent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatJoinResultRequestSent();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat was joined successfully
@immutable
final class ChatJoinResultSuccess extends ChatJoinResult {
  ChatJoinResultSuccess({required this.chatId});

  /// [chatId] Identifier of the chat
  final int chatId;

  static const String constructor = 'chatJoinResultSuccess';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    '@type': constructor,
  };

  static ChatJoinResultSuccess? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatJoinResultSuccess(chatId: (json['chat_id'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
