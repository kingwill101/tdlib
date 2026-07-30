import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the reason why a call was discarded
@immutable
sealed class CallDiscardReason extends TdObject {
  const CallDiscardReason();

  static const String constructor = 'callDiscardReason';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [CallDiscardReasonDeclined]
  /// [CallDiscardReasonDisconnected]
  /// [CallDiscardReasonEmpty]
  /// [CallDiscardReasonHungUp]
  /// [CallDiscardReasonMissed]
  /// [CallDiscardReasonUpgradeToGroupCall]
  static CallDiscardReason? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CallDiscardReasonDeclined.constructor:
        return CallDiscardReasonDeclined.fromJson(json);

      case CallDiscardReasonDisconnected.constructor:
        return CallDiscardReasonDisconnected.fromJson(json);

      case CallDiscardReasonEmpty.constructor:
        return CallDiscardReasonEmpty.fromJson(json);

      case CallDiscardReasonHungUp.constructor:
        return CallDiscardReasonHungUp.fromJson(json);

      case CallDiscardReasonMissed.constructor:
        return CallDiscardReasonMissed.fromJson(json);

      case CallDiscardReasonUpgradeToGroupCall.constructor:
        return CallDiscardReasonUpgradeToGroupCall.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The call was ended before the conversation started. It was declined by the
/// other party
@immutable
final class CallDiscardReasonDeclined extends CallDiscardReason {
  const CallDiscardReasonDeclined();

  static const String constructor = 'callDiscardReasonDeclined';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CallDiscardReasonDeclined? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallDiscardReasonDeclined();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The call was ended during the conversation because the users were
/// disconnected
@immutable
final class CallDiscardReasonDisconnected extends CallDiscardReason {
  const CallDiscardReasonDisconnected();

  static const String constructor = 'callDiscardReasonDisconnected';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CallDiscardReasonDisconnected? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallDiscardReasonDisconnected();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The call wasn't discarded, or the reason is unknown
@immutable
final class CallDiscardReasonEmpty extends CallDiscardReason {
  const CallDiscardReasonEmpty();

  static const String constructor = 'callDiscardReasonEmpty';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CallDiscardReasonEmpty? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallDiscardReasonEmpty();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The call was ended because one of the parties hung up
@immutable
final class CallDiscardReasonHungUp extends CallDiscardReason {
  const CallDiscardReasonHungUp();

  static const String constructor = 'callDiscardReasonHungUp';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CallDiscardReasonHungUp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallDiscardReasonHungUp();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The call was ended before the conversation started. It was canceled by the
/// caller or missed by the other party
@immutable
final class CallDiscardReasonMissed extends CallDiscardReason {
  const CallDiscardReasonMissed();

  static const String constructor = 'callDiscardReasonMissed';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CallDiscardReasonMissed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallDiscardReasonMissed();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The call was ended because it has been upgraded to a group call
@immutable
final class CallDiscardReasonUpgradeToGroupCall extends CallDiscardReason {
  CallDiscardReasonUpgradeToGroupCall({required this.inviteLink});

  /// [inviteLink] Invite link for the group call
  final String inviteLink;

  static const String constructor = 'callDiscardReasonUpgradeToGroupCall';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'invite_link': inviteLink,
    '@type': constructor,
  };

  static CallDiscardReasonUpgradeToGroupCall? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return CallDiscardReasonUpgradeToGroupCall(
      inviteLink: (json['invite_link'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
