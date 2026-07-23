import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a description of the required Telegram Passport element that was
/// requested by a service
@immutable
final class PassportRequiredElement extends TdObject {
  PassportRequiredElement({required this.suitableElements});

  /// [suitableElements] List of Telegram Passport elements any of which is
  /// enough to provide
  final List<PassportSuitableElement> suitableElements;

  static const String constructor = 'passportRequiredElement';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'suitable_elements': suitableElements.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static PassportRequiredElement? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportRequiredElement(
      suitableElements: List<PassportSuitableElement>.from(
        tdListFromJson(json['suitable_elements'])
            .map(
              (item) => PassportSuitableElement.fromJson(tdMapFromJson(item)),
            )
            .whereType<PassportSuitableElement>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
