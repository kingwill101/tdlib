import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes why the current user can't add reactions to the message, despite
/// some other users can
@immutable
sealed class ReactionUnavailabilityReason extends TdObject {
  const ReactionUnavailabilityReason();

  static const String constructor = 'reactionUnavailabilityReason';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ReactionUnavailabilityReasonAnonymousAdministrator]
  /// [ReactionUnavailabilityReasonGuest]
  /// [ReactionUnavailabilityReasonRestricted]
  static ReactionUnavailabilityReason? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ReactionUnavailabilityReasonAnonymousAdministrator.constructor:
        return ReactionUnavailabilityReasonAnonymousAdministrator.fromJson(
          json,
        );

      case ReactionUnavailabilityReasonGuest.constructor:
        return ReactionUnavailabilityReasonGuest.fromJson(json);

      case ReactionUnavailabilityReasonRestricted.constructor:
        return ReactionUnavailabilityReasonRestricted.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is an anonymous administrator in the supergroup, but isn't a
/// creator of it, so they can't vote on behalf of the supergroup
@immutable
final class ReactionUnavailabilityReasonAnonymousAdministrator
    extends ReactionUnavailabilityReason {
  const ReactionUnavailabilityReasonAnonymousAdministrator();

  static const String constructor =
      'reactionUnavailabilityReasonAnonymousAdministrator';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ReactionUnavailabilityReasonAnonymousAdministrator? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const ReactionUnavailabilityReasonAnonymousAdministrator();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user isn't a member of the supergroup and can't send messages and
/// reactions there without joining
@immutable
final class ReactionUnavailabilityReasonGuest
    extends ReactionUnavailabilityReason {
  const ReactionUnavailabilityReasonGuest();

  static const String constructor = 'reactionUnavailabilityReasonGuest';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ReactionUnavailabilityReasonGuest? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const ReactionUnavailabilityReasonGuest();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is restricted in the chat
@immutable
final class ReactionUnavailabilityReasonRestricted
    extends ReactionUnavailabilityReason {
  const ReactionUnavailabilityReasonRestricted();

  static const String constructor = 'reactionUnavailabilityReasonRestricted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ReactionUnavailabilityReasonRestricted? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const ReactionUnavailabilityReasonRestricted();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
