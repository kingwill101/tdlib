import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains 0-based positions of matched objects
@immutable
final class FoundPositions extends TdObject {
  FoundPositions({required this.totalCount, required this.positions});

  /// [totalCount] Total number of matched objects
  final int totalCount;

  /// [positions] The positions of the matched objects
  final List<int> positions;

  static const String constructor = 'foundPositions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'positions': positions.map((item) => item).toList(),
    '@type': constructor,
  };

  static FoundPositions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FoundPositions(
      totalCount: (json['total_count'] as int?) ?? 0,
      positions: List<int>.from(
        tdListFromJson(
          json['positions'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
