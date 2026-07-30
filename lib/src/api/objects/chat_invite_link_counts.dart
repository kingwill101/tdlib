import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of chat invite link counts
@immutable
final class ChatInviteLinkCounts extends TdObject {
  ChatInviteLinkCounts({required this.inviteLinkCounts});

  /// [inviteLinkCounts] List of invite link counts
  final List<ChatInviteLinkCount> inviteLinkCounts;

  static const String constructor = 'chatInviteLinkCounts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'invite_link_counts': inviteLinkCounts
        .map((item) => item.toJson())
        .toList(),
    '@type': constructor,
  };

  static ChatInviteLinkCounts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatInviteLinkCounts(
      inviteLinkCounts: List<ChatInviteLinkCount>.from(
        tdListFromJson(json['invite_link_counts'])
            .map((item) => ChatInviteLinkCount.fromJson(tdMapFromJson(item)))
            .whereType<ChatInviteLinkCount>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
