import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of affiliate for an affiliate program
@immutable
sealed class AffiliateType extends TdObject {
  const AffiliateType();

  static const String constructor = 'affiliateType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [AffiliateTypeBot]
  /// [AffiliateTypeChannel]
  /// [AffiliateTypeCurrentUser]
  static AffiliateType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case AffiliateTypeBot.constructor:
        return AffiliateTypeBot.fromJson(json);

      case AffiliateTypeChannel.constructor:
        return AffiliateTypeChannel.fromJson(json);

      case AffiliateTypeCurrentUser.constructor:
        return AffiliateTypeCurrentUser.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The affiliate is a bot owned by the current user
@immutable
final class AffiliateTypeBot extends AffiliateType {
  AffiliateTypeBot({required this.userId});

  /// [userId] User identifier of the bot
  final int userId;

  static const String constructor = 'affiliateTypeBot';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    '@type': constructor,
  };

  static AffiliateTypeBot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AffiliateTypeBot(userId: (json['user_id'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The affiliate is a channel chat where the current user has
/// can_post_messages administrator right
@immutable
final class AffiliateTypeChannel extends AffiliateType {
  AffiliateTypeChannel({required this.chatId});

  /// [chatId] Identifier of the channel chat
  final int chatId;

  static const String constructor = 'affiliateTypeChannel';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    '@type': constructor,
  };

  static AffiliateTypeChannel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AffiliateTypeChannel(chatId: (json['chat_id'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The affiliate is the current user
@immutable
final class AffiliateTypeCurrentUser extends AffiliateType {
  const AffiliateTypeCurrentUser();

  static const String constructor = 'affiliateTypeCurrentUser';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static AffiliateTypeCurrentUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AffiliateTypeCurrentUser();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
