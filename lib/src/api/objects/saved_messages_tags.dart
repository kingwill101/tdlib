import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of tags used in Saved Messages
@immutable
final class SavedMessagesTags extends TdObject {
  SavedMessagesTags({required this.tags});

  /// [tags] List of tags
  final List<SavedMessagesTag> tags;

  static const String constructor = 'savedMessagesTags';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'tags': tags.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static SavedMessagesTags? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SavedMessagesTags(
      tags: List<SavedMessagesTag>.from(
        tdListFromJson(json['tags'])
            .map((item) => SavedMessagesTag.fromJson(tdMapFromJson(item)))
            .whereType<SavedMessagesTag>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
