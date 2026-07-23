import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of found affiliate programs
@immutable
final class FoundAffiliatePrograms extends TdObject {
  FoundAffiliatePrograms({
    required this.totalCount,
    required this.programs,
    required this.nextOffset,
  });

  /// [totalCount] The total number of found affiliate programs
  final int totalCount;

  /// [programs] The list of affiliate programs
  final List<FoundAffiliateProgram> programs;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'foundAffiliatePrograms';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'programs': programs.map((item) => item.toJson()).toList(),
    'next_offset': nextOffset,
    '@type': constructor,
  };

  static FoundAffiliatePrograms? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FoundAffiliatePrograms(
      totalCount: (json['total_count'] as int?) ?? 0,
      programs: List<FoundAffiliateProgram>.from(
        tdListFromJson(json['programs'])
            .map((item) => FoundAffiliateProgram.fromJson(tdMapFromJson(item)))
            .whereType<FoundAffiliateProgram>(),
      ),
      nextOffset: (json['next_offset'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
