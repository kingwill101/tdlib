import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes media previews of a bot
@immutable
final class BotMediaPreview extends TdObject {
  BotMediaPreview({required this.date, this.content});

  /// [date] Point in time (Unix timestamp) when the preview was added or
  /// changed last time
  final int date;

  /// [content] Content of the preview; may only be of the types
  /// storyContentPhoto, storyContentVideo, or storyContentUnsupported
  final StoryContent? content;

  static const String constructor = 'botMediaPreview';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'date': date,
    'content': content?.toJson(),
    '@type': constructor,
  };

  static BotMediaPreview? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotMediaPreview(
      date: (json['date'] as int?) ?? 0,
      content: StoryContent.fromJson(tdMapFromJson(json['content'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
