import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A simple object containing a number; for testing only
@immutable
final class TestInt extends TdObject {
  TestInt({required this.value});

  /// [value] Number
  final int value;

  static const String constructor = 'testInt';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'value': value,
    '@type': constructor,
  };

  static TestInt? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TestInt(value: (json['value'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
