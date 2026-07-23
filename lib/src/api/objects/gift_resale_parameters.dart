import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes parameters of a unique gift available for resale
@immutable
final class GiftResaleParameters extends TdObject {
  GiftResaleParameters({
    required this.starCount,
    required this.toncoinCentCount,
    required this.toncoinOnly,
  });

  /// [starCount] Resale price of the gift in Telegram Stars
  final int starCount;

  /// [toncoinCentCount] Resale price of the gift in 1/100 of Toncoin
  final int toncoinCentCount;

  /// [toncoinOnly] True, if the gift can be bought only using Toncoins
  final bool toncoinOnly;

  static const String constructor = 'giftResaleParameters';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'star_count': starCount,
    'toncoin_cent_count': toncoinCentCount,
    'toncoin_only': toncoinOnly,
    '@type': constructor,
  };

  static GiftResaleParameters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftResaleParameters(
      starCount: (json['star_count'] as int?) ?? 0,
      toncoinCentCount: (json['toncoin_cent_count'] as int?) ?? 0,
      toncoinOnly: (json['toncoin_only'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
