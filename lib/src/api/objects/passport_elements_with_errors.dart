import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a Telegram Passport elements and corresponding
/// errors
@immutable
final class PassportElementsWithErrors extends TdObject {
  PassportElementsWithErrors({required this.elements, required this.errors});

  /// [elements] Telegram Passport elements
  final List<PassportElement> elements;

  /// [errors] Errors in the elements that are already available
  final List<PassportElementError> errors;

  static const String constructor = 'passportElementsWithErrors';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'elements': elements.map((item) => item.toJson()).toList(),
    'errors': errors.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static PassportElementsWithErrors? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementsWithErrors(
      elements: List<PassportElement>.from(
        tdListFromJson(json['elements'])
            .map((item) => PassportElement.fromJson(tdMapFromJson(item)))
            .whereType<PassportElement>(),
      ),
      errors: List<PassportElementError>.from(
        tdListFromJson(json['errors'])
            .map((item) => PassportElementError.fromJson(tdMapFromJson(item)))
            .whereType<PassportElementError>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
