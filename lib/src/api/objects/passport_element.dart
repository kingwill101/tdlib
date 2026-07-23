import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a Telegram Passport element
@immutable
sealed class PassportElement extends TdObject {
  const PassportElement();

  static const String constructor = 'passportElement';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [PassportElementAddress]
  /// [PassportElementBankStatement]
  /// [PassportElementDriverLicense]
  /// [PassportElementEmailAddress]
  /// [PassportElementIdentityCard]
  /// [PassportElementInternalPassport]
  /// [PassportElementPassport]
  /// [PassportElementPassportRegistration]
  /// [PassportElementPersonalDetails]
  /// [PassportElementPhoneNumber]
  /// [PassportElementRentalAgreement]
  /// [PassportElementTemporaryRegistration]
  /// [PassportElementUtilityBill]
  static PassportElement? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PassportElementAddress.constructor:
        return PassportElementAddress.fromJson(json);

      case PassportElementBankStatement.constructor:
        return PassportElementBankStatement.fromJson(json);

      case PassportElementDriverLicense.constructor:
        return PassportElementDriverLicense.fromJson(json);

      case PassportElementEmailAddress.constructor:
        return PassportElementEmailAddress.fromJson(json);

      case PassportElementIdentityCard.constructor:
        return PassportElementIdentityCard.fromJson(json);

      case PassportElementInternalPassport.constructor:
        return PassportElementInternalPassport.fromJson(json);

      case PassportElementPassport.constructor:
        return PassportElementPassport.fromJson(json);

      case PassportElementPassportRegistration.constructor:
        return PassportElementPassportRegistration.fromJson(json);

      case PassportElementPersonalDetails.constructor:
        return PassportElementPersonalDetails.fromJson(json);

      case PassportElementPhoneNumber.constructor:
        return PassportElementPhoneNumber.fromJson(json);

      case PassportElementRentalAgreement.constructor:
        return PassportElementRentalAgreement.fromJson(json);

      case PassportElementTemporaryRegistration.constructor:
        return PassportElementTemporaryRegistration.fromJson(json);

      case PassportElementUtilityBill.constructor:
        return PassportElementUtilityBill.fromJson(json);

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
final class PassportElementAddress extends PassportElement {
  PassportElementAddress({this.address});

  /// [address] Address
  final Address? address;

  static const String constructor = 'passportElementAddress';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'address': address?.toJson(),
    '@type': constructor,
  };

  static PassportElementAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementAddress(
      address: Address.fromJson(tdMapFromJson(json['address'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element containing the user's bank statement
@immutable
final class PassportElementBankStatement extends PassportElement {
  PassportElementBankStatement({this.bankStatement});

  /// [bankStatement] Bank statement
  final PersonalDocument? bankStatement;

  static const String constructor = 'passportElementBankStatement';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bank_statement': bankStatement?.toJson(),
    '@type': constructor,
  };

  static PassportElementBankStatement? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementBankStatement(
      bankStatement: PersonalDocument.fromJson(
        tdMapFromJson(json['bank_statement']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element containing the user's driver license
@immutable
final class PassportElementDriverLicense extends PassportElement {
  PassportElementDriverLicense({this.driverLicense});

  /// [driverLicense] Driver license
  final IdentityDocument? driverLicense;

  static const String constructor = 'passportElementDriverLicense';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'driver_license': driverLicense?.toJson(),
    '@type': constructor,
  };

  static PassportElementDriverLicense? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementDriverLicense(
      driverLicense: IdentityDocument.fromJson(
        tdMapFromJson(json['driver_license']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element containing the user's email address
@immutable
final class PassportElementEmailAddress extends PassportElement {
  PassportElementEmailAddress({required this.emailAddress});

  /// [emailAddress] Email address
  final String emailAddress;

  static const String constructor = 'passportElementEmailAddress';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'email_address': emailAddress,
    '@type': constructor,
  };

  static PassportElementEmailAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementEmailAddress(
      emailAddress: (json['email_address'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element containing the user's identity card
@immutable
final class PassportElementIdentityCard extends PassportElement {
  PassportElementIdentityCard({this.identityCard});

  /// [identityCard] Identity card
  final IdentityDocument? identityCard;

  static const String constructor = 'passportElementIdentityCard';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'identity_card': identityCard?.toJson(),
    '@type': constructor,
  };

  static PassportElementIdentityCard? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementIdentityCard(
      identityCard: IdentityDocument.fromJson(
        tdMapFromJson(json['identity_card']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element containing the user's internal passport
@immutable
final class PassportElementInternalPassport extends PassportElement {
  PassportElementInternalPassport({this.internalPassport});

  /// [internalPassport] Internal passport
  final IdentityDocument? internalPassport;

  static const String constructor = 'passportElementInternalPassport';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'internal_passport': internalPassport?.toJson(),
    '@type': constructor,
  };

  static PassportElementInternalPassport? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementInternalPassport(
      internalPassport: IdentityDocument.fromJson(
        tdMapFromJson(json['internal_passport']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element containing the user's passport
@immutable
final class PassportElementPassport extends PassportElement {
  PassportElementPassport({this.passport});

  /// [passport] Passport
  final IdentityDocument? passport;

  static const String constructor = 'passportElementPassport';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'passport': passport?.toJson(),
    '@type': constructor,
  };

  static PassportElementPassport? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementPassport(
      passport: IdentityDocument.fromJson(tdMapFromJson(json['passport'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element containing the user's passport registration
/// pages
@immutable
final class PassportElementPassportRegistration extends PassportElement {
  PassportElementPassportRegistration({this.passportRegistration});

  /// [passportRegistration] Passport registration pages
  final PersonalDocument? passportRegistration;

  static const String constructor = 'passportElementPassportRegistration';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'passport_registration': passportRegistration?.toJson(),
    '@type': constructor,
  };

  static PassportElementPassportRegistration? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PassportElementPassportRegistration(
      passportRegistration: PersonalDocument.fromJson(
        tdMapFromJson(json['passport_registration']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element containing the user's personal details
@immutable
final class PassportElementPersonalDetails extends PassportElement {
  PassportElementPersonalDetails({this.personalDetails});

  /// [personalDetails] Personal details of the user
  final PersonalDetails? personalDetails;

  static const String constructor = 'passportElementPersonalDetails';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'personal_details': personalDetails?.toJson(),
    '@type': constructor,
  };

  static PassportElementPersonalDetails? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementPersonalDetails(
      personalDetails: PersonalDetails.fromJson(
        tdMapFromJson(json['personal_details']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element containing the user's phone number
@immutable
final class PassportElementPhoneNumber extends PassportElement {
  PassportElementPhoneNumber({required this.phoneNumber});

  /// [phoneNumber] Phone number
  final String phoneNumber;

  static const String constructor = 'passportElementPhoneNumber';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'phone_number': phoneNumber,
    '@type': constructor,
  };

  static PassportElementPhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementPhoneNumber(
      phoneNumber: (json['phone_number'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element containing the user's rental agreement
@immutable
final class PassportElementRentalAgreement extends PassportElement {
  PassportElementRentalAgreement({this.rentalAgreement});

  /// [rentalAgreement] Rental agreement
  final PersonalDocument? rentalAgreement;

  static const String constructor = 'passportElementRentalAgreement';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'rental_agreement': rentalAgreement?.toJson(),
    '@type': constructor,
  };

  static PassportElementRentalAgreement? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementRentalAgreement(
      rentalAgreement: PersonalDocument.fromJson(
        tdMapFromJson(json['rental_agreement']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element containing the user's temporary registration
@immutable
final class PassportElementTemporaryRegistration extends PassportElement {
  PassportElementTemporaryRegistration({this.temporaryRegistration});

  /// [temporaryRegistration] Temporary registration
  final PersonalDocument? temporaryRegistration;

  static const String constructor = 'passportElementTemporaryRegistration';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'temporary_registration': temporaryRegistration?.toJson(),
    '@type': constructor,
  };

  static PassportElementTemporaryRegistration? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PassportElementTemporaryRegistration(
      temporaryRegistration: PersonalDocument.fromJson(
        tdMapFromJson(json['temporary_registration']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element containing the user's utility bill
@immutable
final class PassportElementUtilityBill extends PassportElement {
  PassportElementUtilityBill({this.utilityBill});

  /// [utilityBill] Utility bill
  final PersonalDocument? utilityBill;

  static const String constructor = 'passportElementUtilityBill';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'utility_bill': utilityBill?.toJson(),
    '@type': constructor,
  };

  static PassportElementUtilityBill? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementUtilityBill(
      utilityBill: PersonalDocument.fromJson(
        tdMapFromJson(json['utility_bill']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
