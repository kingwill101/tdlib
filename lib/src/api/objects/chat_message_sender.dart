import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a message sender, which can be used to send messages in a chat
@immutable
final class ChatMessageSender extends TdObject {
  ChatMessageSender({this.sender, required this.needsPremium});

  /// [sender] The message sender
  final MessageSender? sender;

  /// [needsPremium] True, if Telegram Premium is needed to use the message
  /// sender
  final bool needsPremium;

  static const String constructor = 'chatMessageSender';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sender': sender?.toJson(),
    'needs_premium': needsPremium,
    '@type': constructor,
  };

  static ChatMessageSender? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMessageSender(
      sender: MessageSender.fromJson(tdMapFromJson(json['sender'])),
      needsPremium: (json['needs_premium'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
