import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An identity document to be saved to Telegram Passport
@immutable
final class InputIdentityDocument extends TdObject {
  InputIdentityDocument({
    required this.number,
    this.expirationDate,
    this.frontSide,
    this.reverseSide,
    this.selfie,
    required this.translation,
  });

  /// [number] Document number; 1-24 characters
  final String number;

  /// [expirationDate] Document expiration date; pass null if not applicable
  final Date? expirationDate;

  /// [frontSide] Front side of the document
  final InputFile? frontSide;

  /// [reverseSide] Reverse side of the document; only for driver license and
  /// identity card; pass null otherwise
  final InputFile? reverseSide;

  /// [selfie] Selfie with the document; pass null if unavailable
  final InputFile? selfie;

  /// [translation] List of files containing a certified English translation of
  /// the document
  final List<InputFile> translation;

  static const String constructor = 'inputIdentityDocument';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'number': number,
    'expiration_date': expirationDate?.toJson(),
    'front_side': frontSide?.toJson(),
    'reverse_side': reverseSide?.toJson(),
    'selfie': selfie?.toJson(),
    'translation': translation.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static InputIdentityDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputIdentityDocument(
      number: (json['number'] as String?) ?? '',
      expirationDate: Date.fromJson(tdMapFromJson(json['expiration_date'])),
      frontSide: InputFile.fromJson(tdMapFromJson(json['front_side'])),
      reverseSide: InputFile.fromJson(tdMapFromJson(json['reverse_side'])),
      selfie: InputFile.fromJson(tdMapFromJson(json['selfie'])),
      translation: List<InputFile>.from(
        tdListFromJson(json['translation'])
            .map((item) => InputFile.fromJson(tdMapFromJson(item)))
            .whereType<InputFile>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
