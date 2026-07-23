import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the type of chat
@immutable
sealed class ChatType extends TdObject {
  const ChatType();

  static const String constructor = 'chatType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ChatTypeBasicGroup]
  /// [ChatTypePrivate]
  /// [ChatTypeSecret]
  /// [ChatTypeSupergroup]
  static ChatType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatTypeBasicGroup.constructor:
        return ChatTypeBasicGroup.fromJson(json);

      case ChatTypePrivate.constructor:
        return ChatTypePrivate.fromJson(json);

      case ChatTypeSecret.constructor:
        return ChatTypeSecret.fromJson(json);

      case ChatTypeSupergroup.constructor:
        return ChatTypeSupergroup.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A basic group (a chat with 0-200 other users)
@immutable
final class ChatTypeBasicGroup extends ChatType {
  ChatTypeBasicGroup({required this.basicGroupId});

  /// [basicGroupId] Basic group identifier
  final int basicGroupId;

  static const String constructor = 'chatTypeBasicGroup';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'basic_group_id': basicGroupId,
    '@type': constructor,
  };

  static ChatTypeBasicGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatTypeBasicGroup(
      basicGroupId: (json['basic_group_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An ordinary chat with a user
@immutable
final class ChatTypePrivate extends ChatType {
  ChatTypePrivate({required this.userId});

  /// [userId] User identifier
  final int userId;

  static const String constructor = 'chatTypePrivate';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    '@type': constructor,
  };

  static ChatTypePrivate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatTypePrivate(userId: (json['user_id'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A secret chat with a user
@immutable
final class ChatTypeSecret extends ChatType {
  ChatTypeSecret({required this.secretChatId, required this.userId});

  /// [secretChatId] Secret chat identifier
  final int secretChatId;

  /// [userId] User identifier of the other user in the secret chat
  final int userId;

  static const String constructor = 'chatTypeSecret';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'secret_chat_id': secretChatId,
    'user_id': userId,
    '@type': constructor,
  };

  static ChatTypeSecret? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatTypeSecret(
      secretChatId: (json['secret_chat_id'] as int?) ?? 0,
      userId: (json['user_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A supergroup or channel (with unlimited members)
@immutable
final class ChatTypeSupergroup extends ChatType {
  ChatTypeSupergroup({required this.supergroupId, required this.isChannel});

  /// [supergroupId] Supergroup or channel identifier
  final int supergroupId;

  /// [isChannel] True, if the supergroup is a channel
  final bool isChannel;

  static const String constructor = 'chatTypeSupergroup';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'supergroup_id': supergroupId,
    'is_channel': isChannel,
    '@type': constructor,
  };

  static ChatTypeSupergroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatTypeSupergroup(
      supergroupId: (json['supergroup_id'] as int?) ?? 0,
      isChannel: (json['is_channel'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
