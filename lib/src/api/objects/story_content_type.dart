import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains the type of the content of a story
@immutable
sealed class StoryContentType extends TdObject {
  const StoryContentType();

  static const String constructor = 'storyContentType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [StoryContentTypeLive]
  /// [StoryContentTypePhoto]
  /// [StoryContentTypeUnsupported]
  /// [StoryContentTypeVideo]
  static StoryContentType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StoryContentTypeLive.constructor:
        return StoryContentTypeLive.fromJson(json);

      case StoryContentTypePhoto.constructor:
        return StoryContentTypePhoto.fromJson(json);

      case StoryContentTypeUnsupported.constructor:
        return StoryContentTypeUnsupported.fromJson(json);

      case StoryContentTypeVideo.constructor:
        return StoryContentTypeVideo.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A live story
@immutable
final class StoryContentTypeLive extends StoryContentType {
  const StoryContentTypeLive();

  static const String constructor = 'storyContentTypeLive';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static StoryContentTypeLive? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StoryContentTypeLive();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A photo story
@immutable
final class StoryContentTypePhoto extends StoryContentType {
  const StoryContentTypePhoto();

  static const String constructor = 'storyContentTypePhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static StoryContentTypePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StoryContentTypePhoto();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A story of unknown content type
@immutable
final class StoryContentTypeUnsupported extends StoryContentType {
  const StoryContentTypeUnsupported();

  static const String constructor = 'storyContentTypeUnsupported';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static StoryContentTypeUnsupported? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StoryContentTypeUnsupported();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A video story
@immutable
final class StoryContentTypeVideo extends StoryContentType {
  const StoryContentTypeVideo();

  static const String constructor = 'storyContentTypeVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static StoryContentTypeVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StoryContentTypeVideo();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
