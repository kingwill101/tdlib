import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains an HTTP URL
@immutable
final class HttpUrl extends TdObject {
  HttpUrl({required this.url});

  /// [url] The URL
  final String url;

  static const String constructor = 'httpUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    '@type': constructor,
  };

  static HttpUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return HttpUrl(url: (json['url'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
