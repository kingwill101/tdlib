import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A live location
@immutable
final class LiveLocation extends TdObject {
  LiveLocation({
    this.location,
    required this.livePeriod,
    required this.heading,
    required this.proximityAlertRadius,
  });

  /// [location] The current location
  final Location? location;

  /// [livePeriod] Time relative to the message send date, for which the
  /// location can be updated, in seconds; if 0x7FFFFFFF, then location can be
  /// updated forever
  final int livePeriod;

  /// [heading] The direction in which the location moves, in degrees; 1-360; 0
  /// if unknown
  final int heading;

  /// [proximityAlertRadius] The maximum distance to another chat member for
  /// proximity alerts, in meters (0-100000). 0 if the notification is disabled.
  /// Can't be enabled in direct messages chats, channels and Saved Messages.
  /// Available only to the message sender
  final int proximityAlertRadius;

  static const String constructor = 'liveLocation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'location': location?.toJson(),
    'live_period': livePeriod,
    'heading': heading,
    'proximity_alert_radius': proximityAlertRadius,
    '@type': constructor,
  };

  static LiveLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LiveLocation(
      location: Location.fromJson(tdMapFromJson(json['location'])),
      livePeriod: (json['live_period'] as int?) ?? 0,
      heading: (json['heading'] as int?) ?? 0,
      proximityAlertRadius: (json['proximity_alert_radius'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
