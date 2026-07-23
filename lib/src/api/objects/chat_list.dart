import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a list of chats
@immutable
sealed class ChatList extends TdObject {
  const ChatList();

  static const String constructor = 'chatList';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ChatListArchive]
  /// [ChatListFolder]
  /// [ChatListMain]
  static ChatList? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatListArchive.constructor:
        return ChatListArchive.fromJson(json);

      case ChatListFolder.constructor:
        return ChatListFolder.fromJson(json);

      case ChatListMain.constructor:
        return ChatListMain.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A list of chats usually located at the top of the main chat list. Unmuted
/// chats are automatically moved from the Archive to the Main chat list when
/// a new message arrives
@immutable
final class ChatListArchive extends ChatList {
  const ChatListArchive();

  static const String constructor = 'chatListArchive';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatListArchive? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatListArchive();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A list of chats added to a chat folder
@immutable
final class ChatListFolder extends ChatList {
  ChatListFolder({required this.chatFolderId});

  /// [chatFolderId] Chat folder identifier
  final int chatFolderId;

  static const String constructor = 'chatListFolder';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_folder_id': chatFolderId,
    '@type': constructor,
  };

  static ChatListFolder? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatListFolder(chatFolderId: (json['chat_folder_id'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A main list of chats
@immutable
final class ChatListMain extends ChatList {
  const ChatListMain();

  static const String constructor = 'chatListMain';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatListMain? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatListMain();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
