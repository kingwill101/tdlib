import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains the type of Telegram Passport element
@immutable
sealed class PassportElementType extends TdObject {
  const PassportElementType();

  static const String constructor = 'passportElementType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [PassportElementTypeAddress]
  /// [PassportElementTypeBankStatement]
  /// [PassportElementTypeDriverLicense]
  /// [PassportElementTypeEmailAddress]
  /// [PassportElementTypeIdentityCard]
  /// [PassportElementTypeInternalPassport]
  /// [PassportElementTypePassport]
  /// [PassportElementTypePassportRegistration]
  /// [PassportElementTypePersonalDetails]
  /// [PassportElementTypePhoneNumber]
  /// [PassportElementTypeRentalAgreement]
  /// [PassportElementTypeTemporaryRegistration]
  /// [PassportElementTypeUtilityBill]
  static PassportElementType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PassportElementTypeAddress.constructor:
        return PassportElementTypeAddress.fromJson(json);

      case PassportElementTypeBankStatement.constructor:
        return PassportElementTypeBankStatement.fromJson(json);

      case PassportElementTypeDriverLicense.constructor:
        return PassportElementTypeDriverLicense.fromJson(json);

      case PassportElementTypeEmailAddress.constructor:
        return PassportElementTypeEmailAddress.fromJson(json);

      case PassportElementTypeIdentityCard.constructor:
        return PassportElementTypeIdentityCard.fromJson(json);

      case PassportElementTypeInternalPassport.constructor:
        return PassportElementTypeInternalPassport.fromJson(json);

      case PassportElementTypePassport.constructor:
        return PassportElementTypePassport.fromJson(json);

      case PassportElementTypePassportRegistration.constructor:
        return PassportElementTypePassportRegistration.fromJson(json);

      case PassportElementTypePersonalDetails.constructor:
        return PassportElementTypePersonalDetails.fromJson(json);

      case PassportElementTypePhoneNumber.constructor:
        return PassportElementTypePhoneNumber.fromJson(json);

      case PassportElementTypeRentalAgreement.constructor:
        return PassportElementTypeRentalAgreement.fromJson(json);

      case PassportElementTypeTemporaryRegistration.constructor:
        return PassportElementTypeTemporaryRegistration.fromJson(json);

      case PassportElementTypeUtilityBill.constructor:
        return PassportElementTypeUtilityBill.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element containing the user's address
@immutable
final class PassportElementTypeAddress extends PassportElementType {
  const PassportElementTypeAddress();

  static const String constructor = 'passportElementTypeAddress';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PassportElementTypeAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeAddress();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element containing the user's bank statement
@immutable
final class PassportElementTypeBankStatement extends PassportElementType {
  const PassportElementTypeBankStatement();

  static const String constructor = 'passportElementTypeBankStatement';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PassportElementTypeBankStatement? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeBankStatement();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element containing the user's driver license
@immutable
final class PassportElementTypeDriverLicense extends PassportElementType {
  const PassportElementTypeDriverLicense();

  static const String constructor = 'passportElementTypeDriverLicense';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PassportElementTypeDriverLicense? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeDriverLicense();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element containing the user's email address
@immutable
final class PassportElementTypeEmailAddress extends PassportElementType {
  const PassportElementTypeEmailAddress();

  static const String constructor = 'passportElementTypeEmailAddress';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PassportElementTypeEmailAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeEmailAddress();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element containing the user's identity card
@immutable
final class PassportElementTypeIdentityCard extends PassportElementType {
  const PassportElementTypeIdentityCard();

  static const String constructor = 'passportElementTypeIdentityCard';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PassportElementTypeIdentityCard? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeIdentityCard();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element containing the user's internal passport
@immutable
final class PassportElementTypeInternalPassport extends PassportElementType {
  const PassportElementTypeInternalPassport();

  static const String constructor = 'passportElementTypeInternalPassport';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PassportElementTypeInternalPassport? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeInternalPassport();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element containing the user's passport
@immutable
final class PassportElementTypePassport extends PassportElementType {
  const PassportElementTypePassport();

  static const String constructor = 'passportElementTypePassport';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PassportElementTypePassport? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypePassport();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element containing the registration page of the user's
/// passport
@immutable
final class PassportElementTypePassportRegistration
    extends PassportElementType {
  const PassportElementTypePassportRegistration();

  static const String constructor = 'passportElementTypePassportRegistration';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PassportElementTypePassportRegistration? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypePassportRegistration();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element containing the user's personal details
@immutable
final class PassportElementTypePersonalDetails extends PassportElementType {
  const PassportElementTypePersonalDetails();

  static const String constructor = 'passportElementTypePersonalDetails';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PassportElementTypePersonalDetails? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypePersonalDetails();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element containing the user's phone number
@immutable
final class PassportElementTypePhoneNumber extends PassportElementType {
  const PassportElementTypePhoneNumber();

  static const String constructor = 'passportElementTypePhoneNumber';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PassportElementTypePhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypePhoneNumber();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element containing the user's rental agreement
@immutable
final class PassportElementTypeRentalAgreement extends PassportElementType {
  const PassportElementTypeRentalAgreement();

  static const String constructor = 'passportElementTypeRentalAgreement';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PassportElementTypeRentalAgreement? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeRentalAgreement();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element containing the user's temporary registration
@immutable
final class PassportElementTypeTemporaryRegistration
    extends PassportElementType {
  const PassportElementTypeTemporaryRegistration();

  static const String constructor = 'passportElementTypeTemporaryRegistration';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PassportElementTypeTemporaryRegistration? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeTemporaryRegistration();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element containing the user's utility bill
@immutable
final class PassportElementTypeUtilityBill extends PassportElementType {
  const PassportElementTypeUtilityBill();

  static const String constructor = 'passportElementTypeUtilityBill';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PassportElementTypeUtilityBill? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeUtilityBill();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
