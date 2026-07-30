import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes result of sponsored message or chat report
@immutable
sealed class ReportSponsoredResult extends TdObject {
  const ReportSponsoredResult();

  static const String constructor = 'reportSponsoredResult';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ReportSponsoredResultAdsHidden]
  /// [ReportSponsoredResultFailed]
  /// [ReportSponsoredResultOk]
  /// [ReportSponsoredResultOptionRequired]
  /// [ReportSponsoredResultPremiumRequired]
  static ReportSponsoredResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ReportSponsoredResultAdsHidden.constructor:
        return ReportSponsoredResultAdsHidden.fromJson(json);

      case ReportSponsoredResultFailed.constructor:
        return ReportSponsoredResultFailed.fromJson(json);

      case ReportSponsoredResultOk.constructor:
        return ReportSponsoredResultOk.fromJson(json);

      case ReportSponsoredResultOptionRequired.constructor:
        return ReportSponsoredResultOptionRequired.fromJson(json);

      case ReportSponsoredResultPremiumRequired.constructor:
        return ReportSponsoredResultPremiumRequired.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Sponsored messages were hidden for the user in all chats
@immutable
final class ReportSponsoredResultAdsHidden extends ReportSponsoredResult {
  const ReportSponsoredResultAdsHidden();

  static const String constructor = 'reportSponsoredResultAdsHidden';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ReportSponsoredResultAdsHidden? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReportSponsoredResultAdsHidden();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The sponsored message is too old or not found
@immutable
final class ReportSponsoredResultFailed extends ReportSponsoredResult {
  const ReportSponsoredResultFailed();

  static const String constructor = 'reportSponsoredResultFailed';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ReportSponsoredResultFailed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReportSponsoredResultFailed();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message was reported successfully
@immutable
final class ReportSponsoredResultOk extends ReportSponsoredResult {
  const ReportSponsoredResultOk();

  static const String constructor = 'reportSponsoredResultOk';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ReportSponsoredResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReportSponsoredResultOk();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user must choose an option to report the message and repeat request
/// with the chosen option
@immutable
final class ReportSponsoredResultOptionRequired extends ReportSponsoredResult {
  ReportSponsoredResultOptionRequired({
    required this.title,
    required this.options,
  });

  /// [title] Title for the option choice
  final String title;

  /// [options] List of available options
  final List<ReportOption> options;

  static const String constructor = 'reportSponsoredResultOptionRequired';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'title': title,
    'options': options.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static ReportSponsoredResultOptionRequired? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return ReportSponsoredResultOptionRequired(
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

/// The user asked to hide sponsored messages, but Telegram Premium is
/// required for this
@immutable
final class ReportSponsoredResultPremiumRequired extends ReportSponsoredResult {
  const ReportSponsoredResultPremiumRequired();

  static const String constructor = 'reportSponsoredResultPremiumRequired';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ReportSponsoredResultPremiumRequired? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const ReportSponsoredResultPremiumRequired();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
