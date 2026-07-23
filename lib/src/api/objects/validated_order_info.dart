import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a temporary identifier of validated order information, which is
/// stored for one hour, and the available shipping options
@immutable
final class ValidatedOrderInfo extends TdObject {
  ValidatedOrderInfo({
    required this.orderInfoId,
    required this.shippingOptions,
  });

  /// [orderInfoId] Temporary identifier of the order information
  final String orderInfoId;

  /// [shippingOptions] Available shipping options
  final List<ShippingOption> shippingOptions;

  static const String constructor = 'validatedOrderInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'order_info_id': orderInfoId,
    'shipping_options': shippingOptions.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static ValidatedOrderInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ValidatedOrderInfo(
      orderInfoId: (json['order_info_id'] as String?) ?? '',
      shippingOptions: List<ShippingOption>.from(
        tdListFromJson(json['shipping_options'])
            .map((item) => ShippingOption.fromJson(tdMapFromJson(item)))
            .whereType<ShippingOption>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
