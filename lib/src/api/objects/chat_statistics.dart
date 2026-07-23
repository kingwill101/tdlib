import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a detailed statistics about a chat
@immutable
sealed class ChatStatistics extends TdObject {
  const ChatStatistics();

  static const String constructor = 'chatStatistics';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ChatStatisticsChannel]
  /// [ChatStatisticsSupergroup]
  static ChatStatistics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatStatisticsChannel.constructor:
        return ChatStatisticsChannel.fromJson(json);

      case ChatStatisticsSupergroup.constructor:
        return ChatStatisticsSupergroup.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A detailed statistics about a channel chat
@immutable
final class ChatStatisticsChannel extends ChatStatistics {
  ChatStatisticsChannel({
    this.period,
    this.memberCount,
    this.meanMessageViewCount,
    this.meanMessageShareCount,
    this.meanMessageReactionCount,
    this.meanStoryViewCount,
    this.meanStoryShareCount,
    this.meanStoryReactionCount,
    required this.enabledNotificationsPercentage,
    this.memberCountGraph,
    this.joinGraph,
    this.muteGraph,
    this.viewCountByHourGraph,
    this.viewCountBySourceGraph,
    this.joinBySourceGraph,
    this.languageGraph,
    this.messageInteractionGraph,
    this.messageReactionGraph,
    this.storyInteractionGraph,
    this.storyReactionGraph,
    this.instantViewInteractionGraph,
    required this.recentInteractions,
  });

  /// [period] A period to which the statistics applies
  final DateRange? period;

  /// [memberCount] Number of members in the chat
  final StatisticalValue? memberCount;

  /// [meanMessageViewCount] Mean number of times the recently sent messages
  /// were viewed
  final StatisticalValue? meanMessageViewCount;

  /// [meanMessageShareCount] Mean number of times the recently sent messages
  /// were shared
  final StatisticalValue? meanMessageShareCount;

  /// [meanMessageReactionCount] Mean number of times reactions were added to
  /// the recently sent messages
  final StatisticalValue? meanMessageReactionCount;

  /// [meanStoryViewCount] Mean number of times the recently posted stories were
  /// viewed
  final StatisticalValue? meanStoryViewCount;

  /// [meanStoryShareCount] Mean number of times the recently posted stories
  /// were shared
  final StatisticalValue? meanStoryShareCount;

  /// [meanStoryReactionCount] Mean number of times reactions were added to the
  /// recently posted stories
  final StatisticalValue? meanStoryReactionCount;

  /// [enabledNotificationsPercentage] A percentage of users with enabled
  /// notifications for the chat; 0-100
  final double enabledNotificationsPercentage;

  /// [memberCountGraph] A graph containing number of members in the chat
  final StatisticalGraph? memberCountGraph;

  /// [joinGraph] A graph containing number of members joined and left the chat
  final StatisticalGraph? joinGraph;

  /// [muteGraph] A graph containing number of members muted and unmuted the
  /// chat
  final StatisticalGraph? muteGraph;

  /// [viewCountByHourGraph] A graph containing number of message views in a
  /// given hour in the last two weeks
  final StatisticalGraph? viewCountByHourGraph;

  /// [viewCountBySourceGraph] A graph containing number of message views per
  /// source
  final StatisticalGraph? viewCountBySourceGraph;

  /// [joinBySourceGraph] A graph containing number of new member joins per
  /// source
  final StatisticalGraph? joinBySourceGraph;

  /// [languageGraph] A graph containing number of users viewed chat messages
  /// per language
  final StatisticalGraph? languageGraph;

  /// [messageInteractionGraph] A graph containing number of chat message views
  /// and shares
  final StatisticalGraph? messageInteractionGraph;

  /// [messageReactionGraph] A graph containing number of reactions on messages
  final StatisticalGraph? messageReactionGraph;

  /// [storyInteractionGraph] A graph containing number of story views and
  /// shares
  final StatisticalGraph? storyInteractionGraph;

  /// [storyReactionGraph] A graph containing number of reactions on stories
  final StatisticalGraph? storyReactionGraph;

  /// [instantViewInteractionGraph] A graph containing number of views of
  /// associated with the chat instant views
  final StatisticalGraph? instantViewInteractionGraph;

  /// [recentInteractions] Detailed statistics about number of views and shares
  /// of recently sent messages and posted stories
  final List<ChatStatisticsInteractionInfo> recentInteractions;

  static const String constructor = 'chatStatisticsChannel';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'period': period?.toJson(),
    'member_count': memberCount?.toJson(),
    'mean_message_view_count': meanMessageViewCount?.toJson(),
    'mean_message_share_count': meanMessageShareCount?.toJson(),
    'mean_message_reaction_count': meanMessageReactionCount?.toJson(),
    'mean_story_view_count': meanStoryViewCount?.toJson(),
    'mean_story_share_count': meanStoryShareCount?.toJson(),
    'mean_story_reaction_count': meanStoryReactionCount?.toJson(),
    'enabled_notifications_percentage': enabledNotificationsPercentage,
    'member_count_graph': memberCountGraph?.toJson(),
    'join_graph': joinGraph?.toJson(),
    'mute_graph': muteGraph?.toJson(),
    'view_count_by_hour_graph': viewCountByHourGraph?.toJson(),
    'view_count_by_source_graph': viewCountBySourceGraph?.toJson(),
    'join_by_source_graph': joinBySourceGraph?.toJson(),
    'language_graph': languageGraph?.toJson(),
    'message_interaction_graph': messageInteractionGraph?.toJson(),
    'message_reaction_graph': messageReactionGraph?.toJson(),
    'story_interaction_graph': storyInteractionGraph?.toJson(),
    'story_reaction_graph': storyReactionGraph?.toJson(),
    'instant_view_interaction_graph': instantViewInteractionGraph?.toJson(),
    'recent_interactions': recentInteractions
        .map((item) => item.toJson())
        .toList(),
    '@type': constructor,
  };

  static ChatStatisticsChannel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatStatisticsChannel(
      period: DateRange.fromJson(tdMapFromJson(json['period'])),
      memberCount: StatisticalValue.fromJson(
        tdMapFromJson(json['member_count']),
      ),
      meanMessageViewCount: StatisticalValue.fromJson(
        tdMapFromJson(json['mean_message_view_count']),
      ),
      meanMessageShareCount: StatisticalValue.fromJson(
        tdMapFromJson(json['mean_message_share_count']),
      ),
      meanMessageReactionCount: StatisticalValue.fromJson(
        tdMapFromJson(json['mean_message_reaction_count']),
      ),
      meanStoryViewCount: StatisticalValue.fromJson(
        tdMapFromJson(json['mean_story_view_count']),
      ),
      meanStoryShareCount: StatisticalValue.fromJson(
        tdMapFromJson(json['mean_story_share_count']),
      ),
      meanStoryReactionCount: StatisticalValue.fromJson(
        tdMapFromJson(json['mean_story_reaction_count']),
      ),
      enabledNotificationsPercentage:
          ((json['enabled_notifications_percentage'] as num?) ?? 0.0)
              .toDouble(),
      memberCountGraph: StatisticalGraph.fromJson(
        tdMapFromJson(json['member_count_graph']),
      ),
      joinGraph: StatisticalGraph.fromJson(tdMapFromJson(json['join_graph'])),
      muteGraph: StatisticalGraph.fromJson(tdMapFromJson(json['mute_graph'])),
      viewCountByHourGraph: StatisticalGraph.fromJson(
        tdMapFromJson(json['view_count_by_hour_graph']),
      ),
      viewCountBySourceGraph: StatisticalGraph.fromJson(
        tdMapFromJson(json['view_count_by_source_graph']),
      ),
      joinBySourceGraph: StatisticalGraph.fromJson(
        tdMapFromJson(json['join_by_source_graph']),
      ),
      languageGraph: StatisticalGraph.fromJson(
        tdMapFromJson(json['language_graph']),
      ),
      messageInteractionGraph: StatisticalGraph.fromJson(
        tdMapFromJson(json['message_interaction_graph']),
      ),
      messageReactionGraph: StatisticalGraph.fromJson(
        tdMapFromJson(json['message_reaction_graph']),
      ),
      storyInteractionGraph: StatisticalGraph.fromJson(
        tdMapFromJson(json['story_interaction_graph']),
      ),
      storyReactionGraph: StatisticalGraph.fromJson(
        tdMapFromJson(json['story_reaction_graph']),
      ),
      instantViewInteractionGraph: StatisticalGraph.fromJson(
        tdMapFromJson(json['instant_view_interaction_graph']),
      ),
      recentInteractions: List<ChatStatisticsInteractionInfo>.from(
        tdListFromJson(json['recent_interactions'])
            .map(
              (item) =>
                  ChatStatisticsInteractionInfo.fromJson(tdMapFromJson(item)),
            )
            .whereType<ChatStatisticsInteractionInfo>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A detailed statistics about a supergroup chat
@immutable
final class ChatStatisticsSupergroup extends ChatStatistics {
  ChatStatisticsSupergroup({
    this.period,
    this.memberCount,
    this.messageCount,
    this.viewerCount,
    this.senderCount,
    this.memberCountGraph,
    this.joinGraph,
    this.joinBySourceGraph,
    this.languageGraph,
    this.messageContentGraph,
    this.actionGraph,
    this.dayGraph,
    this.weekGraph,
    required this.topSenders,
    required this.topAdministrators,
    required this.topInviters,
  });

  /// [period] A period to which the statistics applies
  final DateRange? period;

  /// [memberCount] Number of members in the chat
  final StatisticalValue? memberCount;

  /// [messageCount] Number of messages sent to the chat
  final StatisticalValue? messageCount;

  /// [viewerCount] Number of users who viewed messages in the chat
  final StatisticalValue? viewerCount;

  /// [senderCount] Number of users who sent messages to the chat
  final StatisticalValue? senderCount;

  /// [memberCountGraph] A graph containing number of members in the chat
  final StatisticalGraph? memberCountGraph;

  /// [joinGraph] A graph containing number of members joined and left the chat
  final StatisticalGraph? joinGraph;

  /// [joinBySourceGraph] A graph containing number of new member joins per
  /// source
  final StatisticalGraph? joinBySourceGraph;

  /// [languageGraph] A graph containing distribution of active users per
  /// language
  final StatisticalGraph? languageGraph;

  /// [messageContentGraph] A graph containing distribution of sent messages by
  /// content type
  final StatisticalGraph? messageContentGraph;

  /// [actionGraph] A graph containing number of different actions in the chat
  final StatisticalGraph? actionGraph;

  /// [dayGraph] A graph containing distribution of message views per hour
  final StatisticalGraph? dayGraph;

  /// [weekGraph] A graph containing distribution of message views per day of
  /// week
  final StatisticalGraph? weekGraph;

  /// [topSenders] List of users sent most messages in the last week
  final List<ChatStatisticsMessageSenderInfo> topSenders;

  /// [topAdministrators] List of most active administrators in the last week
  final List<ChatStatisticsAdministratorActionsInfo> topAdministrators;

  /// [topInviters] List of most active inviters of new members in the last week
  final List<ChatStatisticsInviterInfo> topInviters;

  static const String constructor = 'chatStatisticsSupergroup';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'period': period?.toJson(),
    'member_count': memberCount?.toJson(),
    'message_count': messageCount?.toJson(),
    'viewer_count': viewerCount?.toJson(),
    'sender_count': senderCount?.toJson(),
    'member_count_graph': memberCountGraph?.toJson(),
    'join_graph': joinGraph?.toJson(),
    'join_by_source_graph': joinBySourceGraph?.toJson(),
    'language_graph': languageGraph?.toJson(),
    'message_content_graph': messageContentGraph?.toJson(),
    'action_graph': actionGraph?.toJson(),
    'day_graph': dayGraph?.toJson(),
    'week_graph': weekGraph?.toJson(),
    'top_senders': topSenders.map((item) => item.toJson()).toList(),
    'top_administrators': topAdministrators
        .map((item) => item.toJson())
        .toList(),
    'top_inviters': topInviters.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static ChatStatisticsSupergroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatStatisticsSupergroup(
      period: DateRange.fromJson(tdMapFromJson(json['period'])),
      memberCount: StatisticalValue.fromJson(
        tdMapFromJson(json['member_count']),
      ),
      messageCount: StatisticalValue.fromJson(
        tdMapFromJson(json['message_count']),
      ),
      viewerCount: StatisticalValue.fromJson(
        tdMapFromJson(json['viewer_count']),
      ),
      senderCount: StatisticalValue.fromJson(
        tdMapFromJson(json['sender_count']),
      ),
      memberCountGraph: StatisticalGraph.fromJson(
        tdMapFromJson(json['member_count_graph']),
      ),
      joinGraph: StatisticalGraph.fromJson(tdMapFromJson(json['join_graph'])),
      joinBySourceGraph: StatisticalGraph.fromJson(
        tdMapFromJson(json['join_by_source_graph']),
      ),
      languageGraph: StatisticalGraph.fromJson(
        tdMapFromJson(json['language_graph']),
      ),
      messageContentGraph: StatisticalGraph.fromJson(
        tdMapFromJson(json['message_content_graph']),
      ),
      actionGraph: StatisticalGraph.fromJson(
        tdMapFromJson(json['action_graph']),
      ),
      dayGraph: StatisticalGraph.fromJson(tdMapFromJson(json['day_graph'])),
      weekGraph: StatisticalGraph.fromJson(tdMapFromJson(json['week_graph'])),
      topSenders: List<ChatStatisticsMessageSenderInfo>.from(
        tdListFromJson(json['top_senders'])
            .map(
              (item) =>
                  ChatStatisticsMessageSenderInfo.fromJson(tdMapFromJson(item)),
            )
            .whereType<ChatStatisticsMessageSenderInfo>(),
      ),
      topAdministrators: List<ChatStatisticsAdministratorActionsInfo>.from(
        tdListFromJson(json['top_administrators'])
            .map(
              (item) => ChatStatisticsAdministratorActionsInfo.fromJson(
                tdMapFromJson(item),
              ),
            )
            .whereType<ChatStatisticsAdministratorActionsInfo>(),
      ),
      topInviters: List<ChatStatisticsInviterInfo>.from(
        tdListFromJson(json['top_inviters'])
            .map(
              (item) => ChatStatisticsInviterInfo.fromJson(tdMapFromJson(item)),
            )
            .whereType<ChatStatisticsInviterInfo>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
