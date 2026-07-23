import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Reason of vote restriction in the poll for the current user
@immutable
sealed class PollVoteRestrictionReason extends TdObject {
  const PollVoteRestrictionReason();

  static const String constructor = 'pollVoteRestrictionReason';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [PollVoteRestrictionReasonClosed]
  /// [PollVoteRestrictionReasonCountryRestricted]
  /// [PollVoteRestrictionReasonMembershipRequired]
  /// [PollVoteRestrictionReasonOther]
  /// [PollVoteRestrictionReasonScheduled]
  /// [PollVoteRestrictionReasonYetUnsent]
  static PollVoteRestrictionReason? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PollVoteRestrictionReasonClosed.constructor:
        return PollVoteRestrictionReasonClosed.fromJson(json);

      case PollVoteRestrictionReasonCountryRestricted.constructor:
        return PollVoteRestrictionReasonCountryRestricted.fromJson(json);

      case PollVoteRestrictionReasonMembershipRequired.constructor:
        return PollVoteRestrictionReasonMembershipRequired.fromJson(json);

      case PollVoteRestrictionReasonOther.constructor:
        return PollVoteRestrictionReasonOther.fromJson(json);

      case PollVoteRestrictionReasonScheduled.constructor:
        return PollVoteRestrictionReasonScheduled.fromJson(json);

      case PollVoteRestrictionReasonYetUnsent.constructor:
        return PollVoteRestrictionReasonYetUnsent.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The poll is closed
@immutable
final class PollVoteRestrictionReasonClosed extends PollVoteRestrictionReason {
  const PollVoteRestrictionReasonClosed();

  static const String constructor = 'pollVoteRestrictionReasonClosed';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PollVoteRestrictionReasonClosed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PollVoteRestrictionReasonClosed();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is from a country, users from which aren't allowed to vote
@immutable
final class PollVoteRestrictionReasonCountryRestricted
    extends PollVoteRestrictionReason {
  PollVoteRestrictionReasonCountryRestricted({required this.countryCode});

  /// [countryCode] Two-letter ISO 3166-1 alpha-2 code of the current user's
  /// country
  final String countryCode;

  static const String constructor =
      'pollVoteRestrictionReasonCountryRestricted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'country_code': countryCode,
    '@type': constructor,
  };

  static PollVoteRestrictionReasonCountryRestricted? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PollVoteRestrictionReasonCountryRestricted(
      countryCode: (json['country_code'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user must be a member of the chat for at least a day to vote
@immutable
final class PollVoteRestrictionReasonMembershipRequired
    extends PollVoteRestrictionReason {
  PollVoteRestrictionReasonMembershipRequired({required this.chatId});

  /// [chatId] Identifier of the chat which must be joined for at least a day
  /// before the user can vote
  final int chatId;

  static const String constructor =
      'pollVoteRestrictionReasonMembershipRequired';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    '@type': constructor,
  };

  static PollVoteRestrictionReasonMembershipRequired? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PollVoteRestrictionReasonMembershipRequired(
      chatId: (json['chat_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The poll can't be voted by the user due to some other reason
@immutable
final class PollVoteRestrictionReasonOther extends PollVoteRestrictionReason {
  const PollVoteRestrictionReasonOther();

  static const String constructor = 'pollVoteRestrictionReasonOther';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PollVoteRestrictionReasonOther? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PollVoteRestrictionReasonOther();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The poll is from a scheduled message
@immutable
final class PollVoteRestrictionReasonScheduled
    extends PollVoteRestrictionReason {
  const PollVoteRestrictionReasonScheduled();

  static const String constructor = 'pollVoteRestrictionReasonScheduled';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PollVoteRestrictionReasonScheduled? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PollVoteRestrictionReasonScheduled();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The poll isn't sent yet
@immutable
final class PollVoteRestrictionReasonYetUnsent
    extends PollVoteRestrictionReason {
  const PollVoteRestrictionReasonYetUnsent();

  static const String constructor = 'pollVoteRestrictionReasonYetUnsent';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PollVoteRestrictionReasonYetUnsent? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PollVoteRestrictionReasonYetUnsent();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
