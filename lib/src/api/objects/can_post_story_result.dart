import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents result of checking whether the current user can post a story on
/// behalf of the specific chat
@immutable
sealed class CanPostStoryResult extends TdObject {
  const CanPostStoryResult();

  static const String constructor = 'canPostStoryResult';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [CanPostStoryResultActiveStoryLimitExceeded]
  /// [CanPostStoryResultBoostNeeded]
  /// [CanPostStoryResultLiveStoryIsActive]
  /// [CanPostStoryResultMonthlyLimitExceeded]
  /// [CanPostStoryResultOk]
  /// [CanPostStoryResultPremiumNeeded]
  /// [CanPostStoryResultWeeklyLimitExceeded]
  static CanPostStoryResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CanPostStoryResultActiveStoryLimitExceeded.constructor:
        return CanPostStoryResultActiveStoryLimitExceeded.fromJson(json);

      case CanPostStoryResultBoostNeeded.constructor:
        return CanPostStoryResultBoostNeeded.fromJson(json);

      case CanPostStoryResultLiveStoryIsActive.constructor:
        return CanPostStoryResultLiveStoryIsActive.fromJson(json);

      case CanPostStoryResultMonthlyLimitExceeded.constructor:
        return CanPostStoryResultMonthlyLimitExceeded.fromJson(json);

      case CanPostStoryResultOk.constructor:
        return CanPostStoryResultOk.fromJson(json);

      case CanPostStoryResultPremiumNeeded.constructor:
        return CanPostStoryResultPremiumNeeded.fromJson(json);

      case CanPostStoryResultWeeklyLimitExceeded.constructor:
        return CanPostStoryResultWeeklyLimitExceeded.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The limit for the number of active stories exceeded. The user can buy
/// Telegram Premium, delete an active story, or wait for the oldest story to
/// expire
@immutable
final class CanPostStoryResultActiveStoryLimitExceeded
    extends CanPostStoryResult {
  const CanPostStoryResultActiveStoryLimitExceeded();

  static const String constructor =
      'canPostStoryResultActiveStoryLimitExceeded';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CanPostStoryResultActiveStoryLimitExceeded? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const CanPostStoryResultActiveStoryLimitExceeded();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat must be boosted first by Telegram Premium subscribers to post
/// more stories. Call getChatBoostStatus to get current boost status of the
/// chat
@immutable
final class CanPostStoryResultBoostNeeded extends CanPostStoryResult {
  const CanPostStoryResultBoostNeeded();

  static const String constructor = 'canPostStoryResultBoostNeeded';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CanPostStoryResultBoostNeeded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CanPostStoryResultBoostNeeded();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user or the chat has an active live story. The live story must be
/// deleted first
@immutable
final class CanPostStoryResultLiveStoryIsActive extends CanPostStoryResult {
  CanPostStoryResultLiveStoryIsActive({required this.storyId});

  /// [storyId] Identifier of the active live story
  final int storyId;

  static const String constructor = 'canPostStoryResultLiveStoryIsActive';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story_id': storyId,
    '@type': constructor,
  };

  static CanPostStoryResultLiveStoryIsActive? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return CanPostStoryResultLiveStoryIsActive(
      storyId: (json['story_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The monthly limit for the number of posted stories exceeded. The user
/// needs to buy Telegram Premium or wait specified time
@immutable
final class CanPostStoryResultMonthlyLimitExceeded extends CanPostStoryResult {
  CanPostStoryResultMonthlyLimitExceeded({required this.retryAfter});

  /// [retryAfter] Time left before the user can post the next story, in seconds
  final int retryAfter;

  static const String constructor = 'canPostStoryResultMonthlyLimitExceeded';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'retry_after': retryAfter,
    '@type': constructor,
  };

  static CanPostStoryResultMonthlyLimitExceeded? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return CanPostStoryResultMonthlyLimitExceeded(
      retryAfter: (json['retry_after'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A story can be sent
@immutable
final class CanPostStoryResultOk extends CanPostStoryResult {
  CanPostStoryResultOk({required this.storyCount});

  /// [storyCount] Number of stories that can be posted by the user
  final int storyCount;

  static const String constructor = 'canPostStoryResultOk';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story_count': storyCount,
    '@type': constructor,
  };

  static CanPostStoryResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CanPostStoryResultOk(storyCount: (json['story_count'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user must subscribe to Telegram Premium to be able to post stories
@immutable
final class CanPostStoryResultPremiumNeeded extends CanPostStoryResult {
  const CanPostStoryResultPremiumNeeded();

  static const String constructor = 'canPostStoryResultPremiumNeeded';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CanPostStoryResultPremiumNeeded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CanPostStoryResultPremiumNeeded();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The weekly limit for the number of posted stories exceeded. The user needs
/// to buy Telegram Premium or wait specified time
@immutable
final class CanPostStoryResultWeeklyLimitExceeded extends CanPostStoryResult {
  CanPostStoryResultWeeklyLimitExceeded({required this.retryAfter});

  /// [retryAfter] Time left before the user can post the next story, in seconds
  final int retryAfter;

  static const String constructor = 'canPostStoryResultWeeklyLimitExceeded';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'retry_after': retryAfter,
    '@type': constructor,
  };

  static CanPostStoryResultWeeklyLimitExceeded? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return CanPostStoryResultWeeklyLimitExceeded(
      retryAfter: (json['retry_after'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
