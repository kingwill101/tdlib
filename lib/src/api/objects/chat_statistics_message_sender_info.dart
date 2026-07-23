import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains statistics about messages sent by a user
@immutable
final class ChatStatisticsMessageSenderInfo extends TdObject {
  ChatStatisticsMessageSenderInfo({
    required this.userId,
    required this.sentMessageCount,
    required this.averageCharacterCount,
  });

  /// [userId] User identifier
  final int userId;

  /// [sentMessageCount] Number of sent messages
  final int sentMessageCount;

  /// [averageCharacterCount] Average number of characters in sent messages; 0
  /// if unknown
  final int averageCharacterCount;

  static const String constructor = 'chatStatisticsMessageSenderInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'sent_message_count': sentMessageCount,
    'average_character_count': averageCharacterCount,
    '@type': constructor,
  };

  static ChatStatisticsMessageSenderInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatStatisticsMessageSenderInfo(
      userId: (json['user_id'] as int?) ?? 0,
      sentMessageCount: (json['sent_message_count'] as int?) ?? 0,
      averageCharacterCount: (json['average_character_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
