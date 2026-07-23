import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of users
@immutable
final class Users extends TdObject {
  Users({required this.totalCount, required this.userIds});

  /// [totalCount] Approximate total number of users found
  final int totalCount;

  /// [userIds] A list of user identifiers
  final List<int> userIds;

  static const String constructor = 'users';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'user_ids': userIds.map((item) => item).toList(),
    '@type': constructor,
  };

  static Users? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Users(
      totalCount: (json['total_count'] as int?) ?? 0,
      userIds: List<int>.from(
        tdListFromJson(
          json['user_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
