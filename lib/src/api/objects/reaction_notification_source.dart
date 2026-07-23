import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes sources of reactions for which notifications will be shown
@immutable
sealed class ReactionNotificationSource extends TdObject {
  const ReactionNotificationSource();

  static const String constructor = 'reactionNotificationSource';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ReactionNotificationSourceAll]
  /// [ReactionNotificationSourceContacts]
  /// [ReactionNotificationSourceNone]
  static ReactionNotificationSource? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ReactionNotificationSourceAll.constructor:
        return ReactionNotificationSourceAll.fromJson(json);

      case ReactionNotificationSourceContacts.constructor:
        return ReactionNotificationSourceContacts.fromJson(json);

      case ReactionNotificationSourceNone.constructor:
        return ReactionNotificationSourceNone.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Notifications for reactions are shown for all reactions
@immutable
final class ReactionNotificationSourceAll extends ReactionNotificationSource {
  const ReactionNotificationSourceAll();

  static const String constructor = 'reactionNotificationSourceAll';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ReactionNotificationSourceAll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReactionNotificationSourceAll();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Notifications for reactions are shown only for reactions from contacts
@immutable
final class ReactionNotificationSourceContacts
    extends ReactionNotificationSource {
  const ReactionNotificationSourceContacts();

  static const String constructor = 'reactionNotificationSourceContacts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ReactionNotificationSourceContacts? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const ReactionNotificationSourceContacts();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Notifications for reactions are disabled
@immutable
final class ReactionNotificationSourceNone extends ReactionNotificationSource {
  const ReactionNotificationSourceNone();

  static const String constructor = 'reactionNotificationSourceNone';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ReactionNotificationSourceNone? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReactionNotificationSourceNone();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
