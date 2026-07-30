import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An identity document
@immutable
final class IdentityDocument extends TdObject {
  IdentityDocument({
    required this.number,
    this.expirationDate,
    this.frontSide,
    this.reverseSide,
    this.selfie,
    required this.translation,
  });

  /// [number] Document number; 1-24 characters
  final String number;

  /// [expirationDate] Document expiration date; may be null if not applicable
  final Date? expirationDate;

  /// [frontSide] Front side of the document
  final DatedFile? frontSide;

  /// [reverseSide] Reverse side of the document; only for driver license and
  /// identity card; may be null
  final DatedFile? reverseSide;

  /// [selfie] Selfie with the document; may be null
  final DatedFile? selfie;

  /// [translation] List of files containing a certified English translation of
  /// the document
  final List<DatedFile> translation;

  static const String constructor = 'identityDocument';

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

  static IdentityDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return IdentityDocument(
      number: (json['number'] as String?) ?? '',
      expirationDate: Date.fromJson(tdMapFromJson(json['expiration_date'])),
      frontSide: DatedFile.fromJson(tdMapFromJson(json['front_side'])),
      reverseSide: DatedFile.fromJson(tdMapFromJson(json['reverse_side'])),
      selfie: DatedFile.fromJson(tdMapFromJson(json['selfie'])),
      translation: List<DatedFile>.from(
        tdListFromJson(json['translation'])
            .map((item) => DatedFile.fromJson(tdMapFromJson(item)))
            .whereType<DatedFile>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
