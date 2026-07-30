import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a message with rich formatting
@immutable
final class RichMessage extends TdObject {
  RichMessage({
    required this.blocks,
    required this.isRtl,
    required this.isFull,
  });

  /// [blocks] Content of the message
  final List<PageBlock> blocks;

  /// [isRtl] True, if the message must be shown from right to left
  final bool isRtl;

  /// [isFull] True, if the object contains the full message. Otherwise,
  /// getFullRichMessage must be used to get the full message
  final bool isFull;

  static const String constructor = 'richMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'blocks': blocks.map((item) => item.toJson()).toList(),
    'is_rtl': isRtl,
    'is_full': isFull,
    '@type': constructor,
  };

  static RichMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichMessage(
      blocks: List<PageBlock>.from(
        tdListFromJson(json['blocks'])
            .map((item) => PageBlock.fromJson(tdMapFromJson(item)))
            .whereType<PageBlock>(),
      ),
      isRtl: (json['is_rtl'] as bool?) ?? false,
      isFull: (json['is_full'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
