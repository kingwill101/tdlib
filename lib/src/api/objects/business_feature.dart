import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a feature available to Business user accounts
@immutable
sealed class BusinessFeature extends TdObject {
  const BusinessFeature();

  static const String constructor = 'businessFeature';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [BusinessFeatureAccountLinks]
  /// [BusinessFeatureAwayMessage]
  /// [BusinessFeatureBots]
  /// [BusinessFeatureChatFolderTags]
  /// [BusinessFeatureEmojiStatus]
  /// [BusinessFeatureGreetingMessage]
  /// [BusinessFeatureLocation]
  /// [BusinessFeatureOpeningHours]
  /// [BusinessFeatureQuickReplies]
  /// [BusinessFeatureStartPage]
  /// [BusinessFeatureUpgradedStories]
  static BusinessFeature? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case BusinessFeatureAccountLinks.constructor:
        return BusinessFeatureAccountLinks.fromJson(json);

      case BusinessFeatureAwayMessage.constructor:
        return BusinessFeatureAwayMessage.fromJson(json);

      case BusinessFeatureBots.constructor:
        return BusinessFeatureBots.fromJson(json);

      case BusinessFeatureChatFolderTags.constructor:
        return BusinessFeatureChatFolderTags.fromJson(json);

      case BusinessFeatureEmojiStatus.constructor:
        return BusinessFeatureEmojiStatus.fromJson(json);

      case BusinessFeatureGreetingMessage.constructor:
        return BusinessFeatureGreetingMessage.fromJson(json);

      case BusinessFeatureLocation.constructor:
        return BusinessFeatureLocation.fromJson(json);

      case BusinessFeatureOpeningHours.constructor:
        return BusinessFeatureOpeningHours.fromJson(json);

      case BusinessFeatureQuickReplies.constructor:
        return BusinessFeatureQuickReplies.fromJson(json);

      case BusinessFeatureStartPage.constructor:
        return BusinessFeatureStartPage.fromJson(json);

      case BusinessFeatureUpgradedStories.constructor:
        return BusinessFeatureUpgradedStories.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to create links to the business account with predefined
/// message text
@immutable
final class BusinessFeatureAccountLinks extends BusinessFeature {
  const BusinessFeatureAccountLinks();

  static const String constructor = 'businessFeatureAccountLinks';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static BusinessFeatureAccountLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BusinessFeatureAccountLinks();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to set up an away message
@immutable
final class BusinessFeatureAwayMessage extends BusinessFeature {
  const BusinessFeatureAwayMessage();

  static const String constructor = 'businessFeatureAwayMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static BusinessFeatureAwayMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BusinessFeatureAwayMessage();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to connect a bot to the account
@immutable
final class BusinessFeatureBots extends BusinessFeature {
  const BusinessFeatureBots();

  static const String constructor = 'businessFeatureBots';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static BusinessFeatureBots? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BusinessFeatureBots();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to display folder names for each chat in the chat list
@immutable
final class BusinessFeatureChatFolderTags extends BusinessFeature {
  const BusinessFeatureChatFolderTags();

  static const String constructor = 'businessFeatureChatFolderTags';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static BusinessFeatureChatFolderTags? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BusinessFeatureChatFolderTags();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to show an emoji status along with the business name
@immutable
final class BusinessFeatureEmojiStatus extends BusinessFeature {
  const BusinessFeatureEmojiStatus();

  static const String constructor = 'businessFeatureEmojiStatus';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static BusinessFeatureEmojiStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BusinessFeatureEmojiStatus();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to set up a greeting message
@immutable
final class BusinessFeatureGreetingMessage extends BusinessFeature {
  const BusinessFeatureGreetingMessage();

  static const String constructor = 'businessFeatureGreetingMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static BusinessFeatureGreetingMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BusinessFeatureGreetingMessage();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to set location
@immutable
final class BusinessFeatureLocation extends BusinessFeature {
  const BusinessFeatureLocation();

  static const String constructor = 'businessFeatureLocation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static BusinessFeatureLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BusinessFeatureLocation();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to set opening hours
@immutable
final class BusinessFeatureOpeningHours extends BusinessFeature {
  const BusinessFeatureOpeningHours();

  static const String constructor = 'businessFeatureOpeningHours';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static BusinessFeatureOpeningHours? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BusinessFeatureOpeningHours();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to use quick replies
@immutable
final class BusinessFeatureQuickReplies extends BusinessFeature {
  const BusinessFeatureQuickReplies();

  static const String constructor = 'businessFeatureQuickReplies';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static BusinessFeatureQuickReplies? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BusinessFeatureQuickReplies();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to customize start page
@immutable
final class BusinessFeatureStartPage extends BusinessFeature {
  const BusinessFeatureStartPage();

  static const String constructor = 'businessFeatureStartPage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static BusinessFeatureStartPage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BusinessFeatureStartPage();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Allowed to use many additional features for stories
@immutable
final class BusinessFeatureUpgradedStories extends BusinessFeature {
  const BusinessFeatureUpgradedStories();

  static const String constructor = 'businessFeatureUpgradedStories';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static BusinessFeatureUpgradedStories? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BusinessFeatureUpgradedStories();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
