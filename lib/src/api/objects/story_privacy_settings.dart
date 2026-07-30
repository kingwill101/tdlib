import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes privacy settings of a story
@immutable
sealed class StoryPrivacySettings extends TdObject {
  const StoryPrivacySettings();

  static const String constructor = 'storyPrivacySettings';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [StoryPrivacySettingsCloseFriends]
  /// [StoryPrivacySettingsContacts]
  /// [StoryPrivacySettingsEveryone]
  /// [StoryPrivacySettingsSelectedUsers]
  static StoryPrivacySettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StoryPrivacySettingsCloseFriends.constructor:
        return StoryPrivacySettingsCloseFriends.fromJson(json);

      case StoryPrivacySettingsContacts.constructor:
        return StoryPrivacySettingsContacts.fromJson(json);

      case StoryPrivacySettingsEveryone.constructor:
        return StoryPrivacySettingsEveryone.fromJson(json);

      case StoryPrivacySettingsSelectedUsers.constructor:
        return StoryPrivacySettingsSelectedUsers.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The story can be viewed by all close friends
@immutable
final class StoryPrivacySettingsCloseFriends extends StoryPrivacySettings {
  const StoryPrivacySettingsCloseFriends();

  static const String constructor = 'storyPrivacySettingsCloseFriends';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static StoryPrivacySettingsCloseFriends? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const StoryPrivacySettingsCloseFriends();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The story can be viewed by all contacts except chosen users
@immutable
final class StoryPrivacySettingsContacts extends StoryPrivacySettings {
  StoryPrivacySettingsContacts({required this.exceptUserIds});

  /// [exceptUserIds] User identifiers of the contacts that can't see the story;
  /// always unknown and empty for non-owned stories
  final List<int> exceptUserIds;

  static const String constructor = 'storyPrivacySettingsContacts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'except_user_ids': exceptUserIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static StoryPrivacySettingsContacts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryPrivacySettingsContacts(
      exceptUserIds: List<int>.from(
        tdListFromJson(
          json['except_user_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The story can be viewed by everyone
@immutable
final class StoryPrivacySettingsEveryone extends StoryPrivacySettings {
  StoryPrivacySettingsEveryone({required this.exceptUserIds});

  /// [exceptUserIds] Identifiers of the users that can't see the story; always
  /// unknown and empty for non-owned stories
  final List<int> exceptUserIds;

  static const String constructor = 'storyPrivacySettingsEveryone';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'except_user_ids': exceptUserIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static StoryPrivacySettingsEveryone? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryPrivacySettingsEveryone(
      exceptUserIds: List<int>.from(
        tdListFromJson(
          json['except_user_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The story can be viewed by certain specified users
@immutable
final class StoryPrivacySettingsSelectedUsers extends StoryPrivacySettings {
  StoryPrivacySettingsSelectedUsers({required this.userIds});

  /// [userIds] Identifiers of the users; always unknown and empty for non-owned
  /// stories
  final List<int> userIds;

  static const String constructor = 'storyPrivacySettingsSelectedUsers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_ids': userIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static StoryPrivacySettingsSelectedUsers? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StoryPrivacySettingsSelectedUsers(
      userIds: List<int>.from(
        tdListFromJson(
          json['user_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
