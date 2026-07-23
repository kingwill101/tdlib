import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents result of checking whether the current session can be used to
/// transfer a chat ownership to another user
@immutable
sealed class CanTransferOwnershipResult extends TdObject {
  const CanTransferOwnershipResult();

  static const String constructor = 'canTransferOwnershipResult';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [CanTransferOwnershipResultOk]
  /// [CanTransferOwnershipResultPasswordNeeded]
  /// [CanTransferOwnershipResultPasswordTooFresh]
  /// [CanTransferOwnershipResultSessionTooFresh]
  static CanTransferOwnershipResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CanTransferOwnershipResultOk.constructor:
        return CanTransferOwnershipResultOk.fromJson(json);

      case CanTransferOwnershipResultPasswordNeeded.constructor:
        return CanTransferOwnershipResultPasswordNeeded.fromJson(json);

      case CanTransferOwnershipResultPasswordTooFresh.constructor:
        return CanTransferOwnershipResultPasswordTooFresh.fromJson(json);

      case CanTransferOwnershipResultSessionTooFresh.constructor:
        return CanTransferOwnershipResultSessionTooFresh.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session can be used
@immutable
final class CanTransferOwnershipResultOk extends CanTransferOwnershipResult {
  const CanTransferOwnershipResultOk();

  static const String constructor = 'canTransferOwnershipResultOk';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CanTransferOwnershipResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CanTransferOwnershipResultOk();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The 2-step verification needs to be enabled first
@immutable
final class CanTransferOwnershipResultPasswordNeeded
    extends CanTransferOwnershipResult {
  const CanTransferOwnershipResultPasswordNeeded();

  static const String constructor = 'canTransferOwnershipResultPasswordNeeded';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CanTransferOwnershipResultPasswordNeeded? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const CanTransferOwnershipResultPasswordNeeded();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The 2-step verification was enabled recently, user needs to wait
@immutable
final class CanTransferOwnershipResultPasswordTooFresh
    extends CanTransferOwnershipResult {
  CanTransferOwnershipResultPasswordTooFresh({required this.retryAfter});

  /// [retryAfter] Time left before the session can be used to transfer
  /// ownership of a chat, in seconds
  final int retryAfter;

  static const String constructor =
      'canTransferOwnershipResultPasswordTooFresh';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'retry_after': retryAfter,
    '@type': constructor,
  };

  static CanTransferOwnershipResultPasswordTooFresh? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return CanTransferOwnershipResultPasswordTooFresh(
      retryAfter: (json['retry_after'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The session was created recently, user needs to wait
@immutable
final class CanTransferOwnershipResultSessionTooFresh
    extends CanTransferOwnershipResult {
  CanTransferOwnershipResultSessionTooFresh({required this.retryAfter});

  /// [retryAfter] Time left before the session can be used to transfer
  /// ownership of a chat, in seconds
  final int retryAfter;

  static const String constructor = 'canTransferOwnershipResultSessionTooFresh';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'retry_after': retryAfter,
    '@type': constructor,
  };

  static CanTransferOwnershipResultSessionTooFresh? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return CanTransferOwnershipResultSessionTooFresh(
      retryAfter: (json['retry_after'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
