import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a URL linking to an internal Telegram entity
@immutable
final class TMeUrl extends TdObject {
  TMeUrl({required this.url, this.type});

  /// [url] URL
  final String url;

  /// [type] Type of the URL
  final TMeUrlType? type;

  static const String constructor = 'tMeUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    'type': type?.toJson(),
    '@type': constructor,
  };

  static TMeUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TMeUrl(
      url: (json['url'] as String?) ?? '',
      type: TMeUrlType.fromJson(tdMapFromJson(json['type'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
