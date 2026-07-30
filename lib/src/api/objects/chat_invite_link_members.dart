import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of chat members joined a chat via an invite link
@immutable
final class ChatInviteLinkMembers extends TdObject {
  ChatInviteLinkMembers({required this.totalCount, required this.members});

  /// [totalCount] Approximate total number of chat members found
  final int totalCount;

  /// [members] List of chat members, joined a chat via an invite link
  final List<ChatInviteLinkMember> members;

  static const String constructor = 'chatInviteLinkMembers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'members': members.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static ChatInviteLinkMembers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatInviteLinkMembers(
      totalCount: (json['total_count'] as int?) ?? 0,
      members: List<ChatInviteLinkMember>.from(
        tdListFromJson(json['members'])
            .map((item) => ChatInviteLinkMember.fromJson(tdMapFromJson(item)))
            .whereType<ChatInviteLinkMember>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
