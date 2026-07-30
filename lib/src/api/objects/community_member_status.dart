import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Provides information about the status of a member in a community
@immutable
sealed class CommunityMemberStatus extends TdObject {
  const CommunityMemberStatus();

  static const String constructor = 'communityMemberStatus';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [CommunityMemberStatusAdministrator]
  /// [CommunityMemberStatusBanned]
  /// [CommunityMemberStatusCreator]
  /// [CommunityMemberStatusLeft]
  /// [CommunityMemberStatusMember]
  static CommunityMemberStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CommunityMemberStatusAdministrator.constructor:
        return CommunityMemberStatusAdministrator.fromJson(json);

      case CommunityMemberStatusBanned.constructor:
        return CommunityMemberStatusBanned.fromJson(json);

      case CommunityMemberStatusCreator.constructor:
        return CommunityMemberStatusCreator.fromJson(json);

      case CommunityMemberStatusLeft.constructor:
        return CommunityMemberStatusLeft.fromJson(json);

      case CommunityMemberStatusMember.constructor:
        return CommunityMemberStatusMember.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is a member of the community and has some additional privileges
@immutable
final class CommunityMemberStatusAdministrator extends CommunityMemberStatus {
  CommunityMemberStatusAdministrator({required this.canBeEdited, this.rights});

  /// [canBeEdited] True, if the current user can edit the administrator
  /// privileges for the called user
  final bool canBeEdited;

  /// [rights] Rights of the administrator
  final CommunityAdministratorRights? rights;

  static const String constructor = 'communityMemberStatusAdministrator';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'can_be_edited': canBeEdited,
    'rights': rights?.toJson(),
    '@type': constructor,
  };

  static CommunityMemberStatusAdministrator? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return CommunityMemberStatusAdministrator(
      canBeEdited: (json['can_be_edited'] as bool?) ?? false,
      rights: CommunityAdministratorRights.fromJson(
        tdMapFromJson(json['rights']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user or the chat was banned in the community; implies ban in all chats
/// in the community
@immutable
final class CommunityMemberStatusBanned extends CommunityMemberStatus {
  const CommunityMemberStatusBanned();

  static const String constructor = 'communityMemberStatusBanned';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CommunityMemberStatusBanned? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CommunityMemberStatusBanned();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is the owner of the community and has all the administrator
/// privileges
@immutable
final class CommunityMemberStatusCreator extends CommunityMemberStatus {
  const CommunityMemberStatusCreator();

  static const String constructor = 'communityMemberStatusCreator';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CommunityMemberStatusCreator? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CommunityMemberStatusCreator();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user or the chat is not a community member
@immutable
final class CommunityMemberStatusLeft extends CommunityMemberStatus {
  const CommunityMemberStatusLeft();

  static const String constructor = 'communityMemberStatusLeft';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CommunityMemberStatusLeft? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CommunityMemberStatusLeft();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is a member of the community, without any additional privileges
/// or restrictions
@immutable
final class CommunityMemberStatusMember extends CommunityMemberStatus {
  const CommunityMemberStatusMember();

  static const String constructor = 'communityMemberStatusMember';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CommunityMemberStatusMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CommunityMemberStatusMember();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
