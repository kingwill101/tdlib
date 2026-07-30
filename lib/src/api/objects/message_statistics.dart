import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A detailed statistics about a message
@immutable
final class MessageStatistics extends TdObject {
  MessageStatistics({this.messageInteractionGraph, this.messageReactionGraph});

  /// [messageInteractionGraph] A graph containing number of message views and
  /// shares
  final StatisticalGraph? messageInteractionGraph;

  /// [messageReactionGraph] A graph containing number of message reactions
  final StatisticalGraph? messageReactionGraph;

  static const String constructor = 'messageStatistics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'message_interaction_graph': messageInteractionGraph?.toJson(),
    'message_reaction_graph': messageReactionGraph?.toJson(),
    '@type': constructor,
  };

  static MessageStatistics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageStatistics(
      messageInteractionGraph: StatisticalGraph.fromJson(
        tdMapFromJson(json['message_interaction_graph']),
      ),
      messageReactionGraph: StatisticalGraph.fromJson(
        tdMapFromJson(json['message_reaction_graph']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
