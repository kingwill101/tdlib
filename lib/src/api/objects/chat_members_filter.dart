import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Specifies the kind of chat members to return in searchChatMembers
@immutable
sealed class ChatMembersFilter extends TdObject {
  const ChatMembersFilter();

  static const String constructor = 'chatMembersFilter';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ChatMembersFilterAdministrators]
  /// [ChatMembersFilterBanned]
  /// [ChatMembersFilterBots]
  /// [ChatMembersFilterContacts]
  /// [ChatMembersFilterMembers]
  /// [ChatMembersFilterMention]
  /// [ChatMembersFilterRestricted]
  static ChatMembersFilter? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatMembersFilterAdministrators.constructor:
        return ChatMembersFilterAdministrators.fromJson(json);

      case ChatMembersFilterBanned.constructor:
        return ChatMembersFilterBanned.fromJson(json);

      case ChatMembersFilterBots.constructor:
        return ChatMembersFilterBots.fromJson(json);

      case ChatMembersFilterContacts.constructor:
        return ChatMembersFilterContacts.fromJson(json);

      case ChatMembersFilterMembers.constructor:
        return ChatMembersFilterMembers.fromJson(json);

      case ChatMembersFilterMention.constructor:
        return ChatMembersFilterMention.fromJson(json);

      case ChatMembersFilterRestricted.constructor:
        return ChatMembersFilterRestricted.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns the owner and administrators
@immutable
final class ChatMembersFilterAdministrators extends ChatMembersFilter {
  const ChatMembersFilterAdministrators();

  static const String constructor = 'chatMembersFilterAdministrators';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatMembersFilterAdministrators? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatMembersFilterAdministrators();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns users banned from the chat; can be used only by administrators in
/// a supergroup or in a channel
@immutable
final class ChatMembersFilterBanned extends ChatMembersFilter {
  const ChatMembersFilterBanned();

  static const String constructor = 'chatMembersFilterBanned';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatMembersFilterBanned? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatMembersFilterBanned();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns bot members of the chat
@immutable
final class ChatMembersFilterBots extends ChatMembersFilter {
  const ChatMembersFilterBots();

  static const String constructor = 'chatMembersFilterBots';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatMembersFilterBots? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatMembersFilterBots();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns contacts of the user
@immutable
final class ChatMembersFilterContacts extends ChatMembersFilter {
  const ChatMembersFilterContacts();

  static const String constructor = 'chatMembersFilterContacts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatMembersFilterContacts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatMembersFilterContacts();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns all chat members, including restricted chat members
@immutable
final class ChatMembersFilterMembers extends ChatMembersFilter {
  const ChatMembersFilterMembers();

  static const String constructor = 'chatMembersFilterMembers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatMembersFilterMembers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatMembersFilterMembers();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns users which can be mentioned in the chat
@immutable
final class ChatMembersFilterMention extends ChatMembersFilter {
  ChatMembersFilterMention({this.topicId});

  /// [topicId] Identifier of the topic in which the users will be mentioned;
  /// pass null if none
  final MessageTopic? topicId;

  static const String constructor = 'chatMembersFilterMention';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'topic_id': topicId?.toJson(),
    '@type': constructor,
  };

  static ChatMembersFilterMention? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMembersFilterMention(
      topicId: MessageTopic.fromJson(tdMapFromJson(json['topic_id'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns users under certain restrictions in the chat; can be used only by
/// administrators in a supergroup
@immutable
final class ChatMembersFilterRestricted extends ChatMembersFilter {
  const ChatMembersFilterRestricted();

  static const String constructor = 'chatMembersFilterRestricted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatMembersFilterRestricted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatMembersFilterRestricted();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
