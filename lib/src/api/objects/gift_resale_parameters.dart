import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes parameters of a unique gift available for resale
@immutable
final class GiftResaleParameters extends TdObject {
  GiftResaleParameters({
    required this.starCount,
    required this.gramCentCount,
    required this.gramOnly,
  });

  /// [starCount] Resale price of the gift in Telegram Stars
  final int starCount;

  /// [gramCentCount] Resale price of the gift in 1/100 of TON Gram
  final int gramCentCount;

  /// [gramOnly] True, if the gift can be bought only using Grams
  final bool gramOnly;

  static const String constructor = 'giftResaleParameters';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'star_count': starCount,
    'gram_cent_count': gramCentCount,
    'gram_only': gramOnly,
    '@type': constructor,
  };

  static GiftResaleParameters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftResaleParameters(
      starCount: (json['star_count'] as int?) ?? 0,
      gramCentCount: (json['gram_cent_count'] as int?) ?? 0,
      gramOnly: (json['gram_only'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
