import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a newly created basic group chat
@immutable
final class CreatedBasicGroupChat extends TdObject {
  CreatedBasicGroupChat({required this.chatId, this.failedToAddMembers});

  /// [chatId] Chat identifier
  final int chatId;

  /// [failedToAddMembers] Information about failed to add members
  final FailedToAddMembers? failedToAddMembers;

  static const String constructor = 'createdBasicGroupChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'failed_to_add_members': failedToAddMembers?.toJson(),
    '@type': constructor,
  };

  static CreatedBasicGroupChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CreatedBasicGroupChat(
      chatId: (json['chat_id'] as int?) ?? 0,
      failedToAddMembers: FailedToAddMembers.fromJson(
        tdMapFromJson(json['failed_to_add_members']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
