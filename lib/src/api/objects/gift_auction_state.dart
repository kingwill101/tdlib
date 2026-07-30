import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represent auction state of a gift
@immutable
final class GiftAuctionState extends TdObject {
  GiftAuctionState({this.gift, this.state});

  /// [gift] The gift
  final Gift? gift;

  /// [state] Auction state of the gift
  final AuctionState? state;

  static const String constructor = 'giftAuctionState';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift': gift?.toJson(),
    'state': state?.toJson(),
    '@type': constructor,
  };

  static GiftAuctionState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftAuctionState(
      gift: Gift.fromJson(tdMapFromJson(json['gift'])),
      state: AuctionState.fromJson(tdMapFromJson(json['state'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
