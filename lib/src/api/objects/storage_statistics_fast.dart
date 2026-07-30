import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains approximate storage usage statistics, excluding files of unknown
/// file type
@immutable
final class StorageStatisticsFast extends TdObject {
  StorageStatisticsFast({
    required this.filesSize,
    required this.fileCount,
    required this.databaseSize,
    required this.languagePackDatabaseSize,
    required this.logSize,
  });

  /// [filesSize] Approximate total size of files, in bytes
  final int filesSize;

  /// [fileCount] Approximate number of files
  final int fileCount;

  /// [databaseSize] Size of the database
  final int databaseSize;

  /// [languagePackDatabaseSize] Size of the language pack database
  final int languagePackDatabaseSize;

  /// [logSize] Size of the TDLib internal log
  final int logSize;

  static const String constructor = 'storageStatisticsFast';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'files_size': filesSize,
    'file_count': fileCount,
    'database_size': databaseSize,
    'language_pack_database_size': languagePackDatabaseSize,
    'log_size': logSize,
    '@type': constructor,
  };

  static StorageStatisticsFast? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StorageStatisticsFast(
      filesSize: (json['files_size'] as int?) ?? 0,
      fileCount: (json['file_count'] as int?) ?? 0,
      databaseSize: (json['database_size'] as int?) ?? 0,
      languagePackDatabaseSize:
          (json['language_pack_database_size'] as int?) ?? 0,
      logSize: (json['log_size'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
