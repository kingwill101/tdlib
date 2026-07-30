import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents the type of user. The following types are possible: regular
/// users, deleted users and bots
@immutable
sealed class UserType extends TdObject {
  const UserType();

  static const String constructor = 'userType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [UserTypeBot]
  /// [UserTypeDeleted]
  /// [UserTypeRegular]
  /// [UserTypeUnknown]
  static UserType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case UserTypeBot.constructor:
        return UserTypeBot.fromJson(json);

      case UserTypeDeleted.constructor:
        return UserTypeDeleted.fromJson(json);

      case UserTypeRegular.constructor:
        return UserTypeRegular.fromJson(json);

      case UserTypeUnknown.constructor:
        return UserTypeUnknown.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A bot (see https://core.telegram.org/bots)
@immutable
final class UserTypeBot extends UserType {
  UserTypeBot({
    required this.canBeEdited,
    required this.canJoinGroups,
    required this.canReadAllGroupMessages,
    required this.hasMainWebApp,
    required this.hasTopics,
    required this.allowsUsersToCreateTopics,
    required this.canManageBots,
    required this.isInline,
    required this.inlineQueryPlaceholder,
    required this.supportsGuestQueries,
    required this.isGuard,
    required this.needLocation,
    required this.canConnectToBusiness,
    required this.canBeAddedToAttachmentMenu,
    required this.activeUserCount,
  });

  /// [canBeEdited] True, if the bot is owned by the current user and can be
  /// edited using the methods toggleBotUsernameIsActive,
  /// reorderBotActiveUsernames, setBotProfilePhoto, setBotName,
  /// setBotInfoDescription, and setBotInfoShortDescription
  final bool canBeEdited;

  /// [canJoinGroups] True, if the bot can be invited to basic group and
  /// supergroup chats
  final bool canJoinGroups;

  /// [canReadAllGroupMessages] True, if the bot can read all messages in basic
  /// group or supergroup chats and not just those addressed to the bot. In
  /// private and channel chats a bot can always read all messages
  final bool canReadAllGroupMessages;

  /// [hasMainWebApp] True, if the bot has the main Web App
  final bool hasMainWebApp;

  /// [hasTopics] True, if the bot has topics
  final bool hasTopics;

  /// [allowsUsersToCreateTopics] True, if users can create and delete topics in
  /// the chat with the bot
  final bool allowsUsersToCreateTopics;

  /// [canManageBots] True, if the bot can manage other bots
  final bool canManageBots;

  /// [isInline] True, if the bot supports inline queries
  final bool isInline;

  /// [inlineQueryPlaceholder] Placeholder for inline queries (displayed on the
  /// application input field)
  final String inlineQueryPlaceholder;

  /// [supportsGuestQueries] True, if the bot can be queried by username from
  /// any non-secret chat
  final bool supportsGuestQueries;

  /// [isGuard] True, if the bot can be set as a guard bot in supergroup chats
  final bool isGuard;

  /// [needLocation] True, if the location of the user is expected to be sent
  /// with every inline query to this bot
  final bool needLocation;

  /// [canConnectToBusiness] True, if the bot supports connection to user
  /// accounts for chat automation
  final bool canConnectToBusiness;

  /// [canBeAddedToAttachmentMenu] True, if the bot can be added to attachment
  /// or side menu
  final bool canBeAddedToAttachmentMenu;

  /// [activeUserCount] The number of recently active users of the bot
  final int activeUserCount;

  static const String constructor = 'userTypeBot';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'can_be_edited': canBeEdited,
    'can_join_groups': canJoinGroups,
    'can_read_all_group_messages': canReadAllGroupMessages,
    'has_main_web_app': hasMainWebApp,
    'has_topics': hasTopics,
    'allows_users_to_create_topics': allowsUsersToCreateTopics,
    'can_manage_bots': canManageBots,
    'is_inline': isInline,
    'inline_query_placeholder': inlineQueryPlaceholder,
    'supports_guest_queries': supportsGuestQueries,
    'is_guard': isGuard,
    'need_location': needLocation,
    'can_connect_to_business': canConnectToBusiness,
    'can_be_added_to_attachment_menu': canBeAddedToAttachmentMenu,
    'active_user_count': activeUserCount,
    '@type': constructor,
  };

  static UserTypeBot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserTypeBot(
      canBeEdited: (json['can_be_edited'] as bool?) ?? false,
      canJoinGroups: (json['can_join_groups'] as bool?) ?? false,
      canReadAllGroupMessages:
          (json['can_read_all_group_messages'] as bool?) ?? false,
      hasMainWebApp: (json['has_main_web_app'] as bool?) ?? false,
      hasTopics: (json['has_topics'] as bool?) ?? false,
      allowsUsersToCreateTopics:
          (json['allows_users_to_create_topics'] as bool?) ?? false,
      canManageBots: (json['can_manage_bots'] as bool?) ?? false,
      isInline: (json['is_inline'] as bool?) ?? false,
      inlineQueryPlaceholder:
          (json['inline_query_placeholder'] as String?) ?? '',
      supportsGuestQueries: (json['supports_guest_queries'] as bool?) ?? false,
      isGuard: (json['is_guard'] as bool?) ?? false,
      needLocation: (json['need_location'] as bool?) ?? false,
      canConnectToBusiness: (json['can_connect_to_business'] as bool?) ?? false,
      canBeAddedToAttachmentMenu:
          (json['can_be_added_to_attachment_menu'] as bool?) ?? false,
      activeUserCount: (json['active_user_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A deleted user or deleted bot. No information on the user besides the user
/// identifier is available. It is not possible to perform any active actions
/// on this type of user
@immutable
final class UserTypeDeleted extends UserType {
  const UserTypeDeleted();

  static const String constructor = 'userTypeDeleted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UserTypeDeleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserTypeDeleted();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A regular user
@immutable
final class UserTypeRegular extends UserType {
  const UserTypeRegular();

  static const String constructor = 'userTypeRegular';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UserTypeRegular? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserTypeRegular();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// No information on the user besides the user identifier is available, yet
/// this user has not been deleted. This object is extremely rare and must be
/// handled like a deleted user. It is not possible to perform any actions on
/// users of this type
@immutable
final class UserTypeUnknown extends UserType {
  const UserTypeUnknown();

  static const String constructor = 'userTypeUnknown';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UserTypeUnknown? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserTypeUnknown();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
