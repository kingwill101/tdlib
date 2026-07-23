import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a Telegram Passport element to be saved
@immutable
sealed class InputPassportElement extends TdObject {
  const InputPassportElement();

  static const String constructor = 'inputPassportElement';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [InputPassportElementAddress]
  /// [InputPassportElementBankStatement]
  /// [InputPassportElementDriverLicense]
  /// [InputPassportElementEmailAddress]
  /// [InputPassportElementIdentityCard]
  /// [InputPassportElementInternalPassport]
  /// [InputPassportElementPassport]
  /// [InputPassportElementPassportRegistration]
  /// [InputPassportElementPersonalDetails]
  /// [InputPassportElementPhoneNumber]
  /// [InputPassportElementRentalAgreement]
  /// [InputPassportElementTemporaryRegistration]
  /// [InputPassportElementUtilityBill]
  static InputPassportElement? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputPassportElementAddress.constructor:
        return InputPassportElementAddress.fromJson(json);

      case InputPassportElementBankStatement.constructor:
        return InputPassportElementBankStatement.fromJson(json);

      case InputPassportElementDriverLicense.constructor:
        return InputPassportElementDriverLicense.fromJson(json);

      case InputPassportElementEmailAddress.constructor:
        return InputPassportElementEmailAddress.fromJson(json);

      case InputPassportElementIdentityCard.constructor:
        return InputPassportElementIdentityCard.fromJson(json);

      case InputPassportElementInternalPassport.constructor:
        return InputPassportElementInternalPassport.fromJson(json);

      case InputPassportElementPassport.constructor:
        return InputPassportElementPassport.fromJson(json);

      case InputPassportElementPassportRegistration.constructor:
        return InputPassportElementPassportRegistration.fromJson(json);

      case InputPassportElementPersonalDetails.constructor:
        return InputPassportElementPersonalDetails.fromJson(json);

      case InputPassportElementPhoneNumber.constructor:
        return InputPassportElementPhoneNumber.fromJson(json);

      case InputPassportElementRentalAgreement.constructor:
        return InputPassportElementRentalAgreement.fromJson(json);

      case InputPassportElementTemporaryRegistration.constructor:
        return InputPassportElementTemporaryRegistration.fromJson(json);

      case InputPassportElementUtilityBill.constructor:
        return InputPassportElementUtilityBill.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element to be saved containing the user's address
@immutable
final class InputPassportElementAddress extends InputPassportElement {
  InputPassportElementAddress({this.address});

  /// [address] The address to be saved
  final Address? address;

  static const String constructor = 'inputPassportElementAddress';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'address': address?.toJson(),
    '@type': constructor,
  };

  static InputPassportElementAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementAddress(
      address: Address.fromJson(tdMapFromJson(json['address'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element to be saved containing the user's bank
/// statement
@immutable
final class InputPassportElementBankStatement extends InputPassportElement {
  InputPassportElementBankStatement({this.bankStatement});

  /// [bankStatement] The bank statement to be saved
  final InputPersonalDocument? bankStatement;

  static const String constructor = 'inputPassportElementBankStatement';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bank_statement': bankStatement?.toJson(),
    '@type': constructor,
  };

  static InputPassportElementBankStatement? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InputPassportElementBankStatement(
      bankStatement: InputPersonalDocument.fromJson(
        tdMapFromJson(json['bank_statement']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element to be saved containing the user's driver
/// license
@immutable
final class InputPassportElementDriverLicense extends InputPassportElement {
  InputPassportElementDriverLicense({this.driverLicense});

  /// [driverLicense] The driver license to be saved
  final InputIdentityDocument? driverLicense;

  static const String constructor = 'inputPassportElementDriverLicense';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'driver_license': driverLicense?.toJson(),
    '@type': constructor,
  };

  static InputPassportElementDriverLicense? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InputPassportElementDriverLicense(
      driverLicense: InputIdentityDocument.fromJson(
        tdMapFromJson(json['driver_license']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element to be saved containing the user's email
/// address
@immutable
final class InputPassportElementEmailAddress extends InputPassportElement {
  InputPassportElementEmailAddress({required this.emailAddress});

  /// [emailAddress] The email address to be saved
  final String emailAddress;

  static const String constructor = 'inputPassportElementEmailAddress';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'email_address': emailAddress,
    '@type': constructor,
  };

  static InputPassportElementEmailAddress? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InputPassportElementEmailAddress(
      emailAddress: (json['email_address'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element to be saved containing the user's identity
/// card
@immutable
final class InputPassportElementIdentityCard extends InputPassportElement {
  InputPassportElementIdentityCard({this.identityCard});

  /// [identityCard] The identity card to be saved
  final InputIdentityDocument? identityCard;

  static const String constructor = 'inputPassportElementIdentityCard';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'identity_card': identityCard?.toJson(),
    '@type': constructor,
  };

  static InputPassportElementIdentityCard? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InputPassportElementIdentityCard(
      identityCard: InputIdentityDocument.fromJson(
        tdMapFromJson(json['identity_card']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element to be saved containing the user's internal
/// passport
@immutable
final class InputPassportElementInternalPassport extends InputPassportElement {
  InputPassportElementInternalPassport({this.internalPassport});

  /// [internalPassport] The internal passport to be saved
  final InputIdentityDocument? internalPassport;

  static const String constructor = 'inputPassportElementInternalPassport';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'internal_passport': internalPassport?.toJson(),
    '@type': constructor,
  };

  static InputPassportElementInternalPassport? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InputPassportElementInternalPassport(
      internalPassport: InputIdentityDocument.fromJson(
        tdMapFromJson(json['internal_passport']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element to be saved containing the user's passport
@immutable
final class InputPassportElementPassport extends InputPassportElement {
  InputPassportElementPassport({this.passport});

  /// [passport] The passport to be saved
  final InputIdentityDocument? passport;

  static const String constructor = 'inputPassportElementPassport';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'passport': passport?.toJson(),
    '@type': constructor,
  };

  static InputPassportElementPassport? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementPassport(
      passport: InputIdentityDocument.fromJson(tdMapFromJson(json['passport'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element to be saved containing the user's passport
/// registration
@immutable
final class InputPassportElementPassportRegistration
    extends InputPassportElement {
  InputPassportElementPassportRegistration({this.passportRegistration});

  /// [passportRegistration] The passport registration page to be saved
  final InputPersonalDocument? passportRegistration;

  static const String constructor = 'inputPassportElementPassportRegistration';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'passport_registration': passportRegistration?.toJson(),
    '@type': constructor,
  };

  static InputPassportElementPassportRegistration? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InputPassportElementPassportRegistration(
      passportRegistration: InputPersonalDocument.fromJson(
        tdMapFromJson(json['passport_registration']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element to be saved containing the user's personal
/// details
@immutable
final class InputPassportElementPersonalDetails extends InputPassportElement {
  InputPassportElementPersonalDetails({this.personalDetails});

  /// [personalDetails] Personal details of the user
  final PersonalDetails? personalDetails;

  static const String constructor = 'inputPassportElementPersonalDetails';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'personal_details': personalDetails?.toJson(),
    '@type': constructor,
  };

  static InputPassportElementPersonalDetails? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InputPassportElementPersonalDetails(
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

/// A Telegram Passport element to be saved containing the user's phone number
@immutable
final class InputPassportElementPhoneNumber extends InputPassportElement {
  InputPassportElementPhoneNumber({required this.phoneNumber});

  /// [phoneNumber] The phone number to be saved
  final String phoneNumber;

  static const String constructor = 'inputPassportElementPhoneNumber';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'phone_number': phoneNumber,
    '@type': constructor,
  };

  static InputPassportElementPhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementPhoneNumber(
      phoneNumber: (json['phone_number'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element to be saved containing the user's rental
/// agreement
@immutable
final class InputPassportElementRentalAgreement extends InputPassportElement {
  InputPassportElementRentalAgreement({this.rentalAgreement});

  /// [rentalAgreement] The rental agreement to be saved
  final InputPersonalDocument? rentalAgreement;

  static const String constructor = 'inputPassportElementRentalAgreement';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'rental_agreement': rentalAgreement?.toJson(),
    '@type': constructor,
  };

  static InputPassportElementRentalAgreement? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InputPassportElementRentalAgreement(
      rentalAgreement: InputPersonalDocument.fromJson(
        tdMapFromJson(json['rental_agreement']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element to be saved containing the user's temporary
/// registration
@immutable
final class InputPassportElementTemporaryRegistration
    extends InputPassportElement {
  InputPassportElementTemporaryRegistration({this.temporaryRegistration});

  /// [temporaryRegistration] The temporary registration document to be saved
  final InputPersonalDocument? temporaryRegistration;

  static const String constructor = 'inputPassportElementTemporaryRegistration';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'temporary_registration': temporaryRegistration?.toJson(),
    '@type': constructor,
  };

  static InputPassportElementTemporaryRegistration? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InputPassportElementTemporaryRegistration(
      temporaryRegistration: InputPersonalDocument.fromJson(
        tdMapFromJson(json['temporary_registration']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram Passport element to be saved containing the user's utility bill
@immutable
final class InputPassportElementUtilityBill extends InputPassportElement {
  InputPassportElementUtilityBill({this.utilityBill});

  /// [utilityBill] The utility bill to be saved
  final InputPersonalDocument? utilityBill;

  static const String constructor = 'inputPassportElementUtilityBill';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'utility_bill': utilityBill?.toJson(),
    '@type': constructor,
  };

  static InputPassportElementUtilityBill? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementUtilityBill(
      utilityBill: InputPersonalDocument.fromJson(
        tdMapFromJson(json['utility_bill']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
