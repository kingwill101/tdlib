import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents the scope to which bot commands are relevant
@immutable
sealed class BotCommandScope extends TdObject {
  const BotCommandScope();

  static const String constructor = 'botCommandScope';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [BotCommandScopeAllChatAdministrators]
  /// [BotCommandScopeAllGroupChats]
  /// [BotCommandScopeAllPrivateChats]
  /// [BotCommandScopeChat]
  /// [BotCommandScopeChatAdministrators]
  /// [BotCommandScopeChatMember]
  /// [BotCommandScopeDefault]
  static BotCommandScope? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case BotCommandScopeAllChatAdministrators.constructor:
        return BotCommandScopeAllChatAdministrators.fromJson(json);

      case BotCommandScopeAllGroupChats.constructor:
        return BotCommandScopeAllGroupChats.fromJson(json);

      case BotCommandScopeAllPrivateChats.constructor:
        return BotCommandScopeAllPrivateChats.fromJson(json);

      case BotCommandScopeChat.constructor:
        return BotCommandScopeChat.fromJson(json);

      case BotCommandScopeChatAdministrators.constructor:
        return BotCommandScopeChatAdministrators.fromJson(json);

      case BotCommandScopeChatMember.constructor:
        return BotCommandScopeChatMember.fromJson(json);

      case BotCommandScopeDefault.constructor:
        return BotCommandScopeDefault.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A scope covering all group and supergroup chat administrators
@immutable
final class BotCommandScopeAllChatAdministrators extends BotCommandScope {
  const BotCommandScopeAllChatAdministrators();

  static const String constructor = 'botCommandScopeAllChatAdministrators';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static BotCommandScopeAllChatAdministrators? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const BotCommandScopeAllChatAdministrators();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A scope covering all group and supergroup chats
@immutable
final class BotCommandScopeAllGroupChats extends BotCommandScope {
  const BotCommandScopeAllGroupChats();

  static const String constructor = 'botCommandScopeAllGroupChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static BotCommandScopeAllGroupChats? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BotCommandScopeAllGroupChats();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A scope covering all private chats
@immutable
final class BotCommandScopeAllPrivateChats extends BotCommandScope {
  const BotCommandScopeAllPrivateChats();

  static const String constructor = 'botCommandScopeAllPrivateChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static BotCommandScopeAllPrivateChats? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BotCommandScopeAllPrivateChats();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A scope covering all members of a chat
@immutable
final class BotCommandScopeChat extends BotCommandScope {
  BotCommandScopeChat({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  static const String constructor = 'botCommandScopeChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    '@type': constructor,
  };

  static BotCommandScopeChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotCommandScopeChat(chatId: (json['chat_id'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A scope covering all administrators of a chat
@immutable
final class BotCommandScopeChatAdministrators extends BotCommandScope {
  BotCommandScopeChatAdministrators({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  static const String constructor = 'botCommandScopeChatAdministrators';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    '@type': constructor,
  };

  static BotCommandScopeChatAdministrators? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return BotCommandScopeChatAdministrators(
      chatId: (json['chat_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A scope covering a member of a chat
@immutable
final class BotCommandScopeChatMember extends BotCommandScope {
  BotCommandScopeChatMember({required this.chatId, required this.userId});

  /// [chatId] Chat identifier
  final int chatId;

  /// [userId] User identifier
  final int userId;

  static const String constructor = 'botCommandScopeChatMember';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'user_id': userId,
    '@type': constructor,
  };

  static BotCommandScopeChatMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotCommandScopeChatMember(
      chatId: (json['chat_id'] as int?) ?? 0,
      userId: (json['user_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A scope covering all users
@immutable
final class BotCommandScopeDefault extends BotCommandScope {
  const BotCommandScopeDefault();

  static const String constructor = 'botCommandScopeDefault';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static BotCommandScopeDefault? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BotCommandScopeDefault();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
