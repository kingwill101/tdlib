import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of messages found by a search in a given chat
@immutable
final class FoundChatMessages extends TdObject {
  FoundChatMessages({
    required this.totalCount,
    required this.messages,
    required this.nextFromMessageId,
  });

  /// [totalCount] Approximate total number of messages found; -1 if unknown
  final int totalCount;

  /// [messages] List of messages
  final List<Message> messages;

  /// [nextFromMessageId] The offset for the next request. If 0, there are no
  /// more results
  final int nextFromMessageId;

  static const String constructor = 'foundChatMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'messages': messages.map((item) => item.toJson()).toList(),
    'next_from_message_id': nextFromMessageId,
    '@type': constructor,
  };

  static FoundChatMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FoundChatMessages(
      totalCount: (json['total_count'] as int?) ?? 0,
      messages: List<Message>.from(
        tdListFromJson(json['messages'])
            .map((item) => Message.fromJson(tdMapFromJson(item)))
            .whereType<Message>(),
      ),
      nextFromMessageId: (json['next_from_message_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
