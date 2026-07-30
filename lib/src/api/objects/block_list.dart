import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of block list
@immutable
sealed class BlockList extends TdObject {
  const BlockList();

  static const String constructor = 'blockList';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [BlockListMain]
  /// [BlockListStories]
  static BlockList? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case BlockListMain.constructor:
        return BlockListMain.fromJson(json);

      case BlockListStories.constructor:
        return BlockListStories.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The main block list that disallows writing messages to the current user,
/// receiving their status and photo, viewing of stories, and some other
/// actions
@immutable
final class BlockListMain extends BlockList {
  const BlockListMain();

  static const String constructor = 'blockListMain';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static BlockListMain? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BlockListMain();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The block list that disallows viewing of stories of the current user
@immutable
final class BlockListStories extends BlockList {
  const BlockListStories();

  static const String constructor = 'blockListStories';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static BlockListStories? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BlockListStories();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
