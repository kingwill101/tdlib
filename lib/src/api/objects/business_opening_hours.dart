import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes opening hours of a business
@immutable
final class BusinessOpeningHours extends TdObject {
  BusinessOpeningHours({required this.timeZoneId, required this.openingHours});

  /// [timeZoneId] Unique time zone identifier
  final String timeZoneId;

  /// [openingHours] Intervals of the time when the business is open
  final List<BusinessOpeningHoursInterval> openingHours;

  static const String constructor = 'businessOpeningHours';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'time_zone_id': timeZoneId,
    'opening_hours': openingHours.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static BusinessOpeningHours? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessOpeningHours(
      timeZoneId: (json['time_zone_id'] as String?) ?? '',
      openingHours: List<BusinessOpeningHoursInterval>.from(
        tdListFromJson(json['opening_hours'])
            .map(
              (item) =>
                  BusinessOpeningHoursInterval.fromJson(tdMapFromJson(item)),
            )
            .whereType<BusinessOpeningHoursInterval>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
