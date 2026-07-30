import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of boosts applied to a chat
@immutable
final class FoundChatBoosts extends TdObject {
  FoundChatBoosts({
    required this.totalCount,
    required this.boosts,
    required this.nextOffset,
  });

  /// [totalCount] Total number of boosts applied to the chat
  final int totalCount;

  /// [boosts] List of boosts
  final List<ChatBoost> boosts;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'foundChatBoosts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'boosts': boosts.map((item) => item.toJson()).toList(),
    'next_offset': nextOffset,
    '@type': constructor,
  };

  static FoundChatBoosts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FoundChatBoosts(
      totalCount: (json['total_count'] as int?) ?? 0,
      boosts: List<ChatBoost>.from(
        tdListFromJson(json['boosts'])
            .map((item) => ChatBoost.fromJson(tdMapFromJson(item)))
            .whereType<ChatBoost>(),
      ),
      nextOffset: (json['next_offset'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
