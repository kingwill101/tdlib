import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a poll
@immutable
final class Poll extends TdObject {
  Poll({
    required this.id,
    this.question,
    required this.options,
    required this.totalVoterCount,
    required this.recentVoterIds,
    required this.canGetVoters,
    required this.isAnonymous,
    required this.allowsMultipleAnswers,
    required this.allowsRevoting,
    required this.membersOnly,
    required this.countryCodes,
    required this.optionOrder,
    this.type,
    required this.openPeriod,
    required this.closeDate,
    required this.isClosed,
    this.voteRestrictionReason,
  });

  /// [id] Unique poll identifier
  final int id;

  /// [question] Poll question; 1-300 characters; may contain only custom emoji
  /// entities
  final FormattedText? question;

  /// [options] List of poll answer options
  final List<PollOption> options;

  /// [totalVoterCount] Total number of voters, participating in the poll
  final int totalVoterCount;

  /// [recentVoterIds] Identifiers of recent voters, if the poll is
  /// non-anonymous and poll results are available
  final List<MessageSender> recentVoterIds;

  /// [canGetVoters] True, if the current user can get voters in the poll using
  /// getPollVoters
  final bool canGetVoters;

  /// [isAnonymous] True, if the poll is anonymous
  final bool isAnonymous;

  /// [allowsMultipleAnswers] True, if multiple answer options can be chosen
  /// simultaneously
  final bool allowsMultipleAnswers;

  /// [allowsRevoting] True, if the poll can be answered multiple times
  final bool allowsRevoting;

  /// [membersOnly] True, if only the users that are members of the chat for
  /// more than a day will be able to vote
  final bool membersOnly;

  /// [countryCodes] The list of two-letter ISO 3166-1 alpha-2 codes of
  /// countries, users from which will be able to vote. If empty, then all users
  /// can participate in the poll
  final List<String> countryCodes;

  /// [optionOrder] The list of 0-based poll identifiers in which the options of
  /// the poll must be shown; empty if the order of options must not be changed
  final List<int> optionOrder;

  /// [type] Type of the poll
  final PollType? type;

  /// [openPeriod] Amount of time the poll will be active after creation, in
  /// seconds
  final int openPeriod;

  /// [closeDate] Point in time (Unix timestamp) when the poll will
  /// automatically be closed
  final int closeDate;

  /// [isClosed] True, if the poll is closed
  final bool isClosed;

  /// [voteRestrictionReason] The reason describing, why the current user can't
  /// vote in the poll; may be null if the user can vote in the poll
  final PollVoteRestrictionReason? voteRestrictionReason;

  static const String constructor = 'poll';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id.toString(),
    'question': question?.toJson(),
    'options': options.map((item) => item.toJson()).toList(),
    'total_voter_count': totalVoterCount,
    'recent_voter_ids': recentVoterIds.map((item) => item.toJson()).toList(),
    'can_get_voters': canGetVoters,
    'is_anonymous': isAnonymous,
    'allows_multiple_answers': allowsMultipleAnswers,
    'allows_revoting': allowsRevoting,
    'members_only': membersOnly,
    'country_codes': countryCodes.map((item) => item).toList(),
    'option_order': optionOrder.map((item) => item).toList(),
    'type': type?.toJson(),
    'open_period': openPeriod,
    'close_date': closeDate,
    'is_closed': isClosed,
    'vote_restriction_reason': voteRestrictionReason?.toJson(),
    '@type': constructor,
  };

  static Poll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Poll(
      id: int.tryParse((json['id'] as dynamic)?.toString() ?? '') ?? 0,
      question: FormattedText.fromJson(tdMapFromJson(json['question'])),
      options: List<PollOption>.from(
        tdListFromJson(json['options'])
            .map((item) => PollOption.fromJson(tdMapFromJson(item)))
            .whereType<PollOption>(),
      ),
      totalVoterCount: (json['total_voter_count'] as int?) ?? 0,
      recentVoterIds: List<MessageSender>.from(
        tdListFromJson(json['recent_voter_ids'])
            .map((item) => MessageSender.fromJson(tdMapFromJson(item)))
            .whereType<MessageSender>(),
      ),
      canGetVoters: (json['can_get_voters'] as bool?) ?? false,
      isAnonymous: (json['is_anonymous'] as bool?) ?? false,
      allowsMultipleAnswers:
          (json['allows_multiple_answers'] as bool?) ?? false,
      allowsRevoting: (json['allows_revoting'] as bool?) ?? false,
      membersOnly: (json['members_only'] as bool?) ?? false,
      countryCodes: List<String>.from(
        tdListFromJson(
          json['country_codes'],
        ).map((item) => (item as dynamic)?.toString() ?? ''),
      ),
      optionOrder: List<int>.from(
        tdListFromJson(
          json['option_order'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      type: PollType.fromJson(tdMapFromJson(json['type'])),
      openPeriod: (json['open_period'] as int?) ?? 0,
      closeDate: (json['close_date'] as int?) ?? 0,
      isClosed: (json['is_closed'] as bool?) ?? false,
      voteRestrictionReason: PollVoteRestrictionReason.fromJson(
        tdMapFromJson(json['vote_restriction_reason']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
