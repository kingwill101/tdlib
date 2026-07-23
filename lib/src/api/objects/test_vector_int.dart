import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A simple object containing a vector of numbers; for testing only
@immutable
final class TestVectorInt extends TdObject {
  TestVectorInt({required this.value});

  /// [value] Vector of numbers
  final List<int> value;

  static const String constructor = 'testVectorInt';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'value': value.map((item) => item).toList(),
    '@type': constructor,
  };

  static TestVectorInt? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TestVectorInt(
      value: List<int>.from(
        tdListFromJson(
          json['value'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
