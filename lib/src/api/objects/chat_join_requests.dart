import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of requests to join a chat
@immutable
final class ChatJoinRequests extends TdObject {
  ChatJoinRequests({required this.totalCount, required this.requests});

  /// [totalCount] Approximate total number of requests found
  final int totalCount;

  /// [requests] List of the requests
  final List<ChatJoinRequest> requests;

  static const String constructor = 'chatJoinRequests';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'requests': requests.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static ChatJoinRequests? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatJoinRequests(
      totalCount: (json['total_count'] as int?) ?? 0,
      requests: List<ChatJoinRequest>.from(
        tdListFromJson(json['requests'])
            .map((item) => ChatJoinRequest.fromJson(tdMapFromJson(item)))
            .whereType<ChatJoinRequest>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
