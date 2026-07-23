import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about an invite link to a chat folder
@immutable
final class ChatFolderInviteLinkInfo extends TdObject {
  ChatFolderInviteLinkInfo({
    this.chatFolderInfo,
    required this.missingChatIds,
    required this.addedChatIds,
  });

  /// [chatFolderInfo] Basic information about the chat folder; chat folder
  /// identifier will be 0 if the user didn't have the chat folder yet
  final ChatFolderInfo? chatFolderInfo;

  /// [missingChatIds] Identifiers of the chats from the link, which aren't
  /// added to the folder yet
  final List<int> missingChatIds;

  /// [addedChatIds] Identifiers of the chats from the link, which are added to
  /// the folder already
  final List<int> addedChatIds;

  static const String constructor = 'chatFolderInviteLinkInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_folder_info': chatFolderInfo?.toJson(),
    'missing_chat_ids': missingChatIds.map((item) => item).toList(),
    'added_chat_ids': addedChatIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static ChatFolderInviteLinkInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatFolderInviteLinkInfo(
      chatFolderInfo: ChatFolderInfo.fromJson(
        tdMapFromJson(json['chat_folder_info']),
      ),
      missingChatIds: List<int>.from(
        tdListFromJson(
          json['missing_chat_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      addedChatIds: List<int>.from(
        tdListFromJson(
          json['added_chat_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
