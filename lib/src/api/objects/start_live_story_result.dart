import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents result of starting a live story
@immutable
sealed class StartLiveStoryResult extends TdObject {
  const StartLiveStoryResult();

  static const String constructor = 'startLiveStoryResult';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [StartLiveStoryResultFail]
  /// [StartLiveStoryResultOk]
  static StartLiveStoryResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StartLiveStoryResultFail.constructor:
        return StartLiveStoryResultFail.fromJson(json);

      case StartLiveStoryResultOk.constructor:
        return StartLiveStoryResultOk.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The live story failed to post with an error to be handled
@immutable
final class StartLiveStoryResultFail extends StartLiveStoryResult {
  StartLiveStoryResultFail({this.errorType});

  /// [errorType] Type of the error; other error types may be returned as
  /// regular errors
  final CanPostStoryResult? errorType;

  static const String constructor = 'startLiveStoryResultFail';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'error_type': errorType?.toJson(),
    '@type': constructor,
  };

  static StartLiveStoryResultFail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StartLiveStoryResultFail(
      errorType: CanPostStoryResult.fromJson(tdMapFromJson(json['error_type'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The live story was successfully posted
@immutable
final class StartLiveStoryResultOk extends StartLiveStoryResult {
  StartLiveStoryResultOk({this.story});

  /// [story] The live story
  final Story? story;

  static const String constructor = 'startLiveStoryResultOk';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story': story?.toJson(),
    '@type': constructor,
  };

  static StartLiveStoryResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StartLiveStoryResultOk(
      story: Story.fromJson(tdMapFromJson(json['story'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
