import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a Telegram Passport authorization form that was
/// requested
@immutable
final class PassportAuthorizationForm extends TdObject {
  PassportAuthorizationForm({
    required this.id,
    required this.requiredElements,
    required this.privacyPolicyUrl,
  });

  /// [id] Unique identifier of the authorization form
  final int id;

  /// [requiredElements] Telegram Passport elements that must be provided to
  /// complete the form
  final List<PassportRequiredElement> requiredElements;

  /// [privacyPolicyUrl] URL for the privacy policy of the service; may be empty
  final String privacyPolicyUrl;

  static const String constructor = 'passportAuthorizationForm';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'required_elements': requiredElements.map((item) => item.toJson()).toList(),
    'privacy_policy_url': privacyPolicyUrl,
    '@type': constructor,
  };

  static PassportAuthorizationForm? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportAuthorizationForm(
      id: (json['id'] as int?) ?? 0,
      requiredElements: List<PassportRequiredElement>.from(
        tdListFromJson(json['required_elements'])
            .map(
              (item) => PassportRequiredElement.fromJson(tdMapFromJson(item)),
            )
            .whereType<PassportRequiredElement>(),
      ),
      privacyPolicyUrl: (json['privacy_policy_url'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
