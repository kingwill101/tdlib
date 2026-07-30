import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a location of a business
@immutable
final class BusinessLocation extends TdObject {
  BusinessLocation({this.location, required this.address});

  /// [location] The location; may be null if not specified
  final Location? location;

  /// [address] Location address; 1-96 characters
  final String address;

  static const String constructor = 'businessLocation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'location': location?.toJson(),
    'address': address,
    '@type': constructor,
  };

  static BusinessLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessLocation(
      location: Location.fromJson(tdMapFromJson(json['location'])),
      address: (json['address'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
