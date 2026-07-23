import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about the period of inactivity after which the
/// current user's account will automatically be deleted
@immutable
final class AccountTtl extends TdObject {
  AccountTtl({required this.days});

  /// [days] Number of days of inactivity before the account will be flagged for
  /// deletion; 30-730 days
  final int days;

  static const String constructor = 'accountTtl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'days': days,
    '@type': constructor,
  };

  static AccountTtl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AccountTtl(days: (json['days'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
