import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A simple object containing a vector of strings; for testing only
@immutable
final class TestVectorString extends TdObject {
  TestVectorString({required this.value});

  /// [value] Vector of strings
  final List<String> value;

  static const String constructor = 'testVectorString';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'value': value.map((item) => item).toList(),
    '@type': constructor,
  };

  static TestVectorString? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TestVectorString(
      value: List<String>.from(
        tdListFromJson(
          json['value'],
        ).map((item) => (item as dynamic)?.toString() ?? ''),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
