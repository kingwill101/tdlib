import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes state of active stories posted by a chat
@immutable
sealed class ActiveStoryState extends TdObject {
  const ActiveStoryState();

  static const String constructor = 'activeStoryState';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ActiveStoryStateLive]
  /// [ActiveStoryStateRead]
  /// [ActiveStoryStateUnread]
  static ActiveStoryState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ActiveStoryStateLive.constructor:
        return ActiveStoryStateLive.fromJson(json);

      case ActiveStoryStateRead.constructor:
        return ActiveStoryStateRead.fromJson(json);

      case ActiveStoryStateUnread.constructor:
        return ActiveStoryStateUnread.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat has an active live story
@immutable
final class ActiveStoryStateLive extends ActiveStoryState {
  ActiveStoryStateLive({required this.storyId});

  /// [storyId] Identifier of the active live story
  final int storyId;

  static const String constructor = 'activeStoryStateLive';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story_id': storyId,
    '@type': constructor,
  };

  static ActiveStoryStateLive? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ActiveStoryStateLive(storyId: (json['story_id'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat has active stories, all of which were read
@immutable
final class ActiveStoryStateRead extends ActiveStoryState {
  const ActiveStoryStateRead();

  static const String constructor = 'activeStoryStateRead';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ActiveStoryStateRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ActiveStoryStateRead();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat has some unread active stories
@immutable
final class ActiveStoryStateUnread extends ActiveStoryState {
  const ActiveStoryStateUnread();

  static const String constructor = 'activeStoryStateUnread';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ActiveStoryStateUnread? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ActiveStoryStateUnread();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
