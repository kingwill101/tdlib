import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about the main Web App of a bot
@immutable
final class MainWebApp extends TdObject {
  MainWebApp({this.url, this.mode});

  /// [url] URL of the Web App to open
  final WebAppUrl? url;

  /// [mode] The mode in which the Web App must be opened
  final WebAppOpenMode? mode;

  static const String constructor = 'mainWebApp';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url?.toJson(),
    'mode': mode?.toJson(),
    '@type': constructor,
  };

  static MainWebApp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MainWebApp(
      url: WebAppUrl.fromJson(tdMapFromJson(json['url'])),
      mode: WebAppOpenMode.fromJson(tdMapFromJson(json['mode'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
