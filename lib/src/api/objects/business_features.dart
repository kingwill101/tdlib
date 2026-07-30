import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about features, available to Business user accounts
@immutable
final class BusinessFeatures extends TdObject {
  BusinessFeatures({required this.features});

  /// [features] The list of available business features
  final List<BusinessFeature> features;

  static const String constructor = 'businessFeatures';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'features': features.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static BusinessFeatures? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessFeatures(
      features: List<BusinessFeature>.from(
        tdListFromJson(json['features'])
            .map((item) => BusinessFeature.fromJson(tdMapFromJson(item)))
            .whereType<BusinessFeature>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
