import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A detailed statistics about TON Grams earned by the current user
@immutable
final class GramRevenueStatistics extends TdObject {
  GramRevenueStatistics({
    this.revenueByDayGraph,
    this.status,
    required this.usdRate,
  });

  /// [revenueByDayGraph] A graph containing amount of revenue in a given day
  final StatisticalGraph? revenueByDayGraph;

  /// [status] Amount of earned revenue
  final GramRevenueStatus? status;

  /// [usdRate] Current conversion rate of nanogram to USD cents
  final double usdRate;

  static const String constructor = 'gramRevenueStatistics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'revenue_by_day_graph': revenueByDayGraph?.toJson(),
    'status': status?.toJson(),
    'usd_rate': usdRate,
    '@type': constructor,
  };

  static GramRevenueStatistics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GramRevenueStatistics(
      revenueByDayGraph: StatisticalGraph.fromJson(
        tdMapFromJson(json['revenue_by_day_graph']),
      ),
      status: GramRevenueStatus.fromJson(tdMapFromJson(json['status'])),
      usdRate: ((json['usd_rate'] as num?) ?? 0.0).toDouble(),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
