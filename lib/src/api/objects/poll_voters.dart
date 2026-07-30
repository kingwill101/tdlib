import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of poll voters
@immutable
final class PollVoters extends TdObject {
  PollVoters({required this.totalCount, required this.voters});

  /// [totalCount] Approximate total number of poll voters found
  final int totalCount;

  /// [voters] List of poll voters
  final List<PollVoter> voters;

  static const String constructor = 'pollVoters';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'voters': voters.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static PollVoters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollVoters(
      totalCount: (json['total_count'] as int?) ?? 0,
      voters: List<PollVoter>.from(
        tdListFromJson(json['voters'])
            .map((item) => PollVoter.fromJson(tdMapFromJson(item)))
            .whereType<PollVoter>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
