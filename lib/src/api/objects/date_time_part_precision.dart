import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes precision with which to show a date or a time
@immutable
sealed class DateTimePartPrecision extends TdObject {
  const DateTimePartPrecision();

  static const String constructor = 'dateTimePartPrecision';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [DateTimePartPrecisionLong]
  /// [DateTimePartPrecisionNone]
  /// [DateTimePartPrecisionShort]
  static DateTimePartPrecision? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case DateTimePartPrecisionLong.constructor:
        return DateTimePartPrecisionLong.fromJson(json);

      case DateTimePartPrecisionNone.constructor:
        return DateTimePartPrecisionNone.fromJson(json);

      case DateTimePartPrecisionShort.constructor:
        return DateTimePartPrecisionShort.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Show the date or time in a long way (March 17, 2022 or 22:45:00)
@immutable
final class DateTimePartPrecisionLong extends DateTimePartPrecision {
  const DateTimePartPrecisionLong();

  static const String constructor = 'dateTimePartPrecisionLong';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static DateTimePartPrecisionLong? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const DateTimePartPrecisionLong();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Don't show the date or time
@immutable
final class DateTimePartPrecisionNone extends DateTimePartPrecision {
  const DateTimePartPrecisionNone();

  static const String constructor = 'dateTimePartPrecisionNone';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static DateTimePartPrecisionNone? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const DateTimePartPrecisionNone();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Show the date or time in a short way (17.03.22 or 22:45)
@immutable
final class DateTimePartPrecisionShort extends DateTimePartPrecision {
  const DateTimePartPrecisionShort();

  static const String constructor = 'dateTimePartPrecisionShort';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static DateTimePartPrecisionShort? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const DateTimePartPrecisionShort();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
