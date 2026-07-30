import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents the results of the inline query. Use
/// sendInlineQueryResultMessage to send the result of the query
@immutable
final class InlineQueryResults extends TdObject {
  InlineQueryResults({
    required this.inlineQueryId,
    this.button,
    required this.results,
    required this.nextOffset,
  });

  /// [inlineQueryId] Unique identifier of the inline query
  final int inlineQueryId;

  /// [button] Button to be shown above inline query results; may be null
  final InlineQueryResultsButton? button;

  /// [results] Results of the query
  final List<InlineQueryResult> results;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'inlineQueryResults';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'inline_query_id': inlineQueryId.toString(),
    'button': button?.toJson(),
    'results': results.map((item) => item.toJson()).toList(),
    'next_offset': nextOffset,
    '@type': constructor,
  };

  static InlineQueryResults? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResults(
      inlineQueryId:
          int.tryParse(
            (json['inline_query_id'] as dynamic)?.toString() ?? '',
          ) ??
          0,
      button: InlineQueryResultsButton.fromJson(tdMapFromJson(json['button'])),
      results: List<InlineQueryResult>.from(
        tdListFromJson(json['results'])
            .map((item) => InlineQueryResult.fromJson(tdMapFromJson(item)))
            .whereType<InlineQueryResult>(),
      ),
      nextOffset: (json['next_offset'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
