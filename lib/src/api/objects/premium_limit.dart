import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a limit, increased for Premium users
@immutable
final class PremiumLimit extends TdObject {
  PremiumLimit({
    this.type,
    required this.defaultValue,
    required this.premiumValue,
  });

  /// [type] The type of the limit
  final PremiumLimitType? type;

  /// [defaultValue] Default value of the limit
  final int defaultValue;

  /// [premiumValue] Value of the limit for Premium users
  final int premiumValue;

  static const String constructor = 'premiumLimit';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'type': type?.toJson(),
    'default_value': defaultValue,
    'premium_value': premiumValue,
    '@type': constructor,
  };

  static PremiumLimit? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumLimit(
      type: PremiumLimitType.fromJson(tdMapFromJson(json['type'])),
      defaultValue: (json['default_value'] as int?) ?? 0,
      premiumValue: (json['premium_value'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
