import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of users and chats that spend most money on paid messages
/// and reactions in a live story
@immutable
final class LiveStoryDonors extends TdObject {
  LiveStoryDonors({required this.totalStarCount, required this.topDonors});

  /// [totalStarCount] Total amount of spend Telegram Stars
  final int totalStarCount;

  /// [topDonors] List of top donors in the live story
  final List<PaidReactor> topDonors;

  static const String constructor = 'liveStoryDonors';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_star_count': totalStarCount,
    'top_donors': topDonors.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static LiveStoryDonors? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LiveStoryDonors(
      totalStarCount: (json['total_star_count'] as int?) ?? 0,
      topDonors: List<PaidReactor>.from(
        tdListFromJson(json['top_donors'])
            .map((item) => PaidReactor.fromJson(tdMapFromJson(item)))
            .whereType<PaidReactor>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
