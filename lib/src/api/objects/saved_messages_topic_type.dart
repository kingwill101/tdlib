import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of Saved Messages topic
@immutable
sealed class SavedMessagesTopicType extends TdObject {
  const SavedMessagesTopicType();

  static const String constructor = 'savedMessagesTopicType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [SavedMessagesTopicTypeAuthorHidden]
  /// [SavedMessagesTopicTypeMyNotes]
  /// [SavedMessagesTopicTypeSavedFromChat]
  static SavedMessagesTopicType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SavedMessagesTopicTypeAuthorHidden.constructor:
        return SavedMessagesTopicTypeAuthorHidden.fromJson(json);

      case SavedMessagesTopicTypeMyNotes.constructor:
        return SavedMessagesTopicTypeMyNotes.fromJson(json);

      case SavedMessagesTopicTypeSavedFromChat.constructor:
        return SavedMessagesTopicTypeSavedFromChat.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Topic containing messages forwarded from a user with hidden privacy
@immutable
final class SavedMessagesTopicTypeAuthorHidden extends SavedMessagesTopicType {
  const SavedMessagesTopicTypeAuthorHidden();

  static const String constructor = 'savedMessagesTopicTypeAuthorHidden';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SavedMessagesTopicTypeAuthorHidden? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const SavedMessagesTopicTypeAuthorHidden();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Topic containing messages sent by the current user of forwarded from an
/// unknown chat
@immutable
final class SavedMessagesTopicTypeMyNotes extends SavedMessagesTopicType {
  const SavedMessagesTopicTypeMyNotes();

  static const String constructor = 'savedMessagesTopicTypeMyNotes';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SavedMessagesTopicTypeMyNotes? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SavedMessagesTopicTypeMyNotes();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Topic containing messages forwarded from a specific chat
@immutable
final class SavedMessagesTopicTypeSavedFromChat extends SavedMessagesTopicType {
  SavedMessagesTopicTypeSavedFromChat({required this.chatId});

  /// [chatId] Identifier of the chat
  final int chatId;

  static const String constructor = 'savedMessagesTopicTypeSavedFromChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    '@type': constructor,
  };

  static SavedMessagesTopicTypeSavedFromChat? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return SavedMessagesTopicTypeSavedFromChat(
      chatId: (json['chat_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
