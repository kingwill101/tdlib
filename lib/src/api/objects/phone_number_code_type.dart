import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of the request for which a code is sent to a phone number
@immutable
sealed class PhoneNumberCodeType extends TdObject {
  const PhoneNumberCodeType();

  static const String constructor = 'phoneNumberCodeType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [PhoneNumberCodeTypeChange]
  /// [PhoneNumberCodeTypeConfirmOwnership]
  /// [PhoneNumberCodeTypeVerify]
  static PhoneNumberCodeType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PhoneNumberCodeTypeChange.constructor:
        return PhoneNumberCodeTypeChange.fromJson(json);

      case PhoneNumberCodeTypeConfirmOwnership.constructor:
        return PhoneNumberCodeTypeConfirmOwnership.fromJson(json);

      case PhoneNumberCodeTypeVerify.constructor:
        return PhoneNumberCodeTypeVerify.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Checks ownership of a new phone number to change the user's authentication
/// phone number; for official Android and iOS applications only
@immutable
final class PhoneNumberCodeTypeChange extends PhoneNumberCodeType {
  const PhoneNumberCodeTypeChange();

  static const String constructor = 'phoneNumberCodeTypeChange';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PhoneNumberCodeTypeChange? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PhoneNumberCodeTypeChange();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Confirms ownership of a phone number to prevent account deletion while
/// handling links of the type internalLinkTypePhoneNumberConfirmation
@immutable
final class PhoneNumberCodeTypeConfirmOwnership extends PhoneNumberCodeType {
  PhoneNumberCodeTypeConfirmOwnership({required this.hash});

  /// [hash] Hash value from the link
  final String hash;

  static const String constructor = 'phoneNumberCodeTypeConfirmOwnership';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'hash': hash,
    '@type': constructor,
  };

  static PhoneNumberCodeTypeConfirmOwnership? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PhoneNumberCodeTypeConfirmOwnership(
      hash: (json['hash'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Verifies ownership of a phone number to be added to the user's Telegram
/// Passport
@immutable
final class PhoneNumberCodeTypeVerify extends PhoneNumberCodeType {
  const PhoneNumberCodeTypeVerify();

  static const String constructor = 'phoneNumberCodeTypeVerify';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PhoneNumberCodeTypeVerify? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PhoneNumberCodeTypeVerify();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
