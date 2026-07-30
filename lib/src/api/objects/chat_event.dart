import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a chat event
@immutable
final class ChatEvent extends TdObject {
  ChatEvent({required this.id, required this.date, this.memberId, this.action});

  /// [id] Chat event identifier
  final int id;

  /// [date] Point in time (Unix timestamp) when the event happened
  final int date;

  /// [memberId] Identifier of the user or chat who performed the action
  final MessageSender? memberId;

  /// [action] The action
  final ChatEventAction? action;

  static const String constructor = 'chatEvent';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id.toString(),
    'date': date,
    'member_id': memberId?.toJson(),
    'action': action?.toJson(),
    '@type': constructor,
  };

  static ChatEvent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEvent(
      id: int.tryParse((json['id'] as dynamic)?.toString() ?? '') ?? 0,
      date: (json['date'] as int?) ?? 0,
      memberId: MessageSender.fromJson(tdMapFromJson(json['member_id'])),
      action: ChatEventAction.fromJson(tdMapFromJson(json['action'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
