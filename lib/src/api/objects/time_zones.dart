import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of time zones
@immutable
final class TimeZones extends TdObject {
  TimeZones({required this.timeZones});

  /// [timeZones] A list of time zones
  final List<TimeZone> timeZones;

  static const String constructor = 'timeZones';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'time_zones': timeZones.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static TimeZones? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TimeZones(
      timeZones: List<TimeZone>.from(
        tdListFromJson(json['time_zones'])
            .map((item) => TimeZone.fromJson(tdMapFromJson(item)))
            .whereType<TimeZone>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
