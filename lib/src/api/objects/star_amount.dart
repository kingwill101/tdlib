import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a possibly non-integer Telegram Star amount
@immutable
final class StarAmount extends TdObject {
  StarAmount({required this.starCount, required this.nanostarCount});

  /// [starCount] The integer Telegram Star amount rounded to 0
  final int starCount;

  /// [nanostarCount] The number of 1/1000000000 shares of Telegram Stars; from
  /// -999999999 to 999999999
  final int nanostarCount;

  static const String constructor = 'starAmount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'star_count': starCount,
    'nanostar_count': nanostarCount,
    '@type': constructor,
  };

  static StarAmount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarAmount(
      starCount: (json['star_count'] as int?) ?? 0,
      nanostarCount: (json['nanostar_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
