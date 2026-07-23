import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Information about the email address authentication code that was sent
@immutable
final class EmailAddressAuthenticationCodeInfo extends TdObject {
  EmailAddressAuthenticationCodeInfo({
    required this.emailAddressPattern,
    required this.length,
  });

  /// [emailAddressPattern] Pattern of the email address to which an
  /// authentication code was sent
  final String emailAddressPattern;

  /// [length] Length of the code; 0 if unknown
  final int length;

  static const String constructor = 'emailAddressAuthenticationCodeInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'email_address_pattern': emailAddressPattern,
    'length': length,
    '@type': constructor,
  };

  static EmailAddressAuthenticationCodeInfo? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return EmailAddressAuthenticationCodeInfo(
      emailAddressPattern: (json['email_address_pattern'] as String?) ?? '',
      length: (json['length'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
