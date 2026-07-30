import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a file with messages exported from another app
@immutable
sealed class MessageFileType extends TdObject {
  const MessageFileType();

  static const String constructor = 'messageFileType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [MessageFileTypeGroup]
  /// [MessageFileTypePrivate]
  /// [MessageFileTypeUnknown]
  static MessageFileType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageFileTypeGroup.constructor:
        return MessageFileTypeGroup.fromJson(json);

      case MessageFileTypePrivate.constructor:
        return MessageFileTypePrivate.fromJson(json);

      case MessageFileTypeUnknown.constructor:
        return MessageFileTypeUnknown.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The messages were exported from a group chat
@immutable
final class MessageFileTypeGroup extends MessageFileType {
  MessageFileTypeGroup({required this.title});

  /// [title] Title of the group chat; may be empty if unrecognized
  final String title;

  static const String constructor = 'messageFileTypeGroup';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'title': title,
    '@type': constructor,
  };

  static MessageFileTypeGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageFileTypeGroup(title: (json['title'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The messages were exported from a private chat
@immutable
final class MessageFileTypePrivate extends MessageFileType {
  MessageFileTypePrivate({required this.name});

  /// [name] Name of the other party; may be empty if unrecognized
  final String name;

  static const String constructor = 'messageFileTypePrivate';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'name': name,
    '@type': constructor,
  };

  static MessageFileTypePrivate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageFileTypePrivate(name: (json['name'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The messages were exported from a chat of unknown type
@immutable
final class MessageFileTypeUnknown extends MessageFileType {
  const MessageFileTypeUnknown();

  static const String constructor = 'messageFileTypeUnknown';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageFileTypeUnknown? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageFileTypeUnknown();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
