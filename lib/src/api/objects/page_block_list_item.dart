import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an item of a list page block
@immutable
final class PageBlockListItem extends TdObject {
  PageBlockListItem({required this.label, required this.pageBlocks});

  /// [label] Item label
  final String label;

  /// [pageBlocks] Item blocks
  final List<PageBlock> pageBlocks;

  static const String constructor = 'pageBlockListItem';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'label': label,
    'page_blocks': pageBlocks.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static PageBlockListItem? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockListItem(
      label: (json['label'] as String?) ?? '',
      pageBlocks: List<PageBlock>.from(
        tdListFromJson(json['page_blocks'])
            .map((item) => PageBlock.fromJson(tdMapFromJson(item)))
            .whereType<PageBlock>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
