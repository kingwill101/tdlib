import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a feature available to Premium users
@immutable
sealed class PremiumFeature extends TdObject {
  const PremiumFeature();

  static const String constructor = 'premiumFeature';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [PremiumFeatureAccentColor]
  /// [PremiumFeatureAdvancedChatManagement]
  /// [PremiumFeatureAnimatedProfilePhoto]
  /// [PremiumFeatureAppIcons]
  /// [PremiumFeatureBackgroundForBoth]
  /// [PremiumFeatureBusiness]
  /// [PremiumFeatureChatBoost]
  /// [PremiumFeatureChecklists]
  /// [PremiumFeatureCustomEmoji]
  /// [PremiumFeatureDisabledAds]
  /// [PremiumFeatureEmojiStatus]
  /// [PremiumFeatureForumTopicIcon]
  /// [PremiumFeatureImprovedDownloadSpeed]
  /// [PremiumFeatureIncreasedLimits]
  /// [PremiumFeatureIncreasedUploadFileSize]
  /// [PremiumFeatureLastSeenTimes]
  /// [PremiumFeatureMessageEffects]
  /// [PremiumFeatureMessagePrivacy]
  /// [PremiumFeaturePaidMessages]
  /// [PremiumFeatureProfileBadge]
  /// [PremiumFeatureProtectPrivateChatContent]
  /// [PremiumFeatureRealTimeChatTranslation]
  /// [PremiumFeatureSavedMessagesTags]
  /// [PremiumFeatureTextComposition]
  /// [PremiumFeatureUniqueReactions]
  /// [PremiumFeatureUniqueStickers]
  /// [PremiumFeatureUpgradedStories]
  /// [PremiumFeatureVoiceRecognition]
  static PremiumFeature? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PremiumFeatureAccentColor.constructor:
        return PremiumFeatureAccentColor.fromJson(json);

      case PremiumFeatureAdvancedChatManagement.constructor:
        return PremiumFeatureAdvancedChatManagement.fromJson(json);

      case PremiumFeatureAnimatedProfilePhoto.constructor:
        return PremiumFeatureAnimatedProfilePhoto.fromJson(json);

      case PremiumFeatureAppIcons.constructor:
        return PremiumFeatureAppIcons.fromJson(json);

      case PremiumFeatureBackgroundForBoth.constructor:
        return PremiumFeatureBackgroundForBoth.fromJson(json);

      case PremiumFeatureBusiness.constructor:
        return PremiumFeatureBusiness.fromJson(json);

      case PremiumFeatureChatBoost.constructor:
        return PremiumFeatureChatBoost.fromJson(json);

      case PremiumFeatureChecklists.constructor:
        return PremiumFeatureChecklists.fromJson(json);

      case PremiumFeatureCustomEmoji.constructor:
        return PremiumFeatureCustomEmoji.fromJson(json);

      case PremiumFeatureDisabledAds.constructor:
        return PremiumFeatureDisabledAds.fromJson(json);

      case PremiumFeatureEmojiStatus.constructor:
        return PremiumFeatureEmojiStatus.fromJson(json);

      case PremiumFeatureForumTopicIcon.constructor:
        return PremiumFeatureForumTopicIcon.fromJson(json);

      case PremiumFeatureImprovedDownloadSpeed.constructor:
        return PremiumFeatureImprovedDownloadSpeed.fromJson(json);

      case PremiumFeatureIncreasedLimits.constructor:
        return PremiumFeatureIncreasedLimits.fromJson(json);

      case PremiumFeatureIncreasedUploadFileSize.constructor:
        return PremiumFeatureIncreasedUploadFileSize.fromJson(json);

      case PremiumFeatureLastSeenTimes.constructor:
        return PremiumFeatureLastSeenTimes.fromJson(json);

      case PremiumFeatureMessageEffects.constructor:
        return PremiumFeatureMessageEffects.fromJson(json);

      case PremiumFeatureMessagePrivacy.constructor:
        return PremiumFeatureMessagePrivacy.fromJson(json);

      case PremiumFeaturePaidMessages.constructor:
        return PremiumFeaturePaidMessages.fromJson(json);

      case PremiumFeatureProfileBadge.constructor:
        return PremiumFeatureProfileBadge.fromJson(json);

      case PremiumFeatureProtectPrivateChatContent.constructor:
        return PremiumFeatureProtectPrivateChatContent.fromJson(json);

      case PremiumFeatureRealTimeChatTranslation.constructor:
        return PremiumFeatureRealTimeChatTranslation.fromJson(json);

      case PremiumFeatureSavedMessagesTags.constructor:
        return PremiumFeatureSavedMessagesTags.fromJson(json);

      case PremiumFeatureTextComposition.constructor:
        return PremiumFeatureTextComposition.fromJson(json);

      case PremiumFeatureUniqueReactions.constructor:
        return PremiumFeatureUniqueReactions.fromJson(json);

      case PremiumFeatureUniqueStickers.constructor:
        return PremiumFeatureUniqueStickers.fromJson(json);

      case PremiumFeatureUpgradedStories.constructor:
        return PremiumFeatureUpgradedStories.fromJson(json);

      case PremiumFeatureVoiceRecognition.constructor:
        return PremiumFeatureVoiceRecognition.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to choose accent color for replies and user profile
@immutable
final class PremiumFeatureAccentColor extends PremiumFeature {
  const PremiumFeatureAccentColor();

  static const String constructor = 'premiumFeatureAccentColor';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureAccentColor? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureAccentColor();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Ability to change position of the main chat list, archive and mute all new
/// chats from non-contacts, and completely disable notifications about the
/// user's contacts joined Telegram
@immutable
final class PremiumFeatureAdvancedChatManagement extends PremiumFeature {
  const PremiumFeatureAdvancedChatManagement();

  static const String constructor = 'premiumFeatureAdvancedChatManagement';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureAdvancedChatManagement? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureAdvancedChatManagement();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Profile photo animation on message and chat screens
@immutable
final class PremiumFeatureAnimatedProfilePhoto extends PremiumFeature {
  const PremiumFeatureAnimatedProfilePhoto();

  static const String constructor = 'premiumFeatureAnimatedProfilePhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureAnimatedProfilePhoto? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureAnimatedProfilePhoto();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Allowed to set a premium application icons
@immutable
final class PremiumFeatureAppIcons extends PremiumFeature {
  const PremiumFeatureAppIcons();

  static const String constructor = 'premiumFeatureAppIcons';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureAppIcons? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureAppIcons();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to set private chat background for both users
@immutable
final class PremiumFeatureBackgroundForBoth extends PremiumFeature {
  const PremiumFeatureBackgroundForBoth();

  static const String constructor = 'premiumFeatureBackgroundForBoth';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureBackgroundForBoth? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureBackgroundForBoth();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to use Business features
@immutable
final class PremiumFeatureBusiness extends PremiumFeature {
  const PremiumFeatureBusiness();

  static const String constructor = 'premiumFeatureBusiness';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureBusiness? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureBusiness();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to boost chats
@immutable
final class PremiumFeatureChatBoost extends PremiumFeature {
  const PremiumFeatureChatBoost();

  static const String constructor = 'premiumFeatureChatBoost';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureChatBoost? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureChatBoost();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to create and use checklist messages
@immutable
final class PremiumFeatureChecklists extends PremiumFeature {
  const PremiumFeatureChecklists();

  static const String constructor = 'premiumFeatureChecklists';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureChecklists? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureChecklists();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Allowed to use custom emoji stickers in message texts and captions
@immutable
final class PremiumFeatureCustomEmoji extends PremiumFeature {
  const PremiumFeatureCustomEmoji();

  static const String constructor = 'premiumFeatureCustomEmoji';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureCustomEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureCustomEmoji();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Disabled ads
@immutable
final class PremiumFeatureDisabledAds extends PremiumFeature {
  const PremiumFeatureDisabledAds();

  static const String constructor = 'premiumFeatureDisabledAds';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureDisabledAds? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureDisabledAds();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to show an emoji status along with the user's name
@immutable
final class PremiumFeatureEmojiStatus extends PremiumFeature {
  const PremiumFeatureEmojiStatus();

  static const String constructor = 'premiumFeatureEmojiStatus';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureEmojiStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureEmojiStatus();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to set a custom emoji as a forum topic icon
@immutable
final class PremiumFeatureForumTopicIcon extends PremiumFeature {
  const PremiumFeatureForumTopicIcon();

  static const String constructor = 'premiumFeatureForumTopicIcon';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureForumTopicIcon? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureForumTopicIcon();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Improved download speed
@immutable
final class PremiumFeatureImprovedDownloadSpeed extends PremiumFeature {
  const PremiumFeatureImprovedDownloadSpeed();

  static const String constructor = 'premiumFeatureImprovedDownloadSpeed';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureImprovedDownloadSpeed? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureImprovedDownloadSpeed();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Increased limits
@immutable
final class PremiumFeatureIncreasedLimits extends PremiumFeature {
  const PremiumFeatureIncreasedLimits();

  static const String constructor = 'premiumFeatureIncreasedLimits';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureIncreasedLimits? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureIncreasedLimits();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Increased maximum upload file size
@immutable
final class PremiumFeatureIncreasedUploadFileSize extends PremiumFeature {
  const PremiumFeatureIncreasedUploadFileSize();

  static const String constructor = 'premiumFeatureIncreasedUploadFileSize';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureIncreasedUploadFileSize? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureIncreasedUploadFileSize();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to view last seen and read times of other users even if they
/// can't view last seen or read time for the current user
@immutable
final class PremiumFeatureLastSeenTimes extends PremiumFeature {
  const PremiumFeatureLastSeenTimes();

  static const String constructor = 'premiumFeatureLastSeenTimes';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureLastSeenTimes? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureLastSeenTimes();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to use all available message effects
@immutable
final class PremiumFeatureMessageEffects extends PremiumFeature {
  const PremiumFeatureMessageEffects();

  static const String constructor = 'premiumFeatureMessageEffects';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureMessageEffects? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureMessageEffects();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to disallow incoming voice and video note messages in private
/// chats using setUserPrivacySettingRules with
/// userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages and to restrict
/// incoming messages from non-contacts using setNewChatPrivacySettings
@immutable
final class PremiumFeatureMessagePrivacy extends PremiumFeature {
  const PremiumFeatureMessagePrivacy();

  static const String constructor = 'premiumFeatureMessagePrivacy';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureMessagePrivacy? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureMessagePrivacy();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to require a payment for incoming messages in new chats
@immutable
final class PremiumFeaturePaidMessages extends PremiumFeature {
  const PremiumFeaturePaidMessages();

  static const String constructor = 'premiumFeaturePaidMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeaturePaidMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeaturePaidMessages();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A badge in the user's profile
@immutable
final class PremiumFeatureProfileBadge extends PremiumFeature {
  const PremiumFeatureProfileBadge();

  static const String constructor = 'premiumFeatureProfileBadge';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureProfileBadge? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureProfileBadge();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to enable content protection in private chats
@immutable
final class PremiumFeatureProtectPrivateChatContent extends PremiumFeature {
  const PremiumFeatureProtectPrivateChatContent();

  static const String constructor = 'premiumFeatureProtectPrivateChatContent';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureProtectPrivateChatContent? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureProtectPrivateChatContent();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Allowed to translate chat messages real-time
@immutable
final class PremiumFeatureRealTimeChatTranslation extends PremiumFeature {
  const PremiumFeatureRealTimeChatTranslation();

  static const String constructor = 'premiumFeatureRealTimeChatTranslation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureRealTimeChatTranslation? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureRealTimeChatTranslation();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to use tags in Saved Messages
@immutable
final class PremiumFeatureSavedMessagesTags extends PremiumFeature {
  const PremiumFeatureSavedMessagesTags();

  static const String constructor = 'premiumFeatureSavedMessagesTags';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureSavedMessagesTags? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureSavedMessagesTags();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to compose text with AI
@immutable
final class PremiumFeatureTextComposition extends PremiumFeature {
  const PremiumFeatureTextComposition();

  static const String constructor = 'premiumFeatureTextComposition';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureTextComposition? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureTextComposition();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Allowed to use more reactions
@immutable
final class PremiumFeatureUniqueReactions extends PremiumFeature {
  const PremiumFeatureUniqueReactions();

  static const String constructor = 'premiumFeatureUniqueReactions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureUniqueReactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureUniqueReactions();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Allowed to use premium stickers with unique effects
@immutable
final class PremiumFeatureUniqueStickers extends PremiumFeature {
  const PremiumFeatureUniqueStickers();

  static const String constructor = 'premiumFeatureUniqueStickers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureUniqueStickers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureUniqueStickers();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Allowed to use many additional features for stories
@immutable
final class PremiumFeatureUpgradedStories extends PremiumFeature {
  const PremiumFeatureUpgradedStories();

  static const String constructor = 'premiumFeatureUpgradedStories';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureUpgradedStories? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureUpgradedStories();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to convert voice notes to text
@immutable
final class PremiumFeatureVoiceRecognition extends PremiumFeature {
  const PremiumFeatureVoiceRecognition();

  static const String constructor = 'premiumFeatureVoiceRecognition';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumFeatureVoiceRecognition? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureVoiceRecognition();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
