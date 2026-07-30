import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A simple object containing a vector of objects that hold a number; for
/// testing only
@immutable
final class TestVectorIntObject extends TdObject {
  TestVectorIntObject({required this.value});

  /// [value] Vector of objects
  final List<TestInt> value;

  static const String constructor = 'testVectorIntObject';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'value': value.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static TestVectorIntObject? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TestVectorIntObject(
      value: List<TestInt>.from(
        tdListFromJson(json['value'])
            .map((item) => TestInt.fromJson(tdMapFromJson(item)))
            .whereType<TestInt>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
