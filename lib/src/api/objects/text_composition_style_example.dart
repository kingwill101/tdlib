import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains an example of text composition style usage
@immutable
final class TextCompositionStyleExample extends TdObject {
  TextCompositionStyleExample({this.sourceText, this.resultText});

  /// [sourceText] Source text
  final FormattedText? sourceText;

  /// [resultText] The text after the style was applied to the source text
  final FormattedText? resultText;

  static const String constructor = 'textCompositionStyleExample';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'source_text': sourceText?.toJson(),
    'result_text': resultText?.toJson(),
    '@type': constructor,
  };

  static TextCompositionStyleExample? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextCompositionStyleExample(
      sourceText: FormattedText.fromJson(tdMapFromJson(json['source_text'])),
      resultText: FormattedText.fromJson(tdMapFromJson(json['result_text'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
