import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes source of a rich message
@immutable
sealed class RichMessageSource extends TdObject {
  const RichMessageSource();

  static const String constructor = 'richMessageSource';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [RichMessageSourceBlocks]
  /// [RichMessageSourceHtml]
  /// [RichMessageSourceMarkdown]
  static RichMessageSource? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case RichMessageSourceBlocks.constructor:
        return RichMessageSourceBlocks.fromJson(json);

      case RichMessageSourceHtml.constructor:
        return RichMessageSourceHtml.fromJson(json);

      case RichMessageSourceMarkdown.constructor:
        return RichMessageSourceMarkdown.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A rich message defined by blocks
@immutable
final class RichMessageSourceBlocks extends RichMessageSource {
  RichMessageSourceBlocks({required this.blocks});

  /// [blocks] Content of the message
  final List<InputPageBlock> blocks;

  static const String constructor = 'richMessageSourceBlocks';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'blocks': blocks.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static RichMessageSourceBlocks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichMessageSourceBlocks(
      blocks: List<InputPageBlock>.from(
        tdListFromJson(json['blocks'])
            .map((item) => InputPageBlock.fromJson(tdMapFromJson(item)))
            .whereType<InputPageBlock>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An HTML-formatted rich message; for bots only
@immutable
final class RichMessageSourceHtml extends RichMessageSource {
  RichMessageSourceHtml({required this.text, required this.media});

  /// [text] HTML-formatted text of the message
  final String text;

  /// [media] Media used in the message
  final List<InputRichMessageMedia> media;

  static const String constructor = 'richMessageSourceHtml';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text,
    'media': media.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static RichMessageSourceHtml? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichMessageSourceHtml(
      text: (json['text'] as String?) ?? '',
      media: List<InputRichMessageMedia>.from(
        tdListFromJson(json['media'])
            .map((item) => InputRichMessageMedia.fromJson(tdMapFromJson(item)))
            .whereType<InputRichMessageMedia>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Markdown-formatted rich message; for bots only
@immutable
final class RichMessageSourceMarkdown extends RichMessageSource {
  RichMessageSourceMarkdown({required this.text, required this.media});

  /// [text] Markdown-formatted text of the message
  final String text;

  /// [media] Media used in the message
  final List<InputRichMessageMedia> media;

  static const String constructor = 'richMessageSourceMarkdown';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text,
    'media': media.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static RichMessageSourceMarkdown? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichMessageSourceMarkdown(
      text: (json['text'] as String?) ?? '',
      media: List<InputRichMessageMedia>.from(
        tdListFromJson(json['media'])
            .map((item) => InputRichMessageMedia.fromJson(tdMapFromJson(item)))
            .whereType<InputRichMessageMedia>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
