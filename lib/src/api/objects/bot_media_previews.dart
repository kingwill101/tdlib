import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of media previews of a bot
@immutable
final class BotMediaPreviews extends TdObject {
  BotMediaPreviews({required this.previews});

  /// [previews] List of media previews
  final List<BotMediaPreview> previews;

  static const String constructor = 'botMediaPreviews';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'previews': previews.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static BotMediaPreviews? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotMediaPreviews(
      previews: List<BotMediaPreview>.from(
        tdListFromJson(json['previews'])
            .map((item) => BotMediaPreview.fromJson(tdMapFromJson(item)))
            .whereType<BotMediaPreview>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
