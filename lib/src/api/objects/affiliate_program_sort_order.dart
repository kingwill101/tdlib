import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the order of the found affiliate programs
@immutable
sealed class AffiliateProgramSortOrder extends TdObject {
  const AffiliateProgramSortOrder();

  static const String constructor = 'affiliateProgramSortOrder';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [AffiliateProgramSortOrderCreationDate]
  /// [AffiliateProgramSortOrderProfitability]
  /// [AffiliateProgramSortOrderRevenue]
  static AffiliateProgramSortOrder? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case AffiliateProgramSortOrderCreationDate.constructor:
        return AffiliateProgramSortOrderCreationDate.fromJson(json);

      case AffiliateProgramSortOrderProfitability.constructor:
        return AffiliateProgramSortOrderProfitability.fromJson(json);

      case AffiliateProgramSortOrderRevenue.constructor:
        return AffiliateProgramSortOrderRevenue.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The affiliate programs must be sorted by creation date
@immutable
final class AffiliateProgramSortOrderCreationDate
    extends AffiliateProgramSortOrder {
  const AffiliateProgramSortOrderCreationDate();

  static const String constructor = 'affiliateProgramSortOrderCreationDate';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static AffiliateProgramSortOrderCreationDate? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const AffiliateProgramSortOrderCreationDate();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The affiliate programs must be sorted by the profitability
@immutable
final class AffiliateProgramSortOrderProfitability
    extends AffiliateProgramSortOrder {
  const AffiliateProgramSortOrderProfitability();

  static const String constructor = 'affiliateProgramSortOrderProfitability';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static AffiliateProgramSortOrderProfitability? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const AffiliateProgramSortOrderProfitability();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The affiliate programs must be sorted by the expected revenue
@immutable
final class AffiliateProgramSortOrderRevenue extends AffiliateProgramSortOrder {
  const AffiliateProgramSortOrderRevenue();

  static const String constructor = 'affiliateProgramSortOrderRevenue';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static AffiliateProgramSortOrderRevenue? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const AffiliateProgramSortOrderRevenue();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
