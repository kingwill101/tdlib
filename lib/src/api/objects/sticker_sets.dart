import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of sticker sets
@immutable
final class StickerSets extends TdObject {
  StickerSets({required this.totalCount, required this.sets});

  /// [totalCount] Approximate total number of sticker sets found
  final int totalCount;

  /// [sets] List of sticker sets
  final List<StickerSetInfo> sets;

  static const String constructor = 'stickerSets';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'sets': sets.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static StickerSets? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StickerSets(
      totalCount: (json['total_count'] as int?) ?? 0,
      sets: List<StickerSetInfo>.from(
        tdListFromJson(json['sets'])
            .map((item) => StickerSetInfo.fromJson(tdMapFromJson(item)))
            .whereType<StickerSetInfo>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
