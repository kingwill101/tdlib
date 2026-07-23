import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a message in a specific position
@immutable
final class MessagePosition extends TdObject {
  MessagePosition({
    required this.position,
    required this.messageId,
    required this.date,
  });

  /// [position] 0-based message position in the full list of suitable messages
  final int position;

  /// [messageId] Message identifier
  final int messageId;

  /// [date] Point in time (Unix timestamp) when the message was sent
  final int date;

  static const String constructor = 'messagePosition';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'position': position,
    'message_id': messageId,
    'date': date,
    '@type': constructor,
  };

  static MessagePosition? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePosition(
      position: (json['position'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
      date: (json['date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
