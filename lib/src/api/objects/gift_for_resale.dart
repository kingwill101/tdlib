import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a gift available for resale
@immutable
final class GiftForResale extends TdObject {
  GiftForResale({this.gift, required this.receivedGiftId});

  /// [gift] The gift
  final UpgradedGift? gift;

  /// [receivedGiftId] Unique identifier of the received gift for the current
  /// user; only for the gifts owned by the current user
  final String receivedGiftId;

  static const String constructor = 'giftForResale';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift': gift?.toJson(),
    'received_gift_id': receivedGiftId,
    '@type': constructor,
  };

  static GiftForResale? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftForResale(
      gift: UpgradedGift.fromJson(tdMapFromJson(json['gift'])),
      receivedGiftId: (json['received_gift_id'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
