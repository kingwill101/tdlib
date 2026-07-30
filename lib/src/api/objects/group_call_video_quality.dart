import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the quality of a group call video
@immutable
sealed class GroupCallVideoQuality extends TdObject {
  const GroupCallVideoQuality();

  static const String constructor = 'groupCallVideoQuality';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [GroupCallVideoQualityFull]
  /// [GroupCallVideoQualityMedium]
  /// [GroupCallVideoQualityThumbnail]
  static GroupCallVideoQuality? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case GroupCallVideoQualityFull.constructor:
        return GroupCallVideoQualityFull.fromJson(json);

      case GroupCallVideoQualityMedium.constructor:
        return GroupCallVideoQualityMedium.fromJson(json);

      case GroupCallVideoQualityThumbnail.constructor:
        return GroupCallVideoQualityThumbnail.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The best available video quality
@immutable
final class GroupCallVideoQualityFull extends GroupCallVideoQuality {
  const GroupCallVideoQualityFull();

  static const String constructor = 'groupCallVideoQualityFull';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static GroupCallVideoQualityFull? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GroupCallVideoQualityFull();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The medium video quality
@immutable
final class GroupCallVideoQualityMedium extends GroupCallVideoQuality {
  const GroupCallVideoQualityMedium();

  static const String constructor = 'groupCallVideoQualityMedium';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static GroupCallVideoQualityMedium? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GroupCallVideoQualityMedium();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The worst available video quality
@immutable
final class GroupCallVideoQualityThumbnail extends GroupCallVideoQuality {
  const GroupCallVideoQualityThumbnail();

  static const String constructor = 'groupCallVideoQualityThumbnail';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static GroupCallVideoQualityThumbnail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GroupCallVideoQualityThumbnail();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
