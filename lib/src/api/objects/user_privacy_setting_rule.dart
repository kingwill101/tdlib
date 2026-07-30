import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a single rule for managing user privacy settings
@immutable
sealed class UserPrivacySettingRule extends TdObject {
  const UserPrivacySettingRule();

  static const String constructor = 'userPrivacySettingRule';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [UserPrivacySettingRuleAllowAll]
  /// [UserPrivacySettingRuleAllowBots]
  /// [UserPrivacySettingRuleAllowChatMembers]
  /// [UserPrivacySettingRuleAllowContacts]
  /// [UserPrivacySettingRuleAllowPremiumUsers]
  /// [UserPrivacySettingRuleAllowUsers]
  /// [UserPrivacySettingRuleRestrictAll]
  /// [UserPrivacySettingRuleRestrictBots]
  /// [UserPrivacySettingRuleRestrictChatMembers]
  /// [UserPrivacySettingRuleRestrictContacts]
  /// [UserPrivacySettingRuleRestrictUsers]
  static UserPrivacySettingRule? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case UserPrivacySettingRuleAllowAll.constructor:
        return UserPrivacySettingRuleAllowAll.fromJson(json);

      case UserPrivacySettingRuleAllowBots.constructor:
        return UserPrivacySettingRuleAllowBots.fromJson(json);

      case UserPrivacySettingRuleAllowChatMembers.constructor:
        return UserPrivacySettingRuleAllowChatMembers.fromJson(json);

      case UserPrivacySettingRuleAllowContacts.constructor:
        return UserPrivacySettingRuleAllowContacts.fromJson(json);

      case UserPrivacySettingRuleAllowPremiumUsers.constructor:
        return UserPrivacySettingRuleAllowPremiumUsers.fromJson(json);

      case UserPrivacySettingRuleAllowUsers.constructor:
        return UserPrivacySettingRuleAllowUsers.fromJson(json);

      case UserPrivacySettingRuleRestrictAll.constructor:
        return UserPrivacySettingRuleRestrictAll.fromJson(json);

      case UserPrivacySettingRuleRestrictBots.constructor:
        return UserPrivacySettingRuleRestrictBots.fromJson(json);

      case UserPrivacySettingRuleRestrictChatMembers.constructor:
        return UserPrivacySettingRuleRestrictChatMembers.fromJson(json);

      case UserPrivacySettingRuleRestrictContacts.constructor:
        return UserPrivacySettingRuleRestrictContacts.fromJson(json);

      case UserPrivacySettingRuleRestrictUsers.constructor:
        return UserPrivacySettingRuleRestrictUsers.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A rule to allow all users to do something
@immutable
final class UserPrivacySettingRuleAllowAll extends UserPrivacySettingRule {
  const UserPrivacySettingRuleAllowAll();

  static const String constructor = 'userPrivacySettingRuleAllowAll';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UserPrivacySettingRuleAllowAll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingRuleAllowAll();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A rule to allow all bots to do something
@immutable
final class UserPrivacySettingRuleAllowBots extends UserPrivacySettingRule {
  const UserPrivacySettingRuleAllowBots();

  static const String constructor = 'userPrivacySettingRuleAllowBots';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UserPrivacySettingRuleAllowBots? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingRuleAllowBots();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A rule to allow all members of certain specified basic groups and
/// supergroups to doing something
@immutable
final class UserPrivacySettingRuleAllowChatMembers
    extends UserPrivacySettingRule {
  UserPrivacySettingRuleAllowChatMembers({required this.chatIds});

  /// [chatIds] The chat identifiers, total number of chats in all rules must
  /// not exceed 20
  final List<int> chatIds;

  static const String constructor = 'userPrivacySettingRuleAllowChatMembers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_ids': chatIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static UserPrivacySettingRuleAllowChatMembers? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return UserPrivacySettingRuleAllowChatMembers(
      chatIds: List<int>.from(
        tdListFromJson(
          json['chat_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A rule to allow all contacts of the user to do something
@immutable
final class UserPrivacySettingRuleAllowContacts extends UserPrivacySettingRule {
  const UserPrivacySettingRuleAllowContacts();

  static const String constructor = 'userPrivacySettingRuleAllowContacts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UserPrivacySettingRuleAllowContacts? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingRuleAllowContacts();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A rule to allow all Premium Users to do something; currently, allowed only
/// for userPrivacySettingAllowChatInvites
@immutable
final class UserPrivacySettingRuleAllowPremiumUsers
    extends UserPrivacySettingRule {
  const UserPrivacySettingRuleAllowPremiumUsers();

  static const String constructor = 'userPrivacySettingRuleAllowPremiumUsers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UserPrivacySettingRuleAllowPremiumUsers? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingRuleAllowPremiumUsers();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A rule to allow certain specified users to do something
@immutable
final class UserPrivacySettingRuleAllowUsers extends UserPrivacySettingRule {
  UserPrivacySettingRuleAllowUsers({required this.userIds});

  /// [userIds] The user identifiers, total number of users in all rules must
  /// not exceed 1000
  final List<int> userIds;

  static const String constructor = 'userPrivacySettingRuleAllowUsers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_ids': userIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static UserPrivacySettingRuleAllowUsers? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return UserPrivacySettingRuleAllowUsers(
      userIds: List<int>.from(
        tdListFromJson(
          json['user_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A rule to restrict all users from doing something
@immutable
final class UserPrivacySettingRuleRestrictAll extends UserPrivacySettingRule {
  const UserPrivacySettingRuleRestrictAll();

  static const String constructor = 'userPrivacySettingRuleRestrictAll';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UserPrivacySettingRuleRestrictAll? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingRuleRestrictAll();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A rule to restrict all bots from doing something
@immutable
final class UserPrivacySettingRuleRestrictBots extends UserPrivacySettingRule {
  const UserPrivacySettingRuleRestrictBots();

  static const String constructor = 'userPrivacySettingRuleRestrictBots';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UserPrivacySettingRuleRestrictBots? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingRuleRestrictBots();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A rule to restrict all members of specified basic groups and supergroups
/// from doing something
@immutable
final class UserPrivacySettingRuleRestrictChatMembers
    extends UserPrivacySettingRule {
  UserPrivacySettingRuleRestrictChatMembers({required this.chatIds});

  /// [chatIds] The chat identifiers, total number of chats in all rules must
  /// not exceed 20
  final List<int> chatIds;

  static const String constructor = 'userPrivacySettingRuleRestrictChatMembers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_ids': chatIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static UserPrivacySettingRuleRestrictChatMembers? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return UserPrivacySettingRuleRestrictChatMembers(
      chatIds: List<int>.from(
        tdListFromJson(
          json['chat_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A rule to restrict all contacts of the user from doing something
@immutable
final class UserPrivacySettingRuleRestrictContacts
    extends UserPrivacySettingRule {
  const UserPrivacySettingRuleRestrictContacts();

  static const String constructor = 'userPrivacySettingRuleRestrictContacts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UserPrivacySettingRuleRestrictContacts? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingRuleRestrictContacts();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A rule to restrict all specified users from doing something
@immutable
final class UserPrivacySettingRuleRestrictUsers extends UserPrivacySettingRule {
  UserPrivacySettingRuleRestrictUsers({required this.userIds});

  /// [userIds] The user identifiers, total number of users in all rules must
  /// not exceed 1000
  final List<int> userIds;

  static const String constructor = 'userPrivacySettingRuleRestrictUsers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_ids': userIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static UserPrivacySettingRuleRestrictUsers? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return UserPrivacySettingRuleRestrictUsers(
      userIds: List<int>.from(
        tdListFromJson(
          json['user_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
