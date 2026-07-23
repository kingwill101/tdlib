import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a notification sound in MP3 format
@immutable
final class NotificationSound extends TdObject {
  NotificationSound({
    required this.id,
    required this.duration,
    required this.date,
    required this.title,
    required this.data,
    this.sound,
  });

  /// [id] Unique identifier of the notification sound
  final int id;

  /// [duration] Duration of the sound, in seconds
  final int duration;

  /// [date] Point in time (Unix timestamp) when the sound was created
  final int date;

  /// [title] Title of the notification sound
  final String title;

  /// [data] Arbitrary data, defined while the sound was uploaded
  final String data;

  /// [sound] File containing the sound
  final File? sound;

  static const String constructor = 'notificationSound';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id.toString(),
    'duration': duration,
    'date': date,
    'title': title,
    'data': data,
    'sound': sound?.toJson(),
    '@type': constructor,
  };

  static NotificationSound? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NotificationSound(
      id: int.tryParse((json['id'] as dynamic)?.toString() ?? '') ?? 0,
      duration: (json['duration'] as int?) ?? 0,
      date: (json['date'] as int?) ?? 0,
      title: (json['title'] as String?) ?? '',
      data: (json['data'] as String?) ?? '',
      sound: File.fromJson(tdMapFromJson(json['sound'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
