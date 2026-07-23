import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about found messages, split by days according to the
/// option "utc_time_offset"
@immutable
final class MessageCalendar extends TdObject {
  MessageCalendar({required this.totalCount, required this.days});

  /// [totalCount] Total number of found messages
  final int totalCount;

  /// [days] Information about messages sent
  final List<MessageCalendarDay> days;

  static const String constructor = 'messageCalendar';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'days': days.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static MessageCalendar? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageCalendar(
      totalCount: (json['total_count'] as int?) ?? 0,
      days: List<MessageCalendarDay>.from(
        tdListFromJson(json['days'])
            .map((item) => MessageCalendarDay.fromJson(tdMapFromJson(item)))
            .whereType<MessageCalendarDay>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
