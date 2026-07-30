import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// One shipping option
@immutable
final class ShippingOption extends TdObject {
  ShippingOption({
    required this.id,
    required this.title,
    required this.priceParts,
  });

  /// [id] Shipping option identifier
  final String id;

  /// [title] Option title
  final String title;

  /// [priceParts] A list of objects used to calculate the total shipping costs
  final List<LabeledPricePart> priceParts;

  static const String constructor = 'shippingOption';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'title': title,
    'price_parts': priceParts.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static ShippingOption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ShippingOption(
      id: (json['id'] as String?) ?? '',
      title: (json['title'] as String?) ?? '',
      priceParts: List<LabeledPricePart>.from(
        tdListFromJson(json['price_parts'])
            .map((item) => LabeledPricePart.fromJson(tdMapFromJson(item)))
            .whereType<LabeledPricePart>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
