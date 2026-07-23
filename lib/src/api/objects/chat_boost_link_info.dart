import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a link to boost a chat
@immutable
final class ChatBoostLinkInfo extends TdObject {
  ChatBoostLinkInfo({required this.isPublic, required this.chatId});

  /// [isPublic] True, if the link will work for non-members of the chat
  final bool isPublic;

  /// [chatId] Identifier of the chat to which the link points; 0 if the chat
  /// isn't found
  final int chatId;

  static const String constructor = 'chatBoostLinkInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_public': isPublic,
    'chat_id': chatId,
    '@type': constructor,
  };

  static ChatBoostLinkInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatBoostLinkInfo(
      isPublic: (json['is_public'] as bool?) ?? false,
      chatId: (json['chat_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
