import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents one member of a JSON object
@immutable
final class JsonObjectMember extends TdObject {
  JsonObjectMember({required this.key, this.value});

  /// [key] Member's key
  final String key;

  /// [value] Member's value
  final JsonValue? value;

  static const String constructor = 'jsonObjectMember';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'key': key,
    'value': value?.toJson(),
    '@type': constructor,
  };

  static JsonObjectMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return JsonObjectMember(
      key: (json['key'] as String?) ?? '',
      value: JsonValue.fromJson(tdMapFromJson(json['value'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
