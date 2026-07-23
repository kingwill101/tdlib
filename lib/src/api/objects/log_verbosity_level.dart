import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a TDLib internal log verbosity level
@immutable
final class LogVerbosityLevel extends TdObject {
  LogVerbosityLevel({required this.verbosityLevel});

  /// [verbosityLevel] Log verbosity level
  final int verbosityLevel;

  static const String constructor = 'logVerbosityLevel';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'verbosity_level': verbosityLevel,
    '@type': constructor,
  };

  static LogVerbosityLevel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LogVerbosityLevel(
      verbosityLevel: (json['verbosity_level'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
