import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of t.me URLs
@immutable
final class TMeUrls extends TdObject {
  TMeUrls({required this.urls});

  /// [urls] List of URLs
  final List<TMeUrl> urls;

  static const String constructor = 'tMeUrls';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'urls': urls.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static TMeUrls? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TMeUrls(
      urls: List<TMeUrl>.from(
        tdListFromJson(json['urls'])
            .map((item) => TMeUrl.fromJson(tdMapFromJson(item)))
            .whereType<TMeUrl>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
