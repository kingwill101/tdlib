import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a built-in theme of an official application
@immutable
sealed class BuiltInTheme extends TdObject {
  const BuiltInTheme();

  static const String constructor = 'builtInTheme';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [BuiltInThemeArctic]
  /// [BuiltInThemeClassic]
  /// [BuiltInThemeDay]
  /// [BuiltInThemeNight]
  /// [BuiltInThemeTinted]
  static BuiltInTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case BuiltInThemeArctic.constructor:
        return BuiltInThemeArctic.fromJson(json);

      case BuiltInThemeClassic.constructor:
        return BuiltInThemeClassic.fromJson(json);

      case BuiltInThemeDay.constructor:
        return BuiltInThemeDay.fromJson(json);

      case BuiltInThemeNight.constructor:
        return BuiltInThemeNight.fromJson(json);

      case BuiltInThemeTinted.constructor:
        return BuiltInThemeTinted.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Arctic light theme
@immutable
final class BuiltInThemeArctic extends BuiltInTheme {
  const BuiltInThemeArctic();

  static const String constructor = 'builtInThemeArctic';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static BuiltInThemeArctic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BuiltInThemeArctic();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Classic light theme
@immutable
final class BuiltInThemeClassic extends BuiltInTheme {
  const BuiltInThemeClassic();

  static const String constructor = 'builtInThemeClassic';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static BuiltInThemeClassic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BuiltInThemeClassic();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Regular light theme
@immutable
final class BuiltInThemeDay extends BuiltInTheme {
  const BuiltInThemeDay();

  static const String constructor = 'builtInThemeDay';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static BuiltInThemeDay? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BuiltInThemeDay();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Regular dark theme
@immutable
final class BuiltInThemeNight extends BuiltInTheme {
  const BuiltInThemeNight();

  static const String constructor = 'builtInThemeNight';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static BuiltInThemeNight? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BuiltInThemeNight();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Tinted dark theme
@immutable
final class BuiltInThemeTinted extends BuiltInTheme {
  const BuiltInThemeTinted();

  static const String constructor = 'builtInThemeTinted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static BuiltInThemeTinted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BuiltInThemeTinted();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
