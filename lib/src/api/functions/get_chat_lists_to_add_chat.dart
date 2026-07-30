import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns chat lists to which the chat can be added. This is an offline
/// method
/// Returns [ChatLists]
@immutable
final class GetChatListsToAddChat extends TdFunction {
  GetChatListsToAddChat({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  static const String constructor = 'getChatListsToAddChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
