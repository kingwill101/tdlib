import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a business chat link to create or edit
@immutable
final class InputBusinessChatLink extends TdObject {
  InputBusinessChatLink({this.text, required this.title});

  /// [text] Message draft text that will be added to the input field
  final FormattedText? text;

  /// [title] Link title
  final String title;

  static const String constructor = 'inputBusinessChatLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'title': title,
    '@type': constructor,
  };

  static InputBusinessChatLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputBusinessChatLink(
      text: FormattedText.fromJson(tdMapFromJson(json['text'])),
      title: (json['title'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
