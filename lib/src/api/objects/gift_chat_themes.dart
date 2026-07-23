import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of chat themes based on upgraded gifts
@immutable
final class GiftChatThemes extends TdObject {
  GiftChatThemes({required this.themes, required this.nextOffset});

  /// [themes] A list of chat themes
  final List<GiftChatTheme> themes;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'giftChatThemes';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'themes': themes.map((item) => item.toJson()).toList(),
    'next_offset': nextOffset,
    '@type': constructor,
  };

  static GiftChatThemes? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftChatThemes(
      themes: List<GiftChatTheme>.from(
        tdListFromJson(json['themes'])
            .map((item) => GiftChatTheme.fromJson(tdMapFromJson(item)))
            .whereType<GiftChatTheme>(),
      ),
      nextOffset: (json['next_offset'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
