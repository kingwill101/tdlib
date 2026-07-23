import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about status of a user in a giveaway
@immutable
sealed class GiveawayParticipantStatus extends TdObject {
  const GiveawayParticipantStatus();

  static const String constructor = 'giveawayParticipantStatus';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [GiveawayParticipantStatusAdministrator]
  /// [GiveawayParticipantStatusAlreadyWasMember]
  /// [GiveawayParticipantStatusDisallowedCountry]
  /// [GiveawayParticipantStatusEligible]
  /// [GiveawayParticipantStatusParticipating]
  static GiveawayParticipantStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case GiveawayParticipantStatusAdministrator.constructor:
        return GiveawayParticipantStatusAdministrator.fromJson(json);

      case GiveawayParticipantStatusAlreadyWasMember.constructor:
        return GiveawayParticipantStatusAlreadyWasMember.fromJson(json);

      case GiveawayParticipantStatusDisallowedCountry.constructor:
        return GiveawayParticipantStatusDisallowedCountry.fromJson(json);

      case GiveawayParticipantStatusEligible.constructor:
        return GiveawayParticipantStatusEligible.fromJson(json);

      case GiveawayParticipantStatusParticipating.constructor:
        return GiveawayParticipantStatusParticipating.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user can't participate in the giveaway, because they are an
/// administrator in one of the chats that created the giveaway
@immutable
final class GiveawayParticipantStatusAdministrator
    extends GiveawayParticipantStatus {
  GiveawayParticipantStatusAdministrator({required this.chatId});

  /// [chatId] Identifier of the chat administered by the user
  final int chatId;

  static const String constructor = 'giveawayParticipantStatusAdministrator';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    '@type': constructor,
  };

  static GiveawayParticipantStatusAdministrator? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return GiveawayParticipantStatusAdministrator(
      chatId: (json['chat_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user can't participate in the giveaway, because they have already been
/// member of the chat
@immutable
final class GiveawayParticipantStatusAlreadyWasMember
    extends GiveawayParticipantStatus {
  GiveawayParticipantStatusAlreadyWasMember({required this.joinedChatDate});

  /// [joinedChatDate] Point in time (Unix timestamp) when the user joined the
  /// chat
  final int joinedChatDate;

  static const String constructor = 'giveawayParticipantStatusAlreadyWasMember';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'joined_chat_date': joinedChatDate,
    '@type': constructor,
  };

  static GiveawayParticipantStatusAlreadyWasMember? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return GiveawayParticipantStatusAlreadyWasMember(
      joinedChatDate: (json['joined_chat_date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user can't participate in the giveaway, because they phone number is
/// from a disallowed country
@immutable
final class GiveawayParticipantStatusDisallowedCountry
    extends GiveawayParticipantStatus {
  GiveawayParticipantStatusDisallowedCountry({required this.userCountryCode});

  /// [userCountryCode] A two-letter ISO 3166-1 alpha-2 country code of the
  /// user's country
  final String userCountryCode;

  static const String constructor =
      'giveawayParticipantStatusDisallowedCountry';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_country_code': userCountryCode,
    '@type': constructor,
  };

  static GiveawayParticipantStatusDisallowedCountry? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return GiveawayParticipantStatusDisallowedCountry(
      userCountryCode: (json['user_country_code'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is eligible for the giveaway
@immutable
final class GiveawayParticipantStatusEligible
    extends GiveawayParticipantStatus {
  const GiveawayParticipantStatusEligible();

  static const String constructor = 'giveawayParticipantStatusEligible';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static GiveawayParticipantStatusEligible? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const GiveawayParticipantStatusEligible();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user participates in the giveaway
@immutable
final class GiveawayParticipantStatusParticipating
    extends GiveawayParticipantStatus {
  const GiveawayParticipantStatusParticipating();

  static const String constructor = 'giveawayParticipantStatusParticipating';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static GiveawayParticipantStatusParticipating? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const GiveawayParticipantStatusParticipating();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
