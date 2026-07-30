import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a call
@immutable
final class Call extends TdObject {
  Call({
    required this.id,
    required this.uniqueId,
    required this.userId,
    required this.isOutgoing,
    required this.isVideo,
    this.state,
  });

  /// [id] Call identifier, not persistent
  final int id;

  /// [uniqueId] Persistent unique call identifier; 0 if isn't assigned yet by
  /// the server
  final int uniqueId;

  /// [userId] User identifier of the other call participant
  final int userId;

  /// [isOutgoing] True, if the call is outgoing
  final bool isOutgoing;

  /// [isVideo] True, if the call is a video call
  final bool isVideo;

  /// [state] Call state
  final CallState? state;

  static const String constructor = 'call';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'unique_id': uniqueId.toString(),
    'user_id': userId,
    'is_outgoing': isOutgoing,
    'is_video': isVideo,
    'state': state?.toJson(),
    '@type': constructor,
  };

  static Call? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Call(
      id: (json['id'] as int?) ?? 0,
      uniqueId:
          int.tryParse((json['unique_id'] as dynamic)?.toString() ?? '') ?? 0,
      userId: (json['user_id'] as int?) ?? 0,
      isOutgoing: (json['is_outgoing'] as bool?) ?? false,
      isVideo: (json['is_video'] as bool?) ?? false,
      state: CallState.fromJson(tdMapFromJson(json['state'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
