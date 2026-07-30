import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a stream to which TDLib internal log is written
@immutable
sealed class LogStream extends TdObject {
  const LogStream();

  static const String constructor = 'logStream';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [LogStreamDefault]
  /// [LogStreamEmpty]
  /// [LogStreamFile]
  static LogStream? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case LogStreamDefault.constructor:
        return LogStreamDefault.fromJson(json);

      case LogStreamEmpty.constructor:
        return LogStreamEmpty.fromJson(json);

      case LogStreamFile.constructor:
        return LogStreamFile.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The log is written to stderr or an OS specific log
@immutable
final class LogStreamDefault extends LogStream {
  const LogStreamDefault();

  static const String constructor = 'logStreamDefault';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static LogStreamDefault? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const LogStreamDefault();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The log is written nowhere
@immutable
final class LogStreamEmpty extends LogStream {
  const LogStreamEmpty();

  static const String constructor = 'logStreamEmpty';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static LogStreamEmpty? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const LogStreamEmpty();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The log is written to a file
@immutable
final class LogStreamFile extends LogStream {
  LogStreamFile({
    required this.path,
    required this.maxFileSize,
    required this.redirectStderr,
  });

  /// [path] Path to the file to where the internal TDLib log will be written
  final String path;

  /// [maxFileSize] The maximum size of the file to where the internal TDLib log
  /// is written before the file will automatically be rotated, in bytes
  final int maxFileSize;

  /// [redirectStderr] Pass true to additionally redirect stderr to the log
  /// file. Ignored on Windows
  final bool redirectStderr;

  static const String constructor = 'logStreamFile';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'path': path,
    'max_file_size': maxFileSize,
    'redirect_stderr': redirectStderr,
    '@type': constructor,
  };

  static LogStreamFile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LogStreamFile(
      path: (json['path'] as String?) ?? '',
      maxFileSize: (json['max_file_size'] as int?) ?? 0,
      redirectStderr: (json['redirect_stderr'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
