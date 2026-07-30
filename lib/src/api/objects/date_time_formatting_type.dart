import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes date and time formatting
@immutable
sealed class DateTimeFormattingType extends TdObject {
  const DateTimeFormattingType();

  static const String constructor = 'dateTimeFormattingType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [DateTimeFormattingTypeAbsolute]
  /// [DateTimeFormattingTypeRelative]
  static DateTimeFormattingType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case DateTimeFormattingTypeAbsolute.constructor:
        return DateTimeFormattingTypeAbsolute.fromJson(json);

      case DateTimeFormattingTypeRelative.constructor:
        return DateTimeFormattingTypeRelative.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The date and time must be shown as absolute timestamps
@immutable
final class DateTimeFormattingTypeAbsolute extends DateTimeFormattingType {
  DateTimeFormattingTypeAbsolute({
    this.timePrecision,
    this.datePrecision,
    required this.showDayOfWeek,
  });

  /// [timePrecision] The precision with which hours, minutes and seconds are
  /// shown
  final DateTimePartPrecision? timePrecision;

  /// [datePrecision] The precision with which the date is shown
  final DateTimePartPrecision? datePrecision;

  /// [showDayOfWeek] True, if the day of week must be shown
  final bool showDayOfWeek;

  static const String constructor = 'dateTimeFormattingTypeAbsolute';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'time_precision': timePrecision?.toJson(),
    'date_precision': datePrecision?.toJson(),
    'show_day_of_week': showDayOfWeek,
    '@type': constructor,
  };

  static DateTimeFormattingTypeAbsolute? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DateTimeFormattingTypeAbsolute(
      timePrecision: DateTimePartPrecision.fromJson(
        tdMapFromJson(json['time_precision']),
      ),
      datePrecision: DateTimePartPrecision.fromJson(
        tdMapFromJson(json['date_precision']),
      ),
      showDayOfWeek: (json['show_day_of_week'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The time must be shown relative to the current time ([in ] X seconds,
/// minutes, hours, days, months, years [ago])
@immutable
final class DateTimeFormattingTypeRelative extends DateTimeFormattingType {
  const DateTimeFormattingTypeRelative();

  static const String constructor = 'dateTimeFormattingTypeRelative';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static DateTimeFormattingTypeRelative? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const DateTimeFormattingTypeRelative();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
