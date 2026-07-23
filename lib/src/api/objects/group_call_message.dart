import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a message sent in a group call
@immutable
final class GroupCallMessage extends TdObject {
  GroupCallMessage({
    required this.messageId,
    this.senderId,
    required this.date,
    this.text,
    required this.paidMessageStarCount,
    required this.isFromOwner,
    required this.canBeDeleted,
  });

  /// [messageId] Unique message identifier within the group call
  final int messageId;

  /// [senderId] Identifier of the sender of the message
  final MessageSender? senderId;

  /// [date] Point in time (Unix timestamp) when the message was sent
  final int date;

  /// [text] Text of the message. If empty, then the message is a paid reaction
  /// in a live story
  final FormattedText? text;

  /// [paidMessageStarCount] The number of Telegram Stars that were paid to send
  /// the message; for live stories only
  final int paidMessageStarCount;

  /// [isFromOwner] True, if the message is sent by the owner of the call and
  /// must be treated as a message of the maximum level; for live stories only
  final bool isFromOwner;

  /// [canBeDeleted] True, if the message can be deleted by the current user;
  /// for live stories only
  final bool canBeDeleted;

  static const String constructor = 'groupCallMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'message_id': messageId,
    'sender_id': senderId?.toJson(),
    'date': date,
    'text': text?.toJson(),
    'paid_message_star_count': paidMessageStarCount,
    'is_from_owner': isFromOwner,
    'can_be_deleted': canBeDeleted,
    '@type': constructor,
  };

  static GroupCallMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallMessage(
      messageId: (json['message_id'] as int?) ?? 0,
      senderId: MessageSender.fromJson(tdMapFromJson(json['sender_id'])),
      date: (json['date'] as int?) ?? 0,
      text: FormattedText.fromJson(tdMapFromJson(json['text'])),
      paidMessageStarCount: (json['paid_message_star_count'] as int?) ?? 0,
      isFromOwner: (json['is_from_owner'] as bool?) ?? false,
      canBeDeleted: (json['can_be_deleted'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
