import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A detailed statistics about poll votes
@immutable
final class PollVoteStatistics extends TdObject {
  PollVoteStatistics({this.voteGraph});

  /// [voteGraph] A graph containing distribution of votes in the poll
  final StatisticalGraph? voteGraph;

  static const String constructor = 'pollVoteStatistics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'vote_graph': voteGraph?.toJson(),
    '@type': constructor,
  };

  static PollVoteStatistics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollVoteStatistics(
      voteGraph: StatisticalGraph.fromJson(tdMapFromJson(json['vote_graph'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
