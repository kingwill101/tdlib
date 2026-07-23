import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of reactions added to a message
@immutable
final class AddedReactions extends TdObject {
  AddedReactions({
    required this.totalCount,
    required this.reactions,
    required this.nextOffset,
  });

  /// [totalCount] The total number of found reactions
  final int totalCount;

  /// [reactions] The list of added reactions
  final List<AddedReaction> reactions;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'addedReactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'reactions': reactions.map((item) => item.toJson()).toList(),
    'next_offset': nextOffset,
    '@type': constructor,
  };

  static AddedReactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AddedReactions(
      totalCount: (json['total_count'] as int?) ?? 0,
      reactions: List<AddedReaction>.from(
        tdListFromJson(json['reactions'])
            .map((item) => AddedReaction.fromJson(tdMapFromJson(item)))
            .whereType<AddedReaction>(),
      ),
      nextOffset: (json['next_offset'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
