import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the type of web browser
@immutable
sealed class WebBrowserType extends TdObject {
  const WebBrowserType();

  static const String constructor = 'webBrowserType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [WebBrowserTypeExternal]
  /// [WebBrowserTypeInApp]
  static WebBrowserType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case WebBrowserTypeExternal.constructor:
        return WebBrowserTypeExternal.fromJson(json);

      case WebBrowserTypeInApp.constructor:
        return WebBrowserTypeInApp.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An external web browser
@immutable
final class WebBrowserTypeExternal extends WebBrowserType {
  const WebBrowserTypeExternal();

  static const String constructor = 'webBrowserTypeExternal';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static WebBrowserTypeExternal? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const WebBrowserTypeExternal();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The in-app browser
@immutable
final class WebBrowserTypeInApp extends WebBrowserType {
  const WebBrowserTypeInApp();

  static const String constructor = 'webBrowserTypeInApp';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static WebBrowserTypeInApp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const WebBrowserTypeInApp();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
