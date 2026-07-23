import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about saved Telegram Passport elements
@immutable
final class PassportElements extends TdObject {
  PassportElements({required this.elements});

  /// [elements] Telegram Passport elements
  final List<PassportElement> elements;

  static const String constructor = 'passportElements';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'elements': elements.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static PassportElements? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElements(
      elements: List<PassportElement>.from(
        tdListFromJson(json['elements'])
            .map((item) => PassportElement.fromJson(tdMapFromJson(item)))
            .whereType<PassportElement>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
