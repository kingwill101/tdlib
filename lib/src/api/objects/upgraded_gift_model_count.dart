import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a model of an upgraded gift with the number of gifts found
@immutable
final class UpgradedGiftModelCount extends TdObject {
  UpgradedGiftModelCount({this.model, required this.totalCount});

  /// [model] The model
  final UpgradedGiftModel? model;

  /// [totalCount] Total number of gifts with the model
  final int totalCount;

  static const String constructor = 'upgradedGiftModelCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'model': model?.toJson(),
    'total_count': totalCount,
    '@type': constructor,
  };

  static UpgradedGiftModelCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftModelCount(
      model: UpgradedGiftModel.fromJson(tdMapFromJson(json['model'])),
      totalCount: (json['total_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
