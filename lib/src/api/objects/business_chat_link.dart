import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a business chat link
@immutable
final class BusinessChatLink extends TdObject {
  BusinessChatLink({
    required this.link,
    this.text,
    required this.title,
    required this.viewCount,
  });

  /// [link] The HTTPS link
  final String link;

  /// [text] Message draft text that will be added to the input field
  final FormattedText? text;

  /// [title] Link title
  final String title;

  /// [viewCount] Number of times the link was used
  final int viewCount;

  static const String constructor = 'businessChatLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'link': link,
    'text': text?.toJson(),
    'title': title,
    'view_count': viewCount,
    '@type': constructor,
  };

  static BusinessChatLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessChatLink(
      link: (json['link'] as String?) ?? '',
      text: FormattedText.fromJson(tdMapFromJson(json['text'])),
      title: (json['title'] as String?) ?? '',
      viewCount: (json['view_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
