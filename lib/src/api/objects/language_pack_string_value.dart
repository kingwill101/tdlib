import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents the value of a string in a language pack
@immutable
sealed class LanguagePackStringValue extends TdObject {
  const LanguagePackStringValue();

  static const String constructor = 'languagePackStringValue';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [LanguagePackStringValueDeleted]
  /// [LanguagePackStringValueOrdinary]
  /// [LanguagePackStringValuePluralized]
  static LanguagePackStringValue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case LanguagePackStringValueDeleted.constructor:
        return LanguagePackStringValueDeleted.fromJson(json);

      case LanguagePackStringValueOrdinary.constructor:
        return LanguagePackStringValueOrdinary.fromJson(json);

      case LanguagePackStringValuePluralized.constructor:
        return LanguagePackStringValuePluralized.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A deleted language pack string, the value must be taken from the built-in
/// English language pack
@immutable
final class LanguagePackStringValueDeleted extends LanguagePackStringValue {
  const LanguagePackStringValueDeleted();

  static const String constructor = 'languagePackStringValueDeleted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static LanguagePackStringValueDeleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const LanguagePackStringValueDeleted();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An ordinary language pack string
@immutable
final class LanguagePackStringValueOrdinary extends LanguagePackStringValue {
  LanguagePackStringValueOrdinary({required this.value});

  /// [value] String value
  final String value;

  static const String constructor = 'languagePackStringValueOrdinary';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'value': value,
    '@type': constructor,
  };

  static LanguagePackStringValueOrdinary? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LanguagePackStringValueOrdinary(
      value: (json['value'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A language pack string which has different forms based on the number of
/// some object it mentions. See
/// https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html
/// for more information
@immutable
final class LanguagePackStringValuePluralized extends LanguagePackStringValue {
  LanguagePackStringValuePluralized({
    required this.zeroValue,
    required this.oneValue,
    required this.twoValue,
    required this.fewValue,
    required this.manyValue,
    required this.otherValue,
  });

  /// [zeroValue] Value for zero objects
  final String zeroValue;

  /// [oneValue] Value for one object
  final String oneValue;

  /// [twoValue] Value for two objects
  final String twoValue;

  /// [fewValue] Value for few objects
  final String fewValue;

  /// [manyValue] Value for many objects
  final String manyValue;

  /// [otherValue] Default value
  final String otherValue;

  static const String constructor = 'languagePackStringValuePluralized';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'zero_value': zeroValue,
    'one_value': oneValue,
    'two_value': twoValue,
    'few_value': fewValue,
    'many_value': manyValue,
    'other_value': otherValue,
    '@type': constructor,
  };

  static LanguagePackStringValuePluralized? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return LanguagePackStringValuePluralized(
      zeroValue: (json['zero_value'] as String?) ?? '',
      oneValue: (json['one_value'] as String?) ?? '',
      twoValue: (json['two_value'] as String?) ?? '',
      fewValue: (json['few_value'] as String?) ?? '',
      manyValue: (json['many_value'] as String?) ?? '',
      otherValue: (json['other_value'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
