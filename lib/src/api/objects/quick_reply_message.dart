import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a message that can be used for quick reply
@immutable
final class QuickReplyMessage extends TdObject {
  QuickReplyMessage({
    required this.id,
    this.sendingState,
    required this.canBeEdited,
    required this.replyToMessageId,
    required this.viaBotUserId,
    required this.mediaAlbumId,
    this.content,
    this.replyMarkup,
  });

  /// [id] Unique message identifier among all quick replies
  final int id;

  /// [sendingState] The sending state of the message; may be null if the
  /// message isn't being sent and didn't fail to be sent
  final MessageSendingState? sendingState;

  /// [canBeEdited] True, if the message can be edited
  final bool canBeEdited;

  /// [replyToMessageId] The identifier of the quick reply message to which the
  /// message replies; 0 if none
  final int replyToMessageId;

  /// [viaBotUserId] If non-zero, the user identifier of the bot through which
  /// this message was sent
  final int viaBotUserId;

  /// [mediaAlbumId] Unique identifier of an album this message belongs to; 0 if
  /// none. Only audios, documents, photos and videos can be grouped together in
  /// albums
  final int mediaAlbumId;

  /// [content] Content of the message
  final MessageContent? content;

  /// [replyMarkup] Inline keyboard reply markup for the message; may be null if
  /// none
  final ReplyMarkup? replyMarkup;

  static const String constructor = 'quickReplyMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'sending_state': sendingState?.toJson(),
    'can_be_edited': canBeEdited,
    'reply_to_message_id': replyToMessageId,
    'via_bot_user_id': viaBotUserId,
    'media_album_id': mediaAlbumId.toString(),
    'content': content?.toJson(),
    'reply_markup': replyMarkup?.toJson(),
    '@type': constructor,
  };

  static QuickReplyMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return QuickReplyMessage(
      id: (json['id'] as int?) ?? 0,
      sendingState: MessageSendingState.fromJson(
        tdMapFromJson(json['sending_state']),
      ),
      canBeEdited: (json['can_be_edited'] as bool?) ?? false,
      replyToMessageId: (json['reply_to_message_id'] as int?) ?? 0,
      viaBotUserId: (json['via_bot_user_id'] as int?) ?? 0,
      mediaAlbumId:
          int.tryParse((json['media_album_id'] as dynamic)?.toString() ?? '') ??
          0,
      content: MessageContent.fromJson(tdMapFromJson(json['content'])),
      replyMarkup: ReplyMarkup.fromJson(tdMapFromJson(json['reply_markup'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
