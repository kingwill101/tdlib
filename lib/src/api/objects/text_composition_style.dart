import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a style that can be used to compose a text
@immutable
final class TextCompositionStyle extends TdObject {
  TextCompositionStyle({
    required this.name,
    required this.customEmojiId,
    required this.title,
    required this.isCustom,
    required this.isCreator,
    required this.installCount,
    required this.prompt,
    required this.creatorUserId,
    this.englishExample,
  });

  /// [name] Name of the style
  final String name;

  /// [customEmojiId] Identifier of the custom emoji corresponding to the style;
  /// 0 if none
  final int customEmojiId;

  /// [title] Title of the style in the user application's language
  final String title;

  /// [isCustom] True, if the style is created by a user
  final bool isCustom;

  /// [isCreator] True, if the user is creator of the style
  final bool isCreator;

  /// [installCount] Number of users that installed the style; for created
  /// custom styles only; 0 if unknown
  final int installCount;

  /// [prompt] Prompt of the style; for created custom styles only
  final String prompt;

  /// [creatorUserId] User identifier of the creator of the style; 0 if none or
  /// unknown
  final int creatorUserId;

  /// [englishExample] Example of the style usage in English; may be null if
  /// unknown
  final TextCompositionStyleExample? englishExample;

  static const String constructor = 'textCompositionStyle';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'name': name,
    'custom_emoji_id': customEmojiId.toString(),
    'title': title,
    'is_custom': isCustom,
    'is_creator': isCreator,
    'install_count': installCount,
    'prompt': prompt,
    'creator_user_id': creatorUserId,
    'english_example': englishExample?.toJson(),
    '@type': constructor,
  };

  static TextCompositionStyle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextCompositionStyle(
      name: (json['name'] as String?) ?? '',
      customEmojiId:
          int.tryParse(
            (json['custom_emoji_id'] as dynamic)?.toString() ?? '',
          ) ??
          0,
      title: (json['title'] as String?) ?? '',
      isCustom: (json['is_custom'] as bool?) ?? false,
      isCreator: (json['is_creator'] as bool?) ?? false,
      installCount: (json['install_count'] as int?) ?? 0,
      prompt: (json['prompt'] as String?) ?? '',
      creatorUserId: (json['creator_user_id'] as int?) ?? 0,
      englishExample: TextCompositionStyleExample.fromJson(
        tdMapFromJson(json['english_example']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
