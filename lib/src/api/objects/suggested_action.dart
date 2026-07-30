import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an action suggested to the current user
@immutable
sealed class SuggestedAction extends TdObject {
  const SuggestedAction();

  static const String constructor = 'suggestedAction';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [SuggestedActionAddLoginPasskey]
  /// [SuggestedActionCheckPassword]
  /// [SuggestedActionCheckPhoneNumber]
  /// [SuggestedActionConvertToBroadcastGroup]
  /// [SuggestedActionCustom]
  /// [SuggestedActionEnableArchiveAndMuteNewChats]
  /// [SuggestedActionExtendPremium]
  /// [SuggestedActionExtendStarSubscriptions]
  /// [SuggestedActionGiftPremiumForChristmas]
  /// [SuggestedActionRestorePremium]
  /// [SuggestedActionSetBirthdate]
  /// [SuggestedActionSetLoginEmailAddress]
  /// [SuggestedActionSetPassword]
  /// [SuggestedActionSetProfilePhoto]
  /// [SuggestedActionSubscribeToAnnualPremium]
  /// [SuggestedActionUpgradePremium]
  /// [SuggestedActionViewChecksHint]
  static SuggestedAction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SuggestedActionAddLoginPasskey.constructor:
        return SuggestedActionAddLoginPasskey.fromJson(json);

      case SuggestedActionCheckPassword.constructor:
        return SuggestedActionCheckPassword.fromJson(json);

      case SuggestedActionCheckPhoneNumber.constructor:
        return SuggestedActionCheckPhoneNumber.fromJson(json);

      case SuggestedActionConvertToBroadcastGroup.constructor:
        return SuggestedActionConvertToBroadcastGroup.fromJson(json);

      case SuggestedActionCustom.constructor:
        return SuggestedActionCustom.fromJson(json);

      case SuggestedActionEnableArchiveAndMuteNewChats.constructor:
        return SuggestedActionEnableArchiveAndMuteNewChats.fromJson(json);

      case SuggestedActionExtendPremium.constructor:
        return SuggestedActionExtendPremium.fromJson(json);

      case SuggestedActionExtendStarSubscriptions.constructor:
        return SuggestedActionExtendStarSubscriptions.fromJson(json);

      case SuggestedActionGiftPremiumForChristmas.constructor:
        return SuggestedActionGiftPremiumForChristmas.fromJson(json);

      case SuggestedActionRestorePremium.constructor:
        return SuggestedActionRestorePremium.fromJson(json);

      case SuggestedActionSetBirthdate.constructor:
        return SuggestedActionSetBirthdate.fromJson(json);

      case SuggestedActionSetLoginEmailAddress.constructor:
        return SuggestedActionSetLoginEmailAddress.fromJson(json);

      case SuggestedActionSetPassword.constructor:
        return SuggestedActionSetPassword.fromJson(json);

      case SuggestedActionSetProfilePhoto.constructor:
        return SuggestedActionSetProfilePhoto.fromJson(json);

      case SuggestedActionSubscribeToAnnualPremium.constructor:
        return SuggestedActionSubscribeToAnnualPremium.fromJson(json);

      case SuggestedActionUpgradePremium.constructor:
        return SuggestedActionUpgradePremium.fromJson(json);

      case SuggestedActionViewChecksHint.constructor:
        return SuggestedActionViewChecksHint.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Suggests the user to add a passkey for login using addLoginPasskey
@immutable
final class SuggestedActionAddLoginPasskey extends SuggestedAction {
  const SuggestedActionAddLoginPasskey();

  static const String constructor = 'suggestedActionAddLoginPasskey';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SuggestedActionAddLoginPasskey? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionAddLoginPasskey();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Suggests the user to check whether they still remember their 2-step
/// verification password
@immutable
final class SuggestedActionCheckPassword extends SuggestedAction {
  const SuggestedActionCheckPassword();

  static const String constructor = 'suggestedActionCheckPassword';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SuggestedActionCheckPassword? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionCheckPassword();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Suggests the user to check whether authorization phone number is correct
/// and change the phone number if it is inaccessible
@immutable
final class SuggestedActionCheckPhoneNumber extends SuggestedAction {
  const SuggestedActionCheckPhoneNumber();

  static const String constructor = 'suggestedActionCheckPhoneNumber';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SuggestedActionCheckPhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionCheckPhoneNumber();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Suggests the user to convert specified supergroup to a broadcast group
@immutable
final class SuggestedActionConvertToBroadcastGroup extends SuggestedAction {
  SuggestedActionConvertToBroadcastGroup({required this.supergroupId});

  /// [supergroupId] Supergroup identifier
  final int supergroupId;

  static const String constructor = 'suggestedActionConvertToBroadcastGroup';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'supergroup_id': supergroupId,
    '@type': constructor,
  };

  static SuggestedActionConvertToBroadcastGroup? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return SuggestedActionConvertToBroadcastGroup(
      supergroupId: (json['supergroup_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A custom suggestion to be shown at the top of the chat list
@immutable
final class SuggestedActionCustom extends SuggestedAction {
  SuggestedActionCustom({
    required this.name,
    this.title,
    this.description,
    required this.url,
  });

  /// [name] Unique name of the suggestion
  final String name;

  /// [title] Title of the suggestion
  final FormattedText? title;

  /// param_[description] Description of the suggestion
  final FormattedText? description;

  /// [url] The link to open when the suggestion is clicked
  final String url;

  static const String constructor = 'suggestedActionCustom';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'name': name,
    'title': title?.toJson(),
    'description': description?.toJson(),
    'url': url,
    '@type': constructor,
  };

  static SuggestedActionCustom? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SuggestedActionCustom(
      name: (json['name'] as String?) ?? '',
      title: FormattedText.fromJson(tdMapFromJson(json['title'])),
      description: FormattedText.fromJson(tdMapFromJson(json['description'])),
      url: (json['url'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Suggests the user to enable archive_and_mute_new_chats_from_unknown_users
/// setting in archiveChatListSettings
@immutable
final class SuggestedActionEnableArchiveAndMuteNewChats
    extends SuggestedAction {
  const SuggestedActionEnableArchiveAndMuteNewChats();

  static const String constructor =
      'suggestedActionEnableArchiveAndMuteNewChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SuggestedActionEnableArchiveAndMuteNewChats? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionEnableArchiveAndMuteNewChats();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Suggests the user to extend their expiring Telegram Premium subscription
@immutable
final class SuggestedActionExtendPremium extends SuggestedAction {
  SuggestedActionExtendPremium({required this.managePremiumSubscriptionUrl});

  /// [managePremiumSubscriptionUrl] A URL for managing Telegram Premium
  /// subscription
  final String managePremiumSubscriptionUrl;

  static const String constructor = 'suggestedActionExtendPremium';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'manage_premium_subscription_url': managePremiumSubscriptionUrl,
    '@type': constructor,
  };

  static SuggestedActionExtendPremium? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SuggestedActionExtendPremium(
      managePremiumSubscriptionUrl:
          (json['manage_premium_subscription_url'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Suggests the user to extend their expiring Telegram Star subscriptions.
/// Call getStarSubscriptions with only_expiring == true to get the number of
/// expiring subscriptions and the number of required to buy Telegram Stars
@immutable
final class SuggestedActionExtendStarSubscriptions extends SuggestedAction {
  const SuggestedActionExtendStarSubscriptions();

  static const String constructor = 'suggestedActionExtendStarSubscriptions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SuggestedActionExtendStarSubscriptions? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionExtendStarSubscriptions();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Suggests the user to gift Telegram Premium to friends for Christmas
@immutable
final class SuggestedActionGiftPremiumForChristmas extends SuggestedAction {
  const SuggestedActionGiftPremiumForChristmas();

  static const String constructor = 'suggestedActionGiftPremiumForChristmas';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SuggestedActionGiftPremiumForChristmas? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionGiftPremiumForChristmas();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Suggests the user to restore a recently expired Premium subscription
@immutable
final class SuggestedActionRestorePremium extends SuggestedAction {
  const SuggestedActionRestorePremium();

  static const String constructor = 'suggestedActionRestorePremium';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SuggestedActionRestorePremium? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionRestorePremium();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Suggests the user to set birthdate
@immutable
final class SuggestedActionSetBirthdate extends SuggestedAction {
  const SuggestedActionSetBirthdate();

  static const String constructor = 'suggestedActionSetBirthdate';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SuggestedActionSetBirthdate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionSetBirthdate();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Suggests the user to add login email address. Call
/// isLoginEmailAddressRequired, and then setLoginEmailAddress or
/// checkLoginEmailAddressCode to change the login email address
@immutable
final class SuggestedActionSetLoginEmailAddress extends SuggestedAction {
  SuggestedActionSetLoginEmailAddress({required this.canBeHidden});

  /// [canBeHidden] True, if the suggested action can be hidden using
  /// hideSuggestedAction. Otherwise, the user must not be able to use the
  /// application without setting up the email address
  final bool canBeHidden;

  static const String constructor = 'suggestedActionSetLoginEmailAddress';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'can_be_hidden': canBeHidden,
    '@type': constructor,
  };

  static SuggestedActionSetLoginEmailAddress? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return SuggestedActionSetLoginEmailAddress(
      canBeHidden: (json['can_be_hidden'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Suggests the user to set a 2-step verification password to be able to log
/// in again
@immutable
final class SuggestedActionSetPassword extends SuggestedAction {
  SuggestedActionSetPassword({required this.authorizationDelay});

  /// [authorizationDelay] The number of days to pass between consecutive
  /// authorizations if the user declines to set password; if 0, then the user
  /// is advised to set the password for security reasons
  final int authorizationDelay;

  static const String constructor = 'suggestedActionSetPassword';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'authorization_delay': authorizationDelay,
    '@type': constructor,
  };

  static SuggestedActionSetPassword? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SuggestedActionSetPassword(
      authorizationDelay: (json['authorization_delay'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Suggests the user to set profile photo
@immutable
final class SuggestedActionSetProfilePhoto extends SuggestedAction {
  const SuggestedActionSetProfilePhoto();

  static const String constructor = 'suggestedActionSetProfilePhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SuggestedActionSetProfilePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionSetProfilePhoto();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Suggests the user to subscribe to the Premium subscription with annual
/// payments
@immutable
final class SuggestedActionSubscribeToAnnualPremium extends SuggestedAction {
  const SuggestedActionSubscribeToAnnualPremium();

  static const String constructor = 'suggestedActionSubscribeToAnnualPremium';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SuggestedActionSubscribeToAnnualPremium? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionSubscribeToAnnualPremium();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Suggests the user to upgrade the Premium subscription from monthly
/// payments to annual payments
@immutable
final class SuggestedActionUpgradePremium extends SuggestedAction {
  const SuggestedActionUpgradePremium();

  static const String constructor = 'suggestedActionUpgradePremium';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SuggestedActionUpgradePremium? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionUpgradePremium();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Suggests the user to view a hint about the meaning of one and two check
/// marks on sent messages
@immutable
final class SuggestedActionViewChecksHint extends SuggestedAction {
  const SuggestedActionViewChecksHint();

  static const String constructor = 'suggestedActionViewChecksHint';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SuggestedActionViewChecksHint? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionViewChecksHint();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
