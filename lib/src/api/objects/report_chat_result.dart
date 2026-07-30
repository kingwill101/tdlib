import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes result of chat report
@immutable
sealed class ReportChatResult extends TdObject {
  const ReportChatResult();

  static const String constructor = 'reportChatResult';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ReportChatResultMessagesRequired]
  /// [ReportChatResultOk]
  /// [ReportChatResultOptionRequired]
  /// [ReportChatResultTextRequired]
  static ReportChatResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ReportChatResultMessagesRequired.constructor:
        return ReportChatResultMessagesRequired.fromJson(json);

      case ReportChatResultOk.constructor:
        return ReportChatResultOk.fromJson(json);

      case ReportChatResultOptionRequired.constructor:
        return ReportChatResultOptionRequired.fromJson(json);

      case ReportChatResultTextRequired.constructor:
        return ReportChatResultTextRequired.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user must choose messages to report and repeat the reportChat request
/// with the chosen messages
@immutable
final class ReportChatResultMessagesRequired extends ReportChatResult {
  const ReportChatResultMessagesRequired();

  static const String constructor = 'reportChatResultMessagesRequired';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ReportChatResultMessagesRequired? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const ReportChatResultMessagesRequired();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat was reported successfully
@immutable
final class ReportChatResultOk extends ReportChatResult {
  const ReportChatResultOk();

  static const String constructor = 'reportChatResultOk';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ReportChatResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReportChatResultOk();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user must choose an option to report the chat and repeat request with
/// the chosen option
@immutable
final class ReportChatResultOptionRequired extends ReportChatResult {
  ReportChatResultOptionRequired({required this.title, required this.options});

  /// [title] Title for the option choice
  final String title;

  /// [options] List of available options
  final List<ReportOption> options;

  static const String constructor = 'reportChatResultOptionRequired';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'title': title,
    'options': options.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static ReportChatResultOptionRequired? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportChatResultOptionRequired(
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
final class ReportChatResultTextRequired extends ReportChatResult {
  ReportChatResultTextRequired({required this.optionId, this.isOptional});

  /// [optionId] Option identifier for the next reportChat request
  final String optionId;

  /// [isOptional] True, if the user can skip text adding
  final bool? isOptional;

  static const String constructor = 'reportChatResultTextRequired';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'option_id': optionId,
    'is_optional': isOptional,
    '@type': constructor,
  };

  static ReportChatResultTextRequired? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportChatResultTextRequired(
      optionId: (json['option_id'] as String?) ?? '',
      isOptional: (json['is_optional'] as bool?),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
