import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a chat member joined a chat via an invite link
@immutable
final class ChatInviteLinkMember extends TdObject {
  ChatInviteLinkMember({
    required this.userId,
    required this.joinedChatDate,
    required this.viaChatFolderInviteLink,
    required this.approverUserId,
  });

  /// [userId] User identifier
  final int userId;

  /// [joinedChatDate] Point in time (Unix timestamp) when the user joined the
  /// chat
  final int joinedChatDate;

  /// [viaChatFolderInviteLink] True, if the user has joined the chat using an
  /// invite link for a chat folder
  final bool viaChatFolderInviteLink;

  /// [approverUserId] User identifier of the chat administrator, approved user
  /// join request
  final int approverUserId;

  static const String constructor = 'chatInviteLinkMember';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'joined_chat_date': joinedChatDate,
    'via_chat_folder_invite_link': viaChatFolderInviteLink,
    'approver_user_id': approverUserId,
    '@type': constructor,
  };

  static ChatInviteLinkMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatInviteLinkMember(
      userId: (json['user_id'] as int?) ?? 0,
      joinedChatDate: (json['joined_chat_date'] as int?) ?? 0,
      viaChatFolderInviteLink:
          (json['via_chat_folder_invite_link'] as bool?) ?? false,
      approverUserId: (json['approver_user_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
