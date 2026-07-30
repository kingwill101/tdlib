import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a user or a chat as a member of another chat
@immutable
final class ChatMember extends TdObject {
  ChatMember({
    this.memberId,
    required this.tag,
    required this.inviterUserId,
    required this.joinedChatDate,
    this.status,
  });

  /// [memberId] Identifier of the chat member. Currently, other chats can be
  /// only Left or Banned. Only supergroups and channels can have other chats as
  /// Left or Banned members and these chats must be supergroups or channels
  final MessageSender? memberId;

  /// [tag] Tag of the chat member or its custom title if the member is an
  /// administrator of the chat; 0-16 characters without emoji; applicable to
  /// basic groups and supergroups only
  final String tag;

  /// [inviterUserId] Identifier of a user who invited/promoted/banned this
  /// member in the chat; 0 if unknown
  final int inviterUserId;

  /// [joinedChatDate] Point in time (Unix timestamp) when the user joined/was
  /// promoted/was banned in the chat
  final int joinedChatDate;

  /// [status] Status of the member in the chat
  final ChatMemberStatus? status;

  static const String constructor = 'chatMember';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'member_id': memberId?.toJson(),
    'tag': tag,
    'inviter_user_id': inviterUserId,
    'joined_chat_date': joinedChatDate,
    'status': status?.toJson(),
    '@type': constructor,
  };

  static ChatMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMember(
      memberId: MessageSender.fromJson(tdMapFromJson(json['member_id'])),
      tag: (json['tag'] as String?) ?? '',
      inviterUserId: (json['inviter_user_id'] as int?) ?? 0,
      joinedChatDate: (json['joined_chat_date'] as int?) ?? 0,
      status: ChatMemberStatus.fromJson(tdMapFromJson(json['status'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
