import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about the current localization target
@immutable
final class LocalizationTargetInfo extends TdObject {
  LocalizationTargetInfo({required this.languagePacks});

  /// [languagePacks] List of available language packs for this application
  final List<LanguagePackInfo> languagePacks;

  static const String constructor = 'localizationTargetInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'language_packs': languagePacks.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static LocalizationTargetInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LocalizationTargetInfo(
      languagePacks: List<LanguagePackInfo>.from(
        tdListFromJson(json['language_packs'])
            .map((item) => LanguagePackInfo.fromJson(tdMapFromJson(item)))
            .whereType<LanguagePackInfo>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
