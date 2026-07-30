import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Provides information about the status of a member in a chat
@immutable
sealed class ChatMemberStatus extends TdObject {
  const ChatMemberStatus();

  static const String constructor = 'chatMemberStatus';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ChatMemberStatusAdministrator]
  /// [ChatMemberStatusBanned]
  /// [ChatMemberStatusCreator]
  /// [ChatMemberStatusLeft]
  /// [ChatMemberStatusMember]
  /// [ChatMemberStatusRestricted]
  static ChatMemberStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatMemberStatusAdministrator.constructor:
        return ChatMemberStatusAdministrator.fromJson(json);

      case ChatMemberStatusBanned.constructor:
        return ChatMemberStatusBanned.fromJson(json);

      case ChatMemberStatusCreator.constructor:
        return ChatMemberStatusCreator.fromJson(json);

      case ChatMemberStatusLeft.constructor:
        return ChatMemberStatusLeft.fromJson(json);

      case ChatMemberStatusMember.constructor:
        return ChatMemberStatusMember.fromJson(json);

      case ChatMemberStatusRestricted.constructor:
        return ChatMemberStatusRestricted.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is a member of the chat and has some additional privileges. In
/// basic groups, administrators have all applicable rights. In supergroups
/// and channels, any subset of the rights can be chosen for an administrator
@immutable
final class ChatMemberStatusAdministrator extends ChatMemberStatus {
  ChatMemberStatusAdministrator({required this.canBeEdited, this.rights});

  /// [canBeEdited] True, if the current user can edit the administrator
  /// privileges for the called user
  final bool canBeEdited;

  /// [rights] Rights of the administrator
  final ChatAdministratorRights? rights;

  static const String constructor = 'chatMemberStatusAdministrator';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'can_be_edited': canBeEdited,
    'rights': rights?.toJson(),
    '@type': constructor,
  };

  static ChatMemberStatusAdministrator? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMemberStatusAdministrator(
      canBeEdited: (json['can_be_edited'] as bool?) ?? false,
      rights: ChatAdministratorRights.fromJson(tdMapFromJson(json['rights'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user or the chat was banned (and hence is not a member of the chat).
/// Implies the user can't return to the chat, view messages, or be used as a
/// participant identifier to join a video chat of the chat
@immutable
final class ChatMemberStatusBanned extends ChatMemberStatus {
  ChatMemberStatusBanned({required this.bannedUntilDate});

  /// [bannedUntilDate] Point in time (Unix timestamp) when the user will be
  /// unbanned; 0 if never. If the user is banned for more than 366 days or for
  /// less than 30 seconds from the current time, the user is considered to be
  /// banned forever. Always 0 in basic groups
  final int bannedUntilDate;

  static const String constructor = 'chatMemberStatusBanned';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'banned_until_date': bannedUntilDate,
    '@type': constructor,
  };

  static ChatMemberStatusBanned? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMemberStatusBanned(
      bannedUntilDate: (json['banned_until_date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is the owner of the chat and has all the administrator privileges
@immutable
final class ChatMemberStatusCreator extends ChatMemberStatus {
  ChatMemberStatusCreator({required this.isAnonymous, required this.isMember});

  /// [isAnonymous] True, if the creator isn't shown in the chat member list and
  /// sends messages anonymously; applicable to supergroups only
  final bool isAnonymous;

  /// [isMember] True, if the user is a member of the chat
  final bool isMember;

  static const String constructor = 'chatMemberStatusCreator';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_anonymous': isAnonymous,
    'is_member': isMember,
    '@type': constructor,
  };

  static ChatMemberStatusCreator? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMemberStatusCreator(
      isAnonymous: (json['is_anonymous'] as bool?) ?? false,
      isMember: (json['is_member'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user or the chat is not a chat member
@immutable
final class ChatMemberStatusLeft extends ChatMemberStatus {
  const ChatMemberStatusLeft();

  static const String constructor = 'chatMemberStatusLeft';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatMemberStatusLeft? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatMemberStatusLeft();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is a member of the chat, without any additional privileges or
/// restrictions
@immutable
final class ChatMemberStatusMember extends ChatMemberStatus {
  ChatMemberStatusMember({required this.memberUntilDate});

  /// [memberUntilDate] Point in time (Unix timestamp) when the user will be
  /// removed from the chat because of the expired subscription; 0 if never.
  /// Ignored in setChatMemberStatus
  final int memberUntilDate;

  static const String constructor = 'chatMemberStatusMember';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'member_until_date': memberUntilDate,
    '@type': constructor,
  };

  static ChatMemberStatusMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMemberStatusMember(
      memberUntilDate: (json['member_until_date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is under certain restrictions in the chat. Not supported in basic
/// groups and channels
@immutable
final class ChatMemberStatusRestricted extends ChatMemberStatus {
  ChatMemberStatusRestricted({
    required this.isMember,
    required this.restrictedUntilDate,
    this.permissions,
  });

  /// [isMember] True, if the user is a member of the chat
  final bool isMember;

  /// [restrictedUntilDate] Point in time (Unix timestamp) when restrictions
  /// will be lifted from the user; 0 if never. If the user is restricted for
  /// more than 366 days or for less than 30 seconds from the current time, the
  /// user is considered to be restricted forever
  final int restrictedUntilDate;

  /// [permissions] User permissions in the chat
  final ChatPermissions? permissions;

  static const String constructor = 'chatMemberStatusRestricted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_member': isMember,
    'restricted_until_date': restrictedUntilDate,
    'permissions': permissions?.toJson(),
    '@type': constructor,
  };

  static ChatMemberStatusRestricted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMemberStatusRestricted(
      isMember: (json['is_member'] as bool?) ?? false,
      restrictedUntilDate: (json['restricted_until_date'] as int?) ?? 0,
      permissions: ChatPermissions.fromJson(tdMapFromJson(json['permissions'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
