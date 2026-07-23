import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes source of a chat boost
@immutable
sealed class ChatBoostSource extends TdObject {
  const ChatBoostSource();

  static const String constructor = 'chatBoostSource';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ChatBoostSourceGiftCode]
  /// [ChatBoostSourceGiveaway]
  /// [ChatBoostSourcePremium]
  static ChatBoostSource? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatBoostSourceGiftCode.constructor:
        return ChatBoostSourceGiftCode.fromJson(json);

      case ChatBoostSourceGiveaway.constructor:
        return ChatBoostSourceGiveaway.fromJson(json);

      case ChatBoostSourcePremium.constructor:
        return ChatBoostSourcePremium.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat created a Telegram Premium gift code for a user
@immutable
final class ChatBoostSourceGiftCode extends ChatBoostSource {
  ChatBoostSourceGiftCode({required this.userId, required this.giftCode});

  /// [userId] Identifier of a user, for which the gift code was created
  final int userId;

  /// [giftCode] The created Telegram Premium gift code, which is known only if
  /// this is a gift code for the current user, or it has already been claimed
  final String giftCode;

  static const String constructor = 'chatBoostSourceGiftCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'gift_code': giftCode,
    '@type': constructor,
  };

  static ChatBoostSourceGiftCode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatBoostSourceGiftCode(
      userId: (json['user_id'] as int?) ?? 0,
      giftCode: (json['gift_code'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat created a giveaway
@immutable
final class ChatBoostSourceGiveaway extends ChatBoostSource {
  ChatBoostSourceGiveaway({
    required this.userId,
    required this.giftCode,
    required this.starCount,
    required this.giveawayMessageId,
    required this.isUnclaimed,
  });

  /// [userId] Identifier of a user who won in the giveaway; 0 if none
  final int userId;

  /// [giftCode] The created Telegram Premium gift code if it was used by the
  /// user or can be claimed by the current user; an empty string otherwise; for
  /// Telegram Premium giveways only
  final String giftCode;

  /// [starCount] Number of Telegram Stars distributed among winners of the
  /// giveaway
  final int starCount;

  /// [giveawayMessageId] Identifier of the corresponding giveaway message; can
  /// be an identifier of a deleted message
  final int giveawayMessageId;

  /// [isUnclaimed] True, if the winner for the corresponding giveaway prize
  /// wasn't chosen, because there were not enough participants
  final bool isUnclaimed;

  static const String constructor = 'chatBoostSourceGiveaway';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'gift_code': giftCode,
    'star_count': starCount,
    'giveaway_message_id': giveawayMessageId,
    'is_unclaimed': isUnclaimed,
    '@type': constructor,
  };

  static ChatBoostSourceGiveaway? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatBoostSourceGiveaway(
      userId: (json['user_id'] as int?) ?? 0,
      giftCode: (json['gift_code'] as String?) ?? '',
      starCount: (json['star_count'] as int?) ?? 0,
      giveawayMessageId: (json['giveaway_message_id'] as int?) ?? 0,
      isUnclaimed: (json['is_unclaimed'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A user with Telegram Premium subscription or gifted Telegram Premium
/// boosted the chat
@immutable
final class ChatBoostSourcePremium extends ChatBoostSource {
  ChatBoostSourcePremium({required this.userId});

  /// [userId] Identifier of the user
  final int userId;

  static const String constructor = 'chatBoostSourcePremium';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    '@type': constructor,
  };

  static ChatBoostSourcePremium? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatBoostSourcePremium(userId: (json['user_id'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
