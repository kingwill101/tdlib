import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Options to be used when a Web App is opened
@immutable
final class WebAppOpenParameters extends TdObject {
  WebAppOpenParameters({this.theme, required this.applicationName, this.mode});

  /// [theme] Preferred Web App theme; pass null to use the default theme
  final ThemeParameters? theme;

  /// [applicationName] Short name of the current application; 0-64 English
  /// letters, digits, and underscores
  final String applicationName;

  /// [mode] The mode in which the Web App is opened; pass null to open in
  /// webAppOpenModeFullSize
  final WebAppOpenMode? mode;

  static const String constructor = 'webAppOpenParameters';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'theme': theme?.toJson(),
    'application_name': applicationName,
    'mode': mode?.toJson(),
    '@type': constructor,
  };

  static WebAppOpenParameters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return WebAppOpenParameters(
      theme: ThemeParameters.fromJson(tdMapFromJson(json['theme'])),
      applicationName: (json['application_name'] as String?) ?? '',
      mode: WebAppOpenMode.fromJson(tdMapFromJson(json['mode'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
