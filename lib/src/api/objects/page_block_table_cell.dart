import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a cell of a table
@immutable
final class PageBlockTableCell extends TdObject {
  PageBlockTableCell({
    this.text,
    required this.isHeader,
    required this.colspan,
    required this.rowspan,
    this.align,
    this.valign,
  });

  /// [text] Cell text; may be null. If the text is null, then the cell must be
  /// invisible
  final RichText? text;

  /// [isHeader] True, if it is a header cell
  final bool isHeader;

  /// [colspan] The number of columns the cell spans
  final int colspan;

  /// [rowspan] The number of rows the cell spans
  final int rowspan;

  /// [align] Horizontal cell content alignment
  final PageBlockHorizontalAlignment? align;

  /// [valign] Vertical cell content alignment
  final PageBlockVerticalAlignment? valign;

  static const String constructor = 'pageBlockTableCell';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'is_header': isHeader,
    'colspan': colspan,
    'rowspan': rowspan,
    'align': align?.toJson(),
    'valign': valign?.toJson(),
    '@type': constructor,
  };

  static PageBlockTableCell? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockTableCell(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
      isHeader: (json['is_header'] as bool?) ?? false,
      colspan: (json['colspan'] as int?) ?? 0,
      rowspan: (json['rowspan'] as int?) ?? 0,
      align: PageBlockHorizontalAlignment.fromJson(
        tdMapFromJson(json['align']),
      ),
      valign: PageBlockVerticalAlignment.fromJson(
        tdMapFromJson(json['valign']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
