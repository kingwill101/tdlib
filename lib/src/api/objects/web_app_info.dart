import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a Web App
@immutable
final class WebAppInfo extends TdObject {
  WebAppInfo({required this.launchId, this.url});

  /// [launchId] Unique identifier for the Web App launch
  final int launchId;

  /// [url] The Web App URL to open in a web view
  final WebAppUrl? url;

  static const String constructor = 'webAppInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'launch_id': launchId.toString(),
    'url': url?.toJson(),
    '@type': constructor,
  };

  static WebAppInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return WebAppInfo(
      launchId:
          int.tryParse((json['launch_id'] as dynamic)?.toString() ?? '') ?? 0,
      url: WebAppUrl.fromJson(tdMapFromJson(json['url'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
