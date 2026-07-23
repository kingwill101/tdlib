import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a JSON value
@immutable
sealed class JsonValue extends TdObject {
  const JsonValue();

  static const String constructor = 'jsonValue';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [JsonValueArray]
  /// [JsonValueBoolean]
  /// [JsonValueNull]
  /// [JsonValueNumber]
  /// [JsonValueObject]
  /// [JsonValueString]
  static JsonValue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case JsonValueArray.constructor:
        return JsonValueArray.fromJson(json);

      case JsonValueBoolean.constructor:
        return JsonValueBoolean.fromJson(json);

      case JsonValueNull.constructor:
        return JsonValueNull.fromJson(json);

      case JsonValueNumber.constructor:
        return JsonValueNumber.fromJson(json);

      case JsonValueObject.constructor:
        return JsonValueObject.fromJson(json);

      case JsonValueString.constructor:
        return JsonValueString.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents a JSON array
@immutable
final class JsonValueArray extends JsonValue {
  JsonValueArray({required this.values});

  /// [values] The list of array elements
  final List<JsonValue> values;

  static const String constructor = 'jsonValueArray';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'values': values.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static JsonValueArray? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return JsonValueArray(
      values: List<JsonValue>.from(
        tdListFromJson(json['values'])
            .map((item) => JsonValue.fromJson(tdMapFromJson(item)))
            .whereType<JsonValue>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents a boolean JSON value
@immutable
final class JsonValueBoolean extends JsonValue {
  JsonValueBoolean({required this.value});

  /// [value] The value
  final bool value;

  static const String constructor = 'jsonValueBoolean';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'value': value,
    '@type': constructor,
  };

  static JsonValueBoolean? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return JsonValueBoolean(value: (json['value'] as bool?) ?? false);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents a null JSON value
@immutable
final class JsonValueNull extends JsonValue {
  const JsonValueNull();

  static const String constructor = 'jsonValueNull';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static JsonValueNull? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const JsonValueNull();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents a numeric JSON value
@immutable
final class JsonValueNumber extends JsonValue {
  JsonValueNumber({required this.value});

  /// [value] The value
  final double value;

  static const String constructor = 'jsonValueNumber';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'value': value,
    '@type': constructor,
  };

  static JsonValueNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return JsonValueNumber(value: ((json['value'] as num?) ?? 0.0).toDouble());
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents a JSON object
@immutable
final class JsonValueObject extends JsonValue {
  JsonValueObject({required this.members});

  /// [members] The list of object members
  final List<JsonObjectMember> members;

  static const String constructor = 'jsonValueObject';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'members': members.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static JsonValueObject? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return JsonValueObject(
      members: List<JsonObjectMember>.from(
        tdListFromJson(json['members'])
            .map((item) => JsonObjectMember.fromJson(tdMapFromJson(item)))
            .whereType<JsonObjectMember>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Represents a string JSON value
@immutable
final class JsonValueString extends JsonValue {
  JsonValueString({required this.value});

  /// [value] The value
  final String value;

  static const String constructor = 'jsonValueString';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'value': value,
    '@type': constructor,
  };

  static JsonValueString? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return JsonValueString(value: (json['value'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
