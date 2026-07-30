import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a reaction applied to a message
@immutable
final class AddedReaction extends TdObject {
  AddedReaction({
    this.type,
    this.senderId,
    required this.isOutgoing,
    required this.date,
  });

  /// [type] Type of the reaction
  final ReactionType? type;

  /// [senderId] Identifier of the chat member, applied the reaction
  final MessageSender? senderId;

  /// [isOutgoing] True, if the reaction was added by the current user
  final bool isOutgoing;

  /// [date] Point in time (Unix timestamp) when the reaction was added
  final int date;

  static const String constructor = 'addedReaction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'type': type?.toJson(),
    'sender_id': senderId?.toJson(),
    'is_outgoing': isOutgoing,
    'date': date,
    '@type': constructor,
  };

  static AddedReaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AddedReaction(
      type: ReactionType.fromJson(tdMapFromJson(json['type'])),
      senderId: MessageSender.fromJson(tdMapFromJson(json['sender_id'])),
      isOutgoing: (json['is_outgoing'] as bool?) ?? false,
      date: (json['date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
