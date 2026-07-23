import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A text fixed using fixTextWithAi
@immutable
final class FixedText extends TdObject {
  FixedText({this.text, this.diffText});

  /// [text] The resulting text
  final FormattedText? text;

  /// [diffText] Changes made to the original text
  final DiffText? diffText;

  static const String constructor = 'fixedText';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'diff_text': diffText?.toJson(),
    '@type': constructor,
  };

  static FixedText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FixedText(
      text: FormattedText.fromJson(tdMapFromJson(json['text'])),
      diffText: DiffText.fromJson(tdMapFromJson(json['diff_text'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
