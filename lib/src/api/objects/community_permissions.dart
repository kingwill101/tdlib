import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes actions that a user is allowed to take in a community
@immutable
final class CommunityPermissions extends TdObject {
  CommunityPermissions({required this.canEditChatList});

  /// [canEditChatList] True, if the user can change the chats added to the
  /// community
  final bool canEditChatList;

  static const String constructor = 'communityPermissions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'can_edit_chat_list': canEditChatList,
    '@type': constructor,
  };

  static CommunityPermissions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CommunityPermissions(
      canEditChatList: (json['can_edit_chat_list'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
