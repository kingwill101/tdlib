import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a source from which the Premium features screen is opened
@immutable
sealed class PremiumSource extends TdObject {
  const PremiumSource();

  static const String constructor = 'premiumSource';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [PremiumSourceBusinessFeature]
  /// [PremiumSourceFeature]
  /// [PremiumSourceLimitExceeded]
  /// [PremiumSourceLink]
  /// [PremiumSourceSettings]
  /// [PremiumSourceStoryFeature]
  static PremiumSource? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PremiumSourceBusinessFeature.constructor:
        return PremiumSourceBusinessFeature.fromJson(json);

      case PremiumSourceFeature.constructor:
        return PremiumSourceFeature.fromJson(json);

      case PremiumSourceLimitExceeded.constructor:
        return PremiumSourceLimitExceeded.fromJson(json);

      case PremiumSourceLink.constructor:
        return PremiumSourceLink.fromJson(json);

      case PremiumSourceSettings.constructor:
        return PremiumSourceSettings.fromJson(json);

      case PremiumSourceStoryFeature.constructor:
        return PremiumSourceStoryFeature.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A user tried to use a Business feature
@immutable
final class PremiumSourceBusinessFeature extends PremiumSource {
  PremiumSourceBusinessFeature({this.feature});

  /// [feature] The used feature; pass null if none specific feature was used
  final BusinessFeature? feature;

  static const String constructor = 'premiumSourceBusinessFeature';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'feature': feature?.toJson(),
    '@type': constructor,
  };

  static PremiumSourceBusinessFeature? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumSourceBusinessFeature(
      feature: BusinessFeature.fromJson(tdMapFromJson(json['feature'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A user tried to use a Premium feature
@immutable
final class PremiumSourceFeature extends PremiumSource {
  PremiumSourceFeature({this.feature});

  /// [feature] The used feature
  final PremiumFeature? feature;

  static const String constructor = 'premiumSourceFeature';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'feature': feature?.toJson(),
    '@type': constructor,
  };

  static PremiumSourceFeature? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumSourceFeature(
      feature: PremiumFeature.fromJson(tdMapFromJson(json['feature'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A limit was exceeded
@immutable
final class PremiumSourceLimitExceeded extends PremiumSource {
  PremiumSourceLimitExceeded({this.limitType});

  /// [limitType] Type of the exceeded limit
  final PremiumLimitType? limitType;

  static const String constructor = 'premiumSourceLimitExceeded';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'limit_type': limitType?.toJson(),
    '@type': constructor,
  };

  static PremiumSourceLimitExceeded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumSourceLimitExceeded(
      limitType: PremiumLimitType.fromJson(tdMapFromJson(json['limit_type'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A user opened an internal link of the type
/// internalLinkTypePremiumFeaturesPage
@immutable
final class PremiumSourceLink extends PremiumSource {
  PremiumSourceLink({required this.referrer});

  /// [referrer] The referrer from the link
  final String referrer;

  static const String constructor = 'premiumSourceLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'referrer': referrer,
    '@type': constructor,
  };

  static PremiumSourceLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumSourceLink(referrer: (json['referrer'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A user opened the Premium features screen from settings
@immutable
final class PremiumSourceSettings extends PremiumSource {
  const PremiumSourceSettings();

  static const String constructor = 'premiumSourceSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PremiumSourceSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumSourceSettings();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A user tried to use a Premium story feature
@immutable
final class PremiumSourceStoryFeature extends PremiumSource {
  PremiumSourceStoryFeature({this.feature});

  /// [feature] The used feature
  final PremiumStoryFeature? feature;

  static const String constructor = 'premiumSourceStoryFeature';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'feature': feature?.toJson(),
    '@type': constructor,
  };

  static PremiumSourceStoryFeature? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumSourceStoryFeature(
      feature: PremiumStoryFeature.fromJson(tdMapFromJson(json['feature'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
