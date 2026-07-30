import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Specifies the kind of chat members to return in getSupergroupMembers
@immutable
sealed class SupergroupMembersFilter extends TdObject {
  const SupergroupMembersFilter();

  static const String constructor = 'supergroupMembersFilter';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [SupergroupMembersFilterAdministrators]
  /// [SupergroupMembersFilterBanned]
  /// [SupergroupMembersFilterBots]
  /// [SupergroupMembersFilterContacts]
  /// [SupergroupMembersFilterMention]
  /// [SupergroupMembersFilterRecent]
  /// [SupergroupMembersFilterRestricted]
  /// [SupergroupMembersFilterSearch]
  static SupergroupMembersFilter? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SupergroupMembersFilterAdministrators.constructor:
        return SupergroupMembersFilterAdministrators.fromJson(json);

      case SupergroupMembersFilterBanned.constructor:
        return SupergroupMembersFilterBanned.fromJson(json);

      case SupergroupMembersFilterBots.constructor:
        return SupergroupMembersFilterBots.fromJson(json);

      case SupergroupMembersFilterContacts.constructor:
        return SupergroupMembersFilterContacts.fromJson(json);

      case SupergroupMembersFilterMention.constructor:
        return SupergroupMembersFilterMention.fromJson(json);

      case SupergroupMembersFilterRecent.constructor:
        return SupergroupMembersFilterRecent.fromJson(json);

      case SupergroupMembersFilterRestricted.constructor:
        return SupergroupMembersFilterRestricted.fromJson(json);

      case SupergroupMembersFilterSearch.constructor:
        return SupergroupMembersFilterSearch.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns the owner and administrators
@immutable
final class SupergroupMembersFilterAdministrators
    extends SupergroupMembersFilter {
  const SupergroupMembersFilterAdministrators();

  static const String constructor = 'supergroupMembersFilterAdministrators';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SupergroupMembersFilterAdministrators? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const SupergroupMembersFilterAdministrators();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns users banned from the supergroup or channel; can be used only by
/// administrators
@immutable
final class SupergroupMembersFilterBanned extends SupergroupMembersFilter {
  SupergroupMembersFilterBanned({required this.query});

  /// [query] Query to search for
  final String query;

  static const String constructor = 'supergroupMembersFilterBanned';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'query': query,
    '@type': constructor,
  };

  static SupergroupMembersFilterBanned? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SupergroupMembersFilterBanned(
      query: (json['query'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns bot members of the supergroup or channel
@immutable
final class SupergroupMembersFilterBots extends SupergroupMembersFilter {
  const SupergroupMembersFilterBots();

  static const String constructor = 'supergroupMembersFilterBots';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SupergroupMembersFilterBots? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SupergroupMembersFilterBots();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns contacts of the user, which are members of the supergroup or
/// channel
@immutable
final class SupergroupMembersFilterContacts extends SupergroupMembersFilter {
  SupergroupMembersFilterContacts({required this.query});

  /// [query] Query to search for
  final String query;

  static const String constructor = 'supergroupMembersFilterContacts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'query': query,
    '@type': constructor,
  };

  static SupergroupMembersFilterContacts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SupergroupMembersFilterContacts(
      query: (json['query'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns users which can be mentioned in the supergroup
@immutable
final class SupergroupMembersFilterMention extends SupergroupMembersFilter {
  SupergroupMembersFilterMention({required this.query, this.topicId});

  /// [query] Query to search for
  final String query;

  /// [topicId] Identifier of the topic in which the users will be mentioned;
  /// pass null if none
  final MessageTopic? topicId;

  static const String constructor = 'supergroupMembersFilterMention';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'query': query,
    'topic_id': topicId?.toJson(),
    '@type': constructor,
  };

  static SupergroupMembersFilterMention? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SupergroupMembersFilterMention(
      query: (json['query'] as String?) ?? '',
      topicId: MessageTopic.fromJson(tdMapFromJson(json['topic_id'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns recently active users in reverse chronological order
@immutable
final class SupergroupMembersFilterRecent extends SupergroupMembersFilter {
  const SupergroupMembersFilterRecent();

  static const String constructor = 'supergroupMembersFilterRecent';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SupergroupMembersFilterRecent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SupergroupMembersFilterRecent();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns restricted supergroup members; can be used only by administrators
@immutable
final class SupergroupMembersFilterRestricted extends SupergroupMembersFilter {
  SupergroupMembersFilterRestricted({required this.query});

  /// [query] Query to search for
  final String query;

  static const String constructor = 'supergroupMembersFilterRestricted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'query': query,
    '@type': constructor,
  };

  static SupergroupMembersFilterRestricted? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return SupergroupMembersFilterRestricted(
      query: (json['query'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Used to search for supergroup or channel members via a (string) query
@immutable
final class SupergroupMembersFilterSearch extends SupergroupMembersFilter {
  SupergroupMembersFilterSearch({required this.query});

  /// [query] Query to search for
  final String query;

  static const String constructor = 'supergroupMembersFilterSearch';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'query': query,
    '@type': constructor,
  };

  static SupergroupMembersFilterSearch? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SupergroupMembersFilterSearch(
      query: (json['query'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
