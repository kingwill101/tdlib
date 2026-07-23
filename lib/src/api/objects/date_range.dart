import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a date range
@immutable
final class DateRange extends TdObject {
  DateRange({required this.startDate, required this.endDate});

  /// [startDate] Point in time (Unix timestamp) at which the date range begins
  final int startDate;

  /// [endDate] Point in time (Unix timestamp) at which the date range ends
  final int endDate;

  static const String constructor = 'dateRange';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'start_date': startDate,
    'end_date': endDate,
    '@type': constructor,
  };

  static DateRange? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DateRange(
      startDate: (json['start_date'] as int?) ?? 0,
      endDate: (json['end_date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
