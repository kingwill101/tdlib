import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A detailed statistics about Toncoins earned by the current user
@immutable
final class TonRevenueStatistics extends TdObject {
  TonRevenueStatistics({
    this.revenueByDayGraph,
    this.status,
    required this.usdRate,
  });

  /// [revenueByDayGraph] A graph containing amount of revenue in a given day
  final StatisticalGraph? revenueByDayGraph;

  /// [status] Amount of earned revenue
  final TonRevenueStatus? status;

  /// [usdRate] Current conversion rate of nanotoncoin to USD cents
  final double usdRate;

  static const String constructor = 'tonRevenueStatistics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'revenue_by_day_graph': revenueByDayGraph?.toJson(),
    'status': status?.toJson(),
    'usd_rate': usdRate,
    '@type': constructor,
  };

  static TonRevenueStatistics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TonRevenueStatistics(
      revenueByDayGraph: StatisticalGraph.fromJson(
        tdMapFromJson(json['revenue_by_day_graph']),
      ),
      status: TonRevenueStatus.fromJson(tdMapFromJson(json['status'])),
      usdRate: ((json['usd_rate'] as num?) ?? 0.0).toDouble(),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
