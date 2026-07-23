import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes gifts available for resale
@immutable
final class GiftsForResale extends TdObject {
  GiftsForResale({
    required this.totalCount,
    required this.gifts,
    required this.models,
    required this.symbols,
    required this.backdrops,
    required this.nextOffset,
  });

  /// [totalCount] Total number of gifts found
  final int totalCount;

  /// [gifts] The gifts
  final List<GiftForResale> gifts;

  /// [models] Available models; for searchGiftsForResale requests without
  /// offset and attributes only
  final List<UpgradedGiftModelCount> models;

  /// [symbols] Available symbols; for searchGiftsForResale requests without
  /// offset and attributes only
  final List<UpgradedGiftSymbolCount> symbols;

  /// [backdrops] Available backdrops; for searchGiftsForResale requests without
  /// offset and attributes only
  final List<UpgradedGiftBackdropCount> backdrops;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'giftsForResale';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'gifts': gifts.map((item) => item.toJson()).toList(),
    'models': models.map((item) => item.toJson()).toList(),
    'symbols': symbols.map((item) => item.toJson()).toList(),
    'backdrops': backdrops.map((item) => item.toJson()).toList(),
    'next_offset': nextOffset,
    '@type': constructor,
  };

  static GiftsForResale? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftsForResale(
      totalCount: (json['total_count'] as int?) ?? 0,
      gifts: List<GiftForResale>.from(
        tdListFromJson(json['gifts'])
            .map((item) => GiftForResale.fromJson(tdMapFromJson(item)))
            .whereType<GiftForResale>(),
      ),
      models: List<UpgradedGiftModelCount>.from(
        tdListFromJson(json['models'])
            .map((item) => UpgradedGiftModelCount.fromJson(tdMapFromJson(item)))
            .whereType<UpgradedGiftModelCount>(),
      ),
      symbols: List<UpgradedGiftSymbolCount>.from(
        tdListFromJson(json['symbols'])
            .map(
              (item) => UpgradedGiftSymbolCount.fromJson(tdMapFromJson(item)),
            )
            .whereType<UpgradedGiftSymbolCount>(),
      ),
      backdrops: List<UpgradedGiftBackdropCount>.from(
        tdListFromJson(json['backdrops'])
            .map(
              (item) => UpgradedGiftBackdropCount.fromJson(tdMapFromJson(item)),
            )
            .whereType<UpgradedGiftBackdropCount>(),
      ),
      nextOffset: (json['next_offset'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
