import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an emoji category
@immutable
final class EmojiCategory extends TdObject {
  EmojiCategory({
    required this.name,
    this.icon,
    this.source,
    required this.isGreeting,
  });

  /// [name] Name of the category
  final String name;

  /// [icon] Custom emoji sticker, which represents icon of the category
  final Sticker? icon;

  /// [source] Source of stickers for the emoji category
  final EmojiCategorySource? source;

  /// [isGreeting] True, if the category must be shown first when choosing a
  /// sticker for the start page
  final bool isGreeting;

  static const String constructor = 'emojiCategory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'name': name,
    'icon': icon?.toJson(),
    'source': source?.toJson(),
    'is_greeting': isGreeting,
    '@type': constructor,
  };

  static EmojiCategory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiCategory(
      name: (json['name'] as String?) ?? '',
      icon: Sticker.fromJson(tdMapFromJson(json['icon'])),
      source: EmojiCategorySource.fromJson(tdMapFromJson(json['source'])),
      isGreeting: (json['is_greeting'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
