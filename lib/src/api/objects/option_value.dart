import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents the value of an option
@immutable
sealed class OptionValue extends TdObject {
  const OptionValue();

  static const String constructor = 'optionValue';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [OptionValueBoolean]
  /// [OptionValueEmpty]
  /// [OptionValueInteger]
  /// [OptionValueString]
  static OptionValue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case OptionValueBoolean.constructor:
        return OptionValueBoolean.fromJson(json);

      case OptionValueEmpty.constructor:
        return OptionValueEmpty.fromJson(json);

      case OptionValueInteger.constructor:
        return OptionValueInteger.fromJson(json);

      case OptionValueString.constructor:
        return OptionValueString.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents a boolean option
@immutable
final class OptionValueBoolean extends OptionValue {
  OptionValueBoolean({required this.value});

  /// [value] The value of the option
  final bool value;

  static const String constructor = 'optionValueBoolean';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'value': value,
    '@type': constructor,
  };

  static OptionValueBoolean? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OptionValueBoolean(value: (json['value'] as bool?) ?? false);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents an unknown option or an option which has a default value
@immutable
final class OptionValueEmpty extends OptionValue {
  const OptionValueEmpty();

  static const String constructor = 'optionValueEmpty';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static OptionValueEmpty? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const OptionValueEmpty();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents an integer option
@immutable
final class OptionValueInteger extends OptionValue {
  OptionValueInteger({required this.value});

  /// [value] The value of the option
  final int value;

  static const String constructor = 'optionValueInteger';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'value': value.toString(),
    '@type': constructor,
  };

  static OptionValueInteger? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OptionValueInteger(
      value: int.tryParse((json['value'] as dynamic)?.toString() ?? '') ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents a string option
@immutable
final class OptionValueString extends OptionValue {
  OptionValueString({required this.value});

  /// [value] The value of the option
  final String value;

  static const String constructor = 'optionValueString';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'value': value,
    '@type': constructor,
  };

  static OptionValueString? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OptionValueString(value: (json['value'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
