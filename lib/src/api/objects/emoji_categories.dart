import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of emoji categories
@immutable
final class EmojiCategories extends TdObject {
  EmojiCategories({required this.categories});

  /// [categories] List of categories
  final List<EmojiCategory> categories;

  static const String constructor = 'emojiCategories';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'categories': categories.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static EmojiCategories? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiCategories(
      categories: List<EmojiCategory>.from(
        tdListFromJson(json['categories'])
            .map((item) => EmojiCategory.fromJson(tdMapFromJson(item)))
            .whereType<EmojiCategory>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
