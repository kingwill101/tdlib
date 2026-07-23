import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs TDLib that the chat is closed by the user. Many useful activities
/// depend on the chat being opened or closed
/// Returns [Ok]
@immutable
final class CloseChat extends TdFunction {
  CloseChat({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  static const String constructor = 'closeChat';

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
