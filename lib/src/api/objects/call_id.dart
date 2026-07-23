import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains the call identifier
@immutable
final class CallId extends TdObject {
  CallId({required this.id});

  /// [id] Call identifier
  final int id;

  static const String constructor = 'callId';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    '@type': constructor,
  };

  static CallId? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallId(id: (json['id'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
