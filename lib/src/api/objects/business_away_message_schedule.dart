import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes conditions for sending of away messages by a Telegram Business
/// account
@immutable
sealed class BusinessAwayMessageSchedule extends TdObject {
  const BusinessAwayMessageSchedule();

  static const String constructor = 'businessAwayMessageSchedule';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [BusinessAwayMessageScheduleAlways]
  /// [BusinessAwayMessageScheduleCustom]
  /// [BusinessAwayMessageScheduleOutsideOfOpeningHours]
  static BusinessAwayMessageSchedule? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case BusinessAwayMessageScheduleAlways.constructor:
        return BusinessAwayMessageScheduleAlways.fromJson(json);

      case BusinessAwayMessageScheduleCustom.constructor:
        return BusinessAwayMessageScheduleCustom.fromJson(json);

      case BusinessAwayMessageScheduleOutsideOfOpeningHours.constructor:
        return BusinessAwayMessageScheduleOutsideOfOpeningHours.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Send away messages always
@immutable
final class BusinessAwayMessageScheduleAlways
    extends BusinessAwayMessageSchedule {
  const BusinessAwayMessageScheduleAlways();

  static const String constructor = 'businessAwayMessageScheduleAlways';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static BusinessAwayMessageScheduleAlways? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const BusinessAwayMessageScheduleAlways();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Send away messages only in the specified time span
@immutable
final class BusinessAwayMessageScheduleCustom
    extends BusinessAwayMessageSchedule {
  BusinessAwayMessageScheduleCustom({
    required this.startDate,
    required this.endDate,
  });

  /// [startDate] Point in time (Unix timestamp) when the away messages will
  /// start to be sent
  final int startDate;

  /// [endDate] Point in time (Unix timestamp) when the away messages will stop
  /// to be sent
  final int endDate;

  static const String constructor = 'businessAwayMessageScheduleCustom';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'start_date': startDate,
    'end_date': endDate,
    '@type': constructor,
  };

  static BusinessAwayMessageScheduleCustom? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return BusinessAwayMessageScheduleCustom(
      startDate: (json['start_date'] as int?) ?? 0,
      endDate: (json['end_date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Send away messages outside of the business opening hours
@immutable
final class BusinessAwayMessageScheduleOutsideOfOpeningHours
    extends BusinessAwayMessageSchedule {
  const BusinessAwayMessageScheduleOutsideOfOpeningHours();

  static const String constructor =
      'businessAwayMessageScheduleOutsideOfOpeningHours';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static BusinessAwayMessageScheduleOutsideOfOpeningHours? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const BusinessAwayMessageScheduleOutsideOfOpeningHours();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
