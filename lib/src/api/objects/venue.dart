import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a venue
@immutable
final class Venue extends TdObject {
  Venue({
    this.location,
    required this.title,
    required this.address,
    required this.provider,
    required this.id,
    required this.type,
  });

  /// [location] Venue location; as defined by the sender
  final Location? location;

  /// [title] Venue name; as defined by the sender
  final String title;

  /// [address] Venue address; as defined by the sender
  final String address;

  /// [provider] Provider of the venue database; as defined by the sender.
  /// Currently, only "foursquare" and "gplaces" (Google Places) need to be
  /// supported
  final String provider;

  /// [id] Identifier of the venue in the provider database; as defined by the
  /// sender
  final String id;

  /// [type] Type of the venue in the provider database; as defined by the
  /// sender
  final String type;

  static const String constructor = 'venue';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'location': location?.toJson(),
    'title': title,
    'address': address,
    'provider': provider,
    'id': id,
    'type': type,
    '@type': constructor,
  };

  static Venue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Venue(
      location: Location.fromJson(tdMapFromJson(json['location'])),
      title: (json['title'] as String?) ?? '',
      address: (json['address'] as String?) ?? '',
      provider: (json['provider'] as String?) ?? '',
      id: (json['id'] as String?) ?? '',
      type: (json['type'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
