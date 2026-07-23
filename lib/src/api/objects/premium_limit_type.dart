import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of limit, increased for Premium users
@immutable
sealed class PremiumLimitType extends TdObject {
  const PremiumLimitType();

  static const String constructor = 'premiumLimitType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [PremiumLimitTypeActiveStoryCount]
  /// [PremiumLimitTypeBioLength]
  /// [PremiumLimitTypeCaptionLength]
  /// [PremiumLimitTypeChatFolderChosenChatCount]
  /// [PremiumLimitTypeChatFolderCount]
  /// [PremiumLimitTypeChatFolderInviteLinkCount]
  /// [PremiumLimitTypeCreatedPublicChatCount]
  /// [PremiumLimitTypeCustomTextCompositionStyleCount]
  /// [PremiumLimitTypeFavoriteStickerCount]
  /// [PremiumLimitTypeMonthlyPostedStoryCount]
  /// [PremiumLimitTypeOwnedBotCount]
  /// [PremiumLimitTypePinnedArchivedChatCount]
  /// [PremiumLimitTypePinnedChatCount]
  /// [PremiumLimitTypePinnedSavedMessagesTopicCount]
  /// [PremiumLimitTypeSavedAnimationCount]
  /// [PremiumLimitTypeShareableChatFolderCount]
  /// [PremiumLimitTypeSimilarChatCount]
  /// [PremiumLimitTypeStoryCaptionLength]
  /// [PremiumLimitTypeStorySuggestedReactionAreaCount]
  /// [PremiumLimitTypeSupergroupCount]
  /// [PremiumLimitTypeWeeklyPostedStoryCount]
  static PremiumLimitType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PremiumLimitTypeActiveStoryCount.constructor:
        return PremiumLimitTypeActiveStoryCount.fromJson(json);

      case PremiumLimitTypeBioLength.constructor:
        return PremiumLimitTypeBioLength.fromJson(json);

      case PremiumLimitTypeCaptionLength.constructor:
        return PremiumLimitTypeCaptionLength.fromJson(json);

      case PremiumLimitTypeChatFolderChosenChatCount.constructor:
        return PremiumLimitTypeChatFolderChosenChatCount.fromJson(json);

      case PremiumLimitTypeChatFolderCount.constructor:
        return PremiumLimitTypeChatFolderCount.fromJson(json);

      case PremiumLimitTypeChatFolderInviteLinkCount.constructor:
        return PremiumLimitTypeChatFolderInviteLinkCount.fromJson(json);

      case PremiumLimitTypeCreatedPublicChatCount.constructor:
        return PremiumLimitTypeCreatedPublicChatCount.fromJson(json);

      case PremiumLimitTypeCustomTextCompositionStyleCount.constructor:
        return PremiumLimitTypeCustomTextCompositionStyleCount.fromJson(json);

      case PremiumLimitTypeFavoriteStickerCount.constructor:
        return PremiumLimitTypeFavoriteStickerCount.fromJson(json);

      case PremiumLimitTypeMonthlyPostedStoryCount.constructor:
        return PremiumLimitTypeMonthlyPostedStoryCount.fromJson(json);

      case PremiumLimitTypeOwnedBotCount.constructor:
        return PremiumLimitTypeOwnedBotCount.fromJson(json);

      case PremiumLimitTypePinnedArchivedChatCount.constructor:
        return PremiumLimitTypePinnedArchivedChatCount.fromJson(json);

      case PremiumLimitTypePinnedChatCount.constructor:
        return PremiumLimitTypePinnedChatCount.fromJson(json);

      case PremiumLimitTypePinnedSavedMessagesTopicCount.constructor:
        return PremiumLimitTypePinnedSavedMessagesTopicCount.fromJson(json);

      case PremiumLimitTypeSavedAnimationCount.constructor:
        return PremiumLimitTypeSavedAnimationCount.fromJson(json);

      case PremiumLimitTypeShareableChatFolderCount.constructor:
        return PremiumLimitTypeShareableChatFolderCount.fromJson(json);

      case PremiumLimitTypeSimilarChatCount.constructor:
        return PremiumLimitTypeSimilarChatCount.fromJson(json);

      case PremiumLimitTypeStoryCaptionLength.constructor:
        return PremiumLimitTypeStoryCaptionLength.fromJson(json);

      case PremiumLimitTypeStorySuggestedReactionAreaCount.constructor:
        return PremiumLimitTypeStorySuggestedReactionAreaCount.fromJson(json);

      case PremiumLimitTypeSupergroupCount.constructor:
        return PremiumLimitTypeSupergroupCount.fromJson(json);

      case PremiumLimitTypeWeeklyPostedStoryCount.constructor:
        return PremiumLimitTypeWeeklyPostedStoryCount.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The maximum number of active stories
@immutable
final class PremiumLimitTypeActiveStoryCount extends PremiumLimitType {
  const PremiumLimitTypeActiveStoryCount();

  static const String constructor = 'premiumLimitTypeActiveStoryCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumLimitTypeActiveStoryCount? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeActiveStoryCount();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The maximum length of the user's bio
@immutable
final class PremiumLimitTypeBioLength extends PremiumLimitType {
  const PremiumLimitTypeBioLength();

  static const String constructor = 'premiumLimitTypeBioLength';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumLimitTypeBioLength? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeBioLength();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The maximum length of sent media caption
@immutable
final class PremiumLimitTypeCaptionLength extends PremiumLimitType {
  const PremiumLimitTypeCaptionLength();

  static const String constructor = 'premiumLimitTypeCaptionLength';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumLimitTypeCaptionLength? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeCaptionLength();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The maximum number of pinned and always included, or always excluded chats
/// in a chat folder
@immutable
final class PremiumLimitTypeChatFolderChosenChatCount extends PremiumLimitType {
  const PremiumLimitTypeChatFolderChosenChatCount();

  static const String constructor = 'premiumLimitTypeChatFolderChosenChatCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumLimitTypeChatFolderChosenChatCount? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeChatFolderChosenChatCount();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The maximum number of chat folders
@immutable
final class PremiumLimitTypeChatFolderCount extends PremiumLimitType {
  const PremiumLimitTypeChatFolderCount();

  static const String constructor = 'premiumLimitTypeChatFolderCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumLimitTypeChatFolderCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeChatFolderCount();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The maximum number of invite links for a chat folder
@immutable
final class PremiumLimitTypeChatFolderInviteLinkCount extends PremiumLimitType {
  const PremiumLimitTypeChatFolderInviteLinkCount();

  static const String constructor = 'premiumLimitTypeChatFolderInviteLinkCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumLimitTypeChatFolderInviteLinkCount? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeChatFolderInviteLinkCount();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The maximum number of created public chats
@immutable
final class PremiumLimitTypeCreatedPublicChatCount extends PremiumLimitType {
  const PremiumLimitTypeCreatedPublicChatCount();

  static const String constructor = 'premiumLimitTypeCreatedPublicChatCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumLimitTypeCreatedPublicChatCount? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeCreatedPublicChatCount();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The maximum number of added text composition styles
@immutable
final class PremiumLimitTypeCustomTextCompositionStyleCount
    extends PremiumLimitType {
  const PremiumLimitTypeCustomTextCompositionStyleCount();

  static const String constructor =
      'premiumLimitTypeCustomTextCompositionStyleCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumLimitTypeCustomTextCompositionStyleCount? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeCustomTextCompositionStyleCount();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The maximum number of favorite stickers
@immutable
final class PremiumLimitTypeFavoriteStickerCount extends PremiumLimitType {
  const PremiumLimitTypeFavoriteStickerCount();

  static const String constructor = 'premiumLimitTypeFavoriteStickerCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumLimitTypeFavoriteStickerCount? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeFavoriteStickerCount();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The maximum number of stories posted per month
@immutable
final class PremiumLimitTypeMonthlyPostedStoryCount extends PremiumLimitType {
  const PremiumLimitTypeMonthlyPostedStoryCount();

  static const String constructor = 'premiumLimitTypeMonthlyPostedStoryCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumLimitTypeMonthlyPostedStoryCount? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeMonthlyPostedStoryCount();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The maximum number of owned bots
@immutable
final class PremiumLimitTypeOwnedBotCount extends PremiumLimitType {
  const PremiumLimitTypeOwnedBotCount();

  static const String constructor = 'premiumLimitTypeOwnedBotCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumLimitTypeOwnedBotCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeOwnedBotCount();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The maximum number of pinned chats in the archive chat list
@immutable
final class PremiumLimitTypePinnedArchivedChatCount extends PremiumLimitType {
  const PremiumLimitTypePinnedArchivedChatCount();

  static const String constructor = 'premiumLimitTypePinnedArchivedChatCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumLimitTypePinnedArchivedChatCount? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypePinnedArchivedChatCount();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The maximum number of pinned chats in the main chat list
@immutable
final class PremiumLimitTypePinnedChatCount extends PremiumLimitType {
  const PremiumLimitTypePinnedChatCount();

  static const String constructor = 'premiumLimitTypePinnedChatCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumLimitTypePinnedChatCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypePinnedChatCount();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The maximum number of pinned Saved Messages topics
@immutable
final class PremiumLimitTypePinnedSavedMessagesTopicCount
    extends PremiumLimitType {
  const PremiumLimitTypePinnedSavedMessagesTopicCount();

  static const String constructor =
      'premiumLimitTypePinnedSavedMessagesTopicCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumLimitTypePinnedSavedMessagesTopicCount? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypePinnedSavedMessagesTopicCount();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The maximum number of saved animations
@immutable
final class PremiumLimitTypeSavedAnimationCount extends PremiumLimitType {
  const PremiumLimitTypeSavedAnimationCount();

  static const String constructor = 'premiumLimitTypeSavedAnimationCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumLimitTypeSavedAnimationCount? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeSavedAnimationCount();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The maximum number of added shareable chat folders
@immutable
final class PremiumLimitTypeShareableChatFolderCount extends PremiumLimitType {
  const PremiumLimitTypeShareableChatFolderCount();

  static const String constructor = 'premiumLimitTypeShareableChatFolderCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumLimitTypeShareableChatFolderCount? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeShareableChatFolderCount();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The maximum number of received similar chats
@immutable
final class PremiumLimitTypeSimilarChatCount extends PremiumLimitType {
  const PremiumLimitTypeSimilarChatCount();

  static const String constructor = 'premiumLimitTypeSimilarChatCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumLimitTypeSimilarChatCount? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeSimilarChatCount();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The maximum length of captions of posted stories
@immutable
final class PremiumLimitTypeStoryCaptionLength extends PremiumLimitType {
  const PremiumLimitTypeStoryCaptionLength();

  static const String constructor = 'premiumLimitTypeStoryCaptionLength';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumLimitTypeStoryCaptionLength? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeStoryCaptionLength();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The maximum number of suggested reaction areas on a story
@immutable
final class PremiumLimitTypeStorySuggestedReactionAreaCount
    extends PremiumLimitType {
  const PremiumLimitTypeStorySuggestedReactionAreaCount();

  static const String constructor =
      'premiumLimitTypeStorySuggestedReactionAreaCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumLimitTypeStorySuggestedReactionAreaCount? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeStorySuggestedReactionAreaCount();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The maximum number of joined supergroups and channels
@immutable
final class PremiumLimitTypeSupergroupCount extends PremiumLimitType {
  const PremiumLimitTypeSupergroupCount();

  static const String constructor = 'premiumLimitTypeSupergroupCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumLimitTypeSupergroupCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeSupergroupCount();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The maximum number of stories posted per week
@immutable
final class PremiumLimitTypeWeeklyPostedStoryCount extends PremiumLimitType {
  const PremiumLimitTypeWeeklyPostedStoryCount();

  static const String constructor = 'premiumLimitTypeWeeklyPostedStoryCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumLimitTypeWeeklyPostedStoryCount? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeWeeklyPostedStoryCount();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
