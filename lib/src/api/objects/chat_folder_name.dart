import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes name of a chat folder
@immutable
final class ChatFolderName extends TdObject {
  ChatFolderName({this.text, required this.animateCustomEmoji});

  /// [text] The text of the chat folder name; 1-12 characters without line
  /// feeds. May contain only CustomEmoji entities
  final FormattedText? text;

  /// [animateCustomEmoji] True, if custom emoji in the name must be animated
  final bool animateCustomEmoji;

  static const String constructor = 'chatFolderName';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'animate_custom_emoji': animateCustomEmoji,
    '@type': constructor,
  };

  static ChatFolderName? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatFolderName(
      text: FormattedText.fromJson(tdMapFromJson(json['text'])),
      animateCustomEmoji: (json['animate_custom_emoji'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
