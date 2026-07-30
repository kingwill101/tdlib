import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A list of privacy rules. Rules are matched in the specified order. The
/// first matched rule defines the privacy setting for a given user. If no
/// rule matches, the action is not allowed
@immutable
final class UserPrivacySettingRules extends TdObject {
  UserPrivacySettingRules({required this.rules});

  /// [rules] A list of rules
  final List<UserPrivacySettingRule> rules;

  static const String constructor = 'userPrivacySettingRules';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'rules': rules.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static UserPrivacySettingRules? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserPrivacySettingRules(
      rules: List<UserPrivacySettingRule>.from(
        tdListFromJson(json['rules'])
            .map((item) => UserPrivacySettingRule.fromJson(tdMapFromJson(item)))
            .whereType<UserPrivacySettingRule>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
