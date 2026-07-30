import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches for a given quote in a text. Returns found quote start position
/// in UTF-16 code units. Returns a 404 error if the quote is not found. Can
/// be called synchronously
/// Returns [FoundPosition]
@immutable
final class SearchQuote extends TdFunction {
  SearchQuote({this.text, this.quote, required this.quotePosition});

  /// [text] Text in which to search for the quote
  final FormattedText? text;

  /// [quote] Quote to search for
  final FormattedText? quote;

  /// [quotePosition] Approximate quote position in UTF-16 code units
  final int quotePosition;

  static const String constructor = 'searchQuote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'quote': quote?.toJson(),
    'quote_position': quotePosition,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
