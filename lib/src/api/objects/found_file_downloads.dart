import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of downloaded files, found by a search
@immutable
final class FoundFileDownloads extends TdObject {
  FoundFileDownloads({
    this.totalCounts,
    required this.files,
    required this.nextOffset,
  });

  /// [totalCounts] Total number of suitable files, ignoring offset
  final DownloadedFileCounts? totalCounts;

  /// [files] The list of files
  final List<FileDownload> files;

  /// [nextOffset] The offset for the next request. If empty, then there are no
  /// more results
  final String nextOffset;

  static const String constructor = 'foundFileDownloads';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_counts': totalCounts?.toJson(),
    'files': files.map((item) => item.toJson()).toList(),
    'next_offset': nextOffset,
    '@type': constructor,
  };

  static FoundFileDownloads? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FoundFileDownloads(
      totalCounts: DownloadedFileCounts.fromJson(
        tdMapFromJson(json['total_counts']),
      ),
      files: List<FileDownload>.from(
        tdListFromJson(json['files'])
            .map((item) => FileDownload.fromJson(tdMapFromJson(item)))
            .whereType<FileDownload>(),
      ),
      nextOffset: (json['next_offset'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
