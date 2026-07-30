import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of affiliate programs that were connected to an
/// affiliate
@immutable
final class ConnectedAffiliatePrograms extends TdObject {
  ConnectedAffiliatePrograms({
    required this.totalCount,
    required this.programs,
    required this.nextOffset,
  });

  /// [totalCount] The total number of affiliate programs that were connected to
  /// the affiliate
  final int totalCount;

  /// [programs] The list of connected affiliate programs
  final List<ConnectedAffiliateProgram> programs;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'connectedAffiliatePrograms';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'programs': programs.map((item) => item.toJson()).toList(),
    'next_offset': nextOffset,
    '@type': constructor,
  };

  static ConnectedAffiliatePrograms? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ConnectedAffiliatePrograms(
      totalCount: (json['total_count'] as int?) ?? 0,
      programs: List<ConnectedAffiliateProgram>.from(
        tdListFromJson(json['programs'])
            .map(
              (item) => ConnectedAffiliateProgram.fromJson(tdMapFromJson(item)),
            )
            .whereType<ConnectedAffiliateProgram>(),
      ),
      nextOffset: (json['next_offset'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
