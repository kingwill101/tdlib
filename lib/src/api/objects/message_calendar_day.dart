import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about found messages sent on a specific day
@immutable
final class MessageCalendarDay extends TdObject {
  MessageCalendarDay({required this.totalCount, this.message});

  /// [totalCount] Total number of found messages sent on the day
  final int totalCount;

  /// [message] First message sent on the day
  final Message? message;

  static const String constructor = 'messageCalendarDay';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'message': message?.toJson(),
    '@type': constructor,
  };

  static MessageCalendarDay? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageCalendarDay(
      totalCount: (json['total_count'] as int?) ?? 0,
      message: Message.fromJson(tdMapFromJson(json['message'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
