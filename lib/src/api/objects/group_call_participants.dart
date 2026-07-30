import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains identifiers of group call participants
@immutable
final class GroupCallParticipants extends TdObject {
  GroupCallParticipants({
    required this.totalCount,
    required this.participantIds,
  });

  /// [totalCount] Total number of group call participants
  final int totalCount;

  /// [participantIds] Identifiers of the participants
  final List<MessageSender> participantIds;

  static const String constructor = 'groupCallParticipants';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'participant_ids': participantIds.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static GroupCallParticipants? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallParticipants(
      totalCount: (json['total_count'] as int?) ?? 0,
      participantIds: List<MessageSender>.from(
        tdListFromJson(json['participant_ids'])
            .map((item) => MessageSender.fromJson(tdMapFromJson(item)))
            .whereType<MessageSender>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
