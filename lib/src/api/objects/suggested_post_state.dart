import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes state of a suggested post
@immutable
sealed class SuggestedPostState extends TdObject {
  const SuggestedPostState();

  static const String constructor = 'suggestedPostState';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [SuggestedPostStateApproved]
  /// [SuggestedPostStateDeclined]
  /// [SuggestedPostStatePending]
  static SuggestedPostState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SuggestedPostStateApproved.constructor:
        return SuggestedPostStateApproved.fromJson(json);

      case SuggestedPostStateDeclined.constructor:
        return SuggestedPostStateDeclined.fromJson(json);

      case SuggestedPostStatePending.constructor:
        return SuggestedPostStatePending.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The post was approved
@immutable
final class SuggestedPostStateApproved extends SuggestedPostState {
  const SuggestedPostStateApproved();

  static const String constructor = 'suggestedPostStateApproved';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SuggestedPostStateApproved? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedPostStateApproved();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The post was declined
@immutable
final class SuggestedPostStateDeclined extends SuggestedPostState {
  const SuggestedPostStateDeclined();

  static const String constructor = 'suggestedPostStateDeclined';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SuggestedPostStateDeclined? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedPostStateDeclined();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The post must be approved or declined
@immutable
final class SuggestedPostStatePending extends SuggestedPostState {
  const SuggestedPostStatePending();

  static const String constructor = 'suggestedPostStatePending';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SuggestedPostStatePending? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedPostStatePending();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
