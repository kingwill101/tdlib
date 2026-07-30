import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Marks all reactions in a chat as read
/// Returns [Ok]
@immutable
final class ReadAllChatReactions extends TdFunction {
  ReadAllChatReactions({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  static const String constructor = 'readAllChatReactions';

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
