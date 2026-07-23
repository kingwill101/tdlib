import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of language pack strings
@immutable
final class LanguagePackStrings extends TdObject {
  LanguagePackStrings({required this.strings});

  /// [strings] A list of language pack strings
  final List<LanguagePackString> strings;

  static const String constructor = 'languagePackStrings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'strings': strings.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static LanguagePackStrings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LanguagePackStrings(
      strings: List<LanguagePackString>.from(
        tdListFromJson(json['strings'])
            .map((item) => LanguagePackString.fromJson(tdMapFromJson(item)))
            .whereType<LanguagePackString>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
