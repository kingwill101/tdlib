import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a statistical graph
@immutable
sealed class StatisticalGraph extends TdObject {
  const StatisticalGraph();

  static const String constructor = 'statisticalGraph';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [StatisticalGraphAsync]
  /// [StatisticalGraphData]
  /// [StatisticalGraphError]
  static StatisticalGraph? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StatisticalGraphAsync.constructor:
        return StatisticalGraphAsync.fromJson(json);

      case StatisticalGraphData.constructor:
        return StatisticalGraphData.fromJson(json);

      case StatisticalGraphError.constructor:
        return StatisticalGraphError.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The graph data to be asynchronously loaded through getStatisticalGraph
@immutable
final class StatisticalGraphAsync extends StatisticalGraph {
  StatisticalGraphAsync({required this.token});

  /// [token] The token to use for data loading
  final String token;

  static const String constructor = 'statisticalGraphAsync';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'token': token,
    '@type': constructor,
  };

  static StatisticalGraphAsync? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StatisticalGraphAsync(token: (json['token'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A graph data
@immutable
final class StatisticalGraphData extends StatisticalGraph {
  StatisticalGraphData({required this.jsonData, required this.zoomToken});

  /// [jsonData] Graph data in JSON format
  final String jsonData;

  /// [zoomToken] If non-empty, a token which can be used to receive a zoomed in
  /// graph
  final String zoomToken;

  static const String constructor = 'statisticalGraphData';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'json_data': jsonData,
    'zoom_token': zoomToken,
    '@type': constructor,
  };

  static StatisticalGraphData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StatisticalGraphData(
      jsonData: (json['json_data'] as String?) ?? '',
      zoomToken: (json['zoom_token'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An error message to be shown to the user instead of the graph
@immutable
final class StatisticalGraphError extends StatisticalGraph {
  StatisticalGraphError({required this.errorMessage});

  /// [errorMessage] The error message
  final String errorMessage;

  static const String constructor = 'statisticalGraphError';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'error_message': errorMessage,
    '@type': constructor,
  };

  static StatisticalGraphError? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StatisticalGraphError(
      errorMessage: (json['error_message'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
