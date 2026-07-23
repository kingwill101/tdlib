import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes style of a button
@immutable
sealed class ButtonStyle extends TdObject {
  const ButtonStyle();

  static const String constructor = 'buttonStyle';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ButtonStyleDanger]
  /// [ButtonStyleDefault]
  /// [ButtonStylePrimary]
  /// [ButtonStyleSuccess]
  static ButtonStyle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ButtonStyleDanger.constructor:
        return ButtonStyleDanger.fromJson(json);

      case ButtonStyleDefault.constructor:
        return ButtonStyleDefault.fromJson(json);

      case ButtonStylePrimary.constructor:
        return ButtonStylePrimary.fromJson(json);

      case ButtonStyleSuccess.constructor:
        return ButtonStyleSuccess.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The button has red color
@immutable
final class ButtonStyleDanger extends ButtonStyle {
  const ButtonStyleDanger();

  static const String constructor = 'buttonStyleDanger';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ButtonStyleDanger? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ButtonStyleDanger();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The button has default style
@immutable
final class ButtonStyleDefault extends ButtonStyle {
  const ButtonStyleDefault();

  static const String constructor = 'buttonStyleDefault';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ButtonStyleDefault? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ButtonStyleDefault();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The button has dark blue color
@immutable
final class ButtonStylePrimary extends ButtonStyle {
  const ButtonStylePrimary();

  static const String constructor = 'buttonStylePrimary';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ButtonStylePrimary? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ButtonStylePrimary();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The button has green color
@immutable
final class ButtonStyleSuccess extends ButtonStyle {
  const ButtonStyleSuccess();

  static const String constructor = 'buttonStyleSuccess';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ButtonStyleSuccess? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ButtonStyleSuccess();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
