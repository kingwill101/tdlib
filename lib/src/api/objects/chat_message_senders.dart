import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of message senders, which can be used to send messages
/// in a chat
@immutable
final class ChatMessageSenders extends TdObject {
  ChatMessageSenders({required this.senders});

  /// [senders] List of available message senders
  final List<ChatMessageSender> senders;

  static const String constructor = 'chatMessageSenders';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'senders': senders.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static ChatMessageSenders? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMessageSenders(
      senders: List<ChatMessageSender>.from(
        tdListFromJson(json['senders'])
            .map((item) => ChatMessageSender.fromJson(tdMapFromJson(item)))
            .whereType<ChatMessageSender>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
