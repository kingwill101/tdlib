import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of reactions added to a message
@immutable
final class MessageReactions extends TdObject {
  MessageReactions({
    required this.reactions,
    required this.areTags,
    required this.paidReactors,
    required this.canGetAddedReactions,
  });

  /// [reactions] List of added reactions
  final List<MessageReaction> reactions;

  /// [areTags] True, if the reactions are tags and Telegram Premium users can
  /// filter messages by them
  final bool areTags;

  /// [paidReactors] Information about top users that added the paid reaction
  final List<PaidReactor> paidReactors;

  /// [canGetAddedReactions] True, if the list of added reactions is available
  /// using getMessageAddedReactions
  final bool canGetAddedReactions;

  static const String constructor = 'messageReactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'reactions': reactions.map((item) => item.toJson()).toList(),
    'are_tags': areTags,
    'paid_reactors': paidReactors.map((item) => item.toJson()).toList(),
    'can_get_added_reactions': canGetAddedReactions,
    '@type': constructor,
  };

  static MessageReactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageReactions(
      reactions: List<MessageReaction>.from(
        tdListFromJson(json['reactions'])
            .map((item) => MessageReaction.fromJson(tdMapFromJson(item)))
            .whereType<MessageReaction>(),
      ),
      areTags: (json['are_tags'] as bool?) ?? false,
      paidReactors: List<PaidReactor>.from(
        tdListFromJson(json['paid_reactors'])
            .map((item) => PaidReactor.fromJson(tdMapFromJson(item)))
            .whereType<PaidReactor>(),
      ),
      canGetAddedReactions: (json['can_get_added_reactions'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
