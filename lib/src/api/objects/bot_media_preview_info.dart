import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of media previews of a bot for the given language and the
/// list of languages for which the bot has dedicated previews
@immutable
final class BotMediaPreviewInfo extends TdObject {
  BotMediaPreviewInfo({required this.previews, required this.languageCodes});

  /// [previews] List of media previews
  final List<BotMediaPreview> previews;

  /// [languageCodes] List of language codes for which the bot has dedicated
  /// previews
  final List<String> languageCodes;

  static const String constructor = 'botMediaPreviewInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'previews': previews.map((item) => item.toJson()).toList(),
    'language_codes': languageCodes.map((item) => item).toList(),
    '@type': constructor,
  };

  static BotMediaPreviewInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotMediaPreviewInfo(
      previews: List<BotMediaPreview>.from(
        tdListFromJson(json['previews'])
            .map((item) => BotMediaPreview.fromJson(tdMapFromJson(item)))
            .whereType<BotMediaPreview>(),
      ),
      languageCodes: List<String>.from(
        tdListFromJson(
          json['language_codes'],
        ).map((item) => (item as dynamic)?.toString() ?? ''),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
