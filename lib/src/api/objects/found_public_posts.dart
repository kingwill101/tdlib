import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of messages found by a public post search
@immutable
final class FoundPublicPosts extends TdObject {
  FoundPublicPosts({
    required this.messages,
    required this.nextOffset,
    this.searchLimits,
    required this.areLimitsExceeded,
  });

  /// [messages] List of found public posts
  final List<Message> messages;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  /// [searchLimits] Updated public post search limits after the query; repeated
  /// requests with the same query will be free; may be null if they didn't
  /// change
  final PublicPostSearchLimits? searchLimits;

  /// [areLimitsExceeded] True, if the query has failed because search limits
  /// are exceeded. In this case search_limits.daily_free_query_count will be
  /// equal to 0
  final bool areLimitsExceeded;

  static const String constructor = 'foundPublicPosts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'messages': messages.map((item) => item.toJson()).toList(),
    'next_offset': nextOffset,
    'search_limits': searchLimits?.toJson(),
    'are_limits_exceeded': areLimitsExceeded,
    '@type': constructor,
  };

  static FoundPublicPosts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FoundPublicPosts(
      messages: List<Message>.from(
        tdListFromJson(json['messages'])
            .map((item) => Message.fromJson(tdMapFromJson(item)))
            .whereType<Message>(),
      ),
      nextOffset: (json['next_offset'] as String?) ?? '',
      searchLimits: PublicPostSearchLimits.fromJson(
        tdMapFromJson(json['search_limits']),
      ),
      areLimitsExceeded: (json['are_limits_exceeded'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
