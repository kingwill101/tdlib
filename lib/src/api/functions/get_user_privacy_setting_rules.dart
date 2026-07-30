import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the current privacy settings
/// Returns [UserPrivacySettingRules]
@immutable
final class GetUserPrivacySettingRules extends TdFunction {
  GetUserPrivacySettingRules({this.setting});

  /// [setting] The privacy setting
  final UserPrivacySetting? setting;

  static const String constructor = 'getUserPrivacySettingRules';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'setting': setting?.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
