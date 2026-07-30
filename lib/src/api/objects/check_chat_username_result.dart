import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents result of checking whether a username can be set for a chat
@immutable
sealed class CheckChatUsernameResult extends TdObject {
  const CheckChatUsernameResult();

  static const String constructor = 'checkChatUsernameResult';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [CheckChatUsernameResultOk]
  /// [CheckChatUsernameResultPublicChatsTooMany]
  /// [CheckChatUsernameResultPublicGroupsUnavailable]
  /// [CheckChatUsernameResultUsernameInvalid]
  /// [CheckChatUsernameResultUsernameOccupied]
  /// [CheckChatUsernameResultUsernamePurchasable]
  static CheckChatUsernameResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CheckChatUsernameResultOk.constructor:
        return CheckChatUsernameResultOk.fromJson(json);

      case CheckChatUsernameResultPublicChatsTooMany.constructor:
        return CheckChatUsernameResultPublicChatsTooMany.fromJson(json);

      case CheckChatUsernameResultPublicGroupsUnavailable.constructor:
        return CheckChatUsernameResultPublicGroupsUnavailable.fromJson(json);

      case CheckChatUsernameResultUsernameInvalid.constructor:
        return CheckChatUsernameResultUsernameInvalid.fromJson(json);

      case CheckChatUsernameResultUsernameOccupied.constructor:
        return CheckChatUsernameResultUsernameOccupied.fromJson(json);

      case CheckChatUsernameResultUsernamePurchasable.constructor:
        return CheckChatUsernameResultUsernamePurchasable.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The username can be set
@immutable
final class CheckChatUsernameResultOk extends CheckChatUsernameResult {
  const CheckChatUsernameResultOk();

  static const String constructor = 'checkChatUsernameResultOk';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CheckChatUsernameResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CheckChatUsernameResultOk();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user has too many chats with username, one of them must be made
/// private first
@immutable
final class CheckChatUsernameResultPublicChatsTooMany
    extends CheckChatUsernameResult {
  const CheckChatUsernameResultPublicChatsTooMany();

  static const String constructor = 'checkChatUsernameResultPublicChatsTooMany';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CheckChatUsernameResultPublicChatsTooMany? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const CheckChatUsernameResultPublicChatsTooMany();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user can't be a member of a public supergroup
@immutable
final class CheckChatUsernameResultPublicGroupsUnavailable
    extends CheckChatUsernameResult {
  const CheckChatUsernameResultPublicGroupsUnavailable();

  static const String constructor =
      'checkChatUsernameResultPublicGroupsUnavailable';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CheckChatUsernameResultPublicGroupsUnavailable? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const CheckChatUsernameResultPublicGroupsUnavailable();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The username is invalid
@immutable
final class CheckChatUsernameResultUsernameInvalid
    extends CheckChatUsernameResult {
  const CheckChatUsernameResultUsernameInvalid();

  static const String constructor = 'checkChatUsernameResultUsernameInvalid';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CheckChatUsernameResultUsernameInvalid? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const CheckChatUsernameResultUsernameInvalid();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The username is occupied
@immutable
final class CheckChatUsernameResultUsernameOccupied
    extends CheckChatUsernameResult {
  const CheckChatUsernameResultUsernameOccupied();

  static const String constructor = 'checkChatUsernameResultUsernameOccupied';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CheckChatUsernameResultUsernameOccupied? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const CheckChatUsernameResultUsernameOccupied();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The username can be purchased at https://fragment.com. Information about
/// the username can be received using getCollectibleItemInfo
@immutable
final class CheckChatUsernameResultUsernamePurchasable
    extends CheckChatUsernameResult {
  const CheckChatUsernameResultUsernamePurchasable();

  static const String constructor =
      'checkChatUsernameResultUsernamePurchasable';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CheckChatUsernameResultUsernamePurchasable? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const CheckChatUsernameResultUsernamePurchasable();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
