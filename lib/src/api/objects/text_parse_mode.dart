import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the way the text needs to be parsed for text entities
@immutable
sealed class TextParseMode extends TdObject {
  const TextParseMode();

  static const String constructor = 'textParseMode';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [TextParseModeHTML]
  /// [TextParseModeMarkdown]
  static TextParseMode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case TextParseModeHTML.constructor:
        return TextParseModeHTML.fromJson(json);

      case TextParseModeMarkdown.constructor:
        return TextParseModeMarkdown.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The text uses HTML-style formatting. The same as Telegram Bot API "HTML"
/// parse mode
@immutable
final class TextParseModeHTML extends TextParseMode {
  const TextParseModeHTML();

  static const String constructor = 'textParseModeHTML';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TextParseModeHTML? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextParseModeHTML();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The text uses Markdown-style formatting
@immutable
final class TextParseModeMarkdown extends TextParseMode {
  TextParseModeMarkdown({required this.version});

  /// [version] Version of the parser: 0 or 1 - Telegram Bot API "Markdown"
  /// parse mode, 2 - Telegram Bot API "MarkdownV2" parse mode
  final int version;

  static const String constructor = 'textParseModeMarkdown';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'version': version,
    '@type': constructor,
  };

  static TextParseModeMarkdown? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextParseModeMarkdown(version: (json['version'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
