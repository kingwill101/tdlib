import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of gifts received by a user or a chat
@immutable
final class ReceivedGifts extends TdObject {
  ReceivedGifts({
    required this.totalCount,
    required this.gifts,
    required this.areNotificationsEnabled,
    required this.nextOffset,
  });

  /// [totalCount] The total number of received gifts
  final int totalCount;

  /// [gifts] The list of gifts
  final List<ReceivedGift> gifts;

  /// [areNotificationsEnabled] True, if notifications about new gifts of the
  /// owner are enabled
  final bool areNotificationsEnabled;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'receivedGifts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'gifts': gifts.map((item) => item.toJson()).toList(),
    'are_notifications_enabled': areNotificationsEnabled,
    'next_offset': nextOffset,
    '@type': constructor,
  };

  static ReceivedGifts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReceivedGifts(
      totalCount: (json['total_count'] as int?) ?? 0,
      gifts: List<ReceivedGift>.from(
        tdListFromJson(json['gifts'])
            .map((item) => ReceivedGift.fromJson(tdMapFromJson(item)))
            .whereType<ReceivedGift>(),
      ),
      areNotificationsEnabled:
          (json['are_notifications_enabled'] as bool?) ?? false,
      nextOffset: (json['next_offset'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
