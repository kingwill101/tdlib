import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a globally unique push receiver identifier, which can be used to
/// identify which account has received a push notification
@immutable
final class PushReceiverId extends TdObject {
  PushReceiverId({required this.id});

  /// [id] The globally unique identifier of push notification subscription
  final int id;

  static const String constructor = 'pushReceiverId';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id.toString(),
    '@type': constructor,
  };

  static PushReceiverId? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushReceiverId(
      id: int.tryParse((json['id'] as dynamic)?.toString() ?? '') ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
