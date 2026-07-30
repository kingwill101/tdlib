import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a list of stories
@immutable
sealed class StoryList extends TdObject {
  const StoryList();

  static const String constructor = 'storyList';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [StoryListArchive]
  /// [StoryListMain]
  static StoryList? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StoryListArchive.constructor:
        return StoryListArchive.fromJson(json);

      case StoryListMain.constructor:
        return StoryListMain.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of stories, shown in the Archive chat list
@immutable
final class StoryListArchive extends StoryList {
  const StoryListArchive();

  static const String constructor = 'storyListArchive';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static StoryListArchive? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StoryListArchive();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The list of stories, shown in the main chat list and folder chat lists
@immutable
final class StoryListMain extends StoryList {
  const StoryListMain();

  static const String constructor = 'storyListMain';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static StoryListMain? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StoryListMain();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
