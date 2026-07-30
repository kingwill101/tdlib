import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a caption of another block
@immutable
final class PageBlockCaption extends TdObject {
  PageBlockCaption({this.text, this.credit});

  /// [text] Content of the caption
  final RichText? text;

  /// [credit] Block credit (like HTML tag <cite>); may be null if none
  final RichText? credit;

  static const String constructor = 'pageBlockCaption';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'credit': credit?.toJson(),
    '@type': constructor,
  };

  static PageBlockCaption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockCaption(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
      credit: RichText.fromJson(tdMapFromJson(json['credit'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
