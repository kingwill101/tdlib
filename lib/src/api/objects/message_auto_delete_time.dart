import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains default auto-delete timer setting for new chats
@immutable
final class MessageAutoDeleteTime extends TdObject {
  MessageAutoDeleteTime({required this.time});

  /// [time] Message auto-delete time, in seconds. If 0, then messages aren't
  /// deleted automatically
  final int time;

  static const String constructor = 'messageAutoDeleteTime';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'time': time,
    '@type': constructor,
  };

  static MessageAutoDeleteTime? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageAutoDeleteTime(time: (json['time'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
