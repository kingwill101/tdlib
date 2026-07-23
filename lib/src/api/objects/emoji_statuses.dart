import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of emoji statuses
@immutable
final class EmojiStatuses extends TdObject {
  EmojiStatuses({required this.emojiStatuses});

  /// [emojiStatuses] The list of emoji statuses identifiers
  final List<EmojiStatus> emojiStatuses;

  static const String constructor = 'emojiStatuses';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'emoji_statuses': emojiStatuses.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static EmojiStatuses? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiStatuses(
      emojiStatuses: List<EmojiStatus>.from(
        tdListFromJson(json['emoji_statuses'])
            .map((item) => EmojiStatus.fromJson(tdMapFromJson(item)))
            .whereType<EmojiStatus>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
