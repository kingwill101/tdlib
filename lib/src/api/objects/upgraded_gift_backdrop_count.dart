import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a backdrop of an upgraded gift
@immutable
final class UpgradedGiftBackdropCount extends TdObject {
  UpgradedGiftBackdropCount({this.backdrop, required this.totalCount});

  /// [backdrop] The backdrop
  final UpgradedGiftBackdrop? backdrop;

  /// [totalCount] Total number of gifts with the symbol
  final int totalCount;

  static const String constructor = 'upgradedGiftBackdropCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'backdrop': backdrop?.toJson(),
    'total_count': totalCount,
    '@type': constructor,
  };

  static UpgradedGiftBackdropCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftBackdropCount(
      backdrop: UpgradedGiftBackdrop.fromJson(tdMapFromJson(json['backdrop'])),
      totalCount: (json['total_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
