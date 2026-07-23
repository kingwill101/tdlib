import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes result of story report
@immutable
sealed class ReportStoryResult extends TdObject {
  const ReportStoryResult();

  static const String constructor = 'reportStoryResult';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ReportStoryResultOk]
  /// [ReportStoryResultOptionRequired]
  /// [ReportStoryResultTextRequired]
  static ReportStoryResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ReportStoryResultOk.constructor:
        return ReportStoryResultOk.fromJson(json);

      case ReportStoryResultOptionRequired.constructor:
        return ReportStoryResultOptionRequired.fromJson(json);

      case ReportStoryResultTextRequired.constructor:
        return ReportStoryResultTextRequired.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The story was reported successfully
@immutable
final class ReportStoryResultOk extends ReportStoryResult {
  const ReportStoryResultOk();

  static const String constructor = 'reportStoryResultOk';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ReportStoryResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReportStoryResultOk();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user must choose an option to report the story and repeat request with
/// the chosen option
@immutable
final class ReportStoryResultOptionRequired extends ReportStoryResult {
  ReportStoryResultOptionRequired({required this.title, required this.options});

  /// [title] Title for the option choice
  final String title;

  /// [options] List of available options
  final List<ReportOption> options;

  static const String constructor = 'reportStoryResultOptionRequired';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'title': title,
    'options': options.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static ReportStoryResultOptionRequired? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportStoryResultOptionRequired(
      title: (json['title'] as String?) ?? '',
      options: List<ReportOption>.from(
        tdListFromJson(json['options'])
            .map((item) => ReportOption.fromJson(tdMapFromJson(item)))
            .whereType<ReportOption>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user must add additional text details to the report
@immutable
final class ReportStoryResultTextRequired extends ReportStoryResult {
  ReportStoryResultTextRequired({required this.optionId, this.isOptional});

  /// [optionId] Option identifier for the next reportStory request
  final String optionId;

  /// [isOptional] True, if the user can skip text adding
  final bool? isOptional;

  static const String constructor = 'reportStoryResultTextRequired';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'option_id': optionId,
    'is_optional': isOptional,
    '@type': constructor,
  };

  static ReportStoryResultTextRequired? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportStoryResultTextRequired(
      optionId: (json['option_id'] as String?) ?? '',
      isOptional: (json['is_optional'] as bool?),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
