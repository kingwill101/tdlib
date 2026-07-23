import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains some binary data
@immutable
final class Data extends TdObject {
  Data({required this.data});

  /// [data] Data
  final String data;

  static const String constructor = 'data';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'data': data,
    '@type': constructor,
  };

  static Data? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Data(data: (json['data'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
