import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a user who had or will have a birthday soon
@immutable
final class CloseBirthdayUser extends TdObject {
  CloseBirthdayUser({required this.userId, this.birthdate});

  /// [userId] User identifier
  final int userId;

  /// [birthdate] Birthdate of the user
  final Birthdate? birthdate;

  static const String constructor = 'closeBirthdayUser';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'birthdate': birthdate?.toJson(),
    '@type': constructor,
  };

  static CloseBirthdayUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CloseBirthdayUser(
      userId: (json['user_id'] as int?) ?? 0,
      birthdate: Birthdate.fromJson(tdMapFromJson(json['birthdate'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
