import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes mode in which a Web App is opened
@immutable
sealed class WebAppOpenMode extends TdObject {
  const WebAppOpenMode();

  static const String constructor = 'webAppOpenMode';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [WebAppOpenModeCompact]
  /// [WebAppOpenModeFullScreen]
  /// [WebAppOpenModeFullSize]
  static WebAppOpenMode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case WebAppOpenModeCompact.constructor:
        return WebAppOpenModeCompact.fromJson(json);

      case WebAppOpenModeFullScreen.constructor:
        return WebAppOpenModeFullScreen.fromJson(json);

      case WebAppOpenModeFullSize.constructor:
        return WebAppOpenModeFullSize.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The Web App is opened in the compact mode
@immutable
final class WebAppOpenModeCompact extends WebAppOpenMode {
  const WebAppOpenModeCompact();

  static const String constructor = 'webAppOpenModeCompact';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static WebAppOpenModeCompact? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const WebAppOpenModeCompact();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The Web App is opened in the full-screen mode
@immutable
final class WebAppOpenModeFullScreen extends WebAppOpenMode {
  const WebAppOpenModeFullScreen();

  static const String constructor = 'webAppOpenModeFullScreen';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static WebAppOpenModeFullScreen? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const WebAppOpenModeFullScreen();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The Web App is opened in the full-size mode
@immutable
final class WebAppOpenModeFullSize extends WebAppOpenMode {
  const WebAppOpenModeFullSize();

  static const String constructor = 'webAppOpenModeFullSize';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static WebAppOpenModeFullSize? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const WebAppOpenModeFullSize();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
