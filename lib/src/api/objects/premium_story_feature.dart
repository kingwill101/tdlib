import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a story feature available to Premium users
@immutable
sealed class PremiumStoryFeature extends TdObject {
  const PremiumStoryFeature();

  static const String constructor = 'premiumStoryFeature';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [PremiumStoryFeatureCustomExpirationDuration]
  /// [PremiumStoryFeatureLinksAndFormatting]
  /// [PremiumStoryFeaturePermanentViewsHistory]
  /// [PremiumStoryFeaturePriorityOrder]
  /// [PremiumStoryFeatureSaveStories]
  /// [PremiumStoryFeatureStealthMode]
  /// [PremiumStoryFeatureVideoQuality]
  static PremiumStoryFeature? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PremiumStoryFeatureCustomExpirationDuration.constructor:
        return PremiumStoryFeatureCustomExpirationDuration.fromJson(json);

      case PremiumStoryFeatureLinksAndFormatting.constructor:
        return PremiumStoryFeatureLinksAndFormatting.fromJson(json);

      case PremiumStoryFeaturePermanentViewsHistory.constructor:
        return PremiumStoryFeaturePermanentViewsHistory.fromJson(json);

      case PremiumStoryFeaturePriorityOrder.constructor:
        return PremiumStoryFeaturePriorityOrder.fromJson(json);

      case PremiumStoryFeatureSaveStories.constructor:
        return PremiumStoryFeatureSaveStories.fromJson(json);

      case PremiumStoryFeatureStealthMode.constructor:
        return PremiumStoryFeatureStealthMode.fromJson(json);

      case PremiumStoryFeatureVideoQuality.constructor:
        return PremiumStoryFeatureVideoQuality.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to set custom expiration duration for stories
@immutable
final class PremiumStoryFeatureCustomExpirationDuration
    extends PremiumStoryFeature {
  const PremiumStoryFeatureCustomExpirationDuration();

  static const String constructor =
      'premiumStoryFeatureCustomExpirationDuration';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumStoryFeatureCustomExpirationDuration? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumStoryFeatureCustomExpirationDuration();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to use links and formatting in story caption, and use
/// inputStoryAreaTypeLink areas
@immutable
final class PremiumStoryFeatureLinksAndFormatting extends PremiumStoryFeature {
  const PremiumStoryFeatureLinksAndFormatting();

  static const String constructor = 'premiumStoryFeatureLinksAndFormatting';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumStoryFeatureLinksAndFormatting? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumStoryFeatureLinksAndFormatting();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to check who opened the current user's stories after they
/// expire
@immutable
final class PremiumStoryFeaturePermanentViewsHistory
    extends PremiumStoryFeature {
  const PremiumStoryFeaturePermanentViewsHistory();

  static const String constructor = 'premiumStoryFeaturePermanentViewsHistory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumStoryFeaturePermanentViewsHistory? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumStoryFeaturePermanentViewsHistory();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Stories of the current user are displayed before stories of non-Premium
/// contacts, supergroups, and channels
@immutable
final class PremiumStoryFeaturePriorityOrder extends PremiumStoryFeature {
  const PremiumStoryFeaturePriorityOrder();

  static const String constructor = 'premiumStoryFeaturePriorityOrder';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumStoryFeaturePriorityOrder? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumStoryFeaturePriorityOrder();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to save other's unprotected stories
@immutable
final class PremiumStoryFeatureSaveStories extends PremiumStoryFeature {
  const PremiumStoryFeatureSaveStories();

  static const String constructor = 'premiumStoryFeatureSaveStories';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumStoryFeatureSaveStories? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumStoryFeatureSaveStories();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to hide the fact that the user viewed other's stories
@immutable
final class PremiumStoryFeatureStealthMode extends PremiumStoryFeature {
  const PremiumStoryFeatureStealthMode();

  static const String constructor = 'premiumStoryFeatureStealthMode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumStoryFeatureStealthMode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumStoryFeatureStealthMode();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The ability to choose better quality for viewed stories
@immutable
final class PremiumStoryFeatureVideoQuality extends PremiumStoryFeature {
  const PremiumStoryFeatureVideoQuality();

  static const String constructor = 'premiumStoryFeatureVideoQuality';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumStoryFeatureVideoQuality? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumStoryFeatureVideoQuality();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
