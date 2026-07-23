import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A detailed statistics about Telegram Stars earned by a user or a chat
@immutable
final class StarRevenueStatistics extends TdObject {
  StarRevenueStatistics({
    this.revenueByDayGraph,
    this.status,
    required this.usdRate,
  });

  /// [revenueByDayGraph] A graph containing amount of revenue in a given day
  final StatisticalGraph? revenueByDayGraph;

  /// [status] Telegram Star revenue status
  final StarRevenueStatus? status;

  /// [usdRate] Current conversion rate of a Telegram Star to USD
  final double usdRate;

  static const String constructor = 'starRevenueStatistics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'revenue_by_day_graph': revenueByDayGraph?.toJson(),
    'status': status?.toJson(),
    'usd_rate': usdRate,
    '@type': constructor,
  };

  static StarRevenueStatistics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarRevenueStatistics(
      revenueByDayGraph: StatisticalGraph.fromJson(
        tdMapFromJson(json['revenue_by_day_graph']),
      ),
      status: StarRevenueStatus.fromJson(tdMapFromJson(json['status'])),
      usdRate: ((json['usd_rate'] as num?) ?? 0.0).toDouble(),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
