import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of gifts that were acquired by the current user on an
/// auction
@immutable
final class GiftAuctionAcquiredGifts extends TdObject {
  GiftAuctionAcquiredGifts({required this.gifts});

  /// [gifts] The list of acquired gifts
  final List<GiftAuctionAcquiredGift> gifts;

  static const String constructor = 'giftAuctionAcquiredGifts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gifts': gifts.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static GiftAuctionAcquiredGifts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftAuctionAcquiredGifts(
      gifts: List<GiftAuctionAcquiredGift>.from(
        tdListFromJson(json['gifts'])
            .map(
              (item) => GiftAuctionAcquiredGift.fromJson(tdMapFromJson(item)),
            )
            .whereType<GiftAuctionAcquiredGift>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
