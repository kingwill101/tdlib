import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes all messages sent by the specified message sender in a chat.
/// Supported only for supergroups; requires can_delete_messages administrator
/// right
/// Returns [Ok]
@immutable
final class DeleteChatMessagesBySender extends TdFunction {
  DeleteChatMessagesBySender({required this.chatId, this.senderId});

  /// [chatId] Chat identifier
  final int chatId;

  /// [senderId] Identifier of the sender of messages to delete
  final MessageSender? senderId;

  static const String constructor = 'deleteChatMessagesBySender';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'sender_id': senderId?.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
