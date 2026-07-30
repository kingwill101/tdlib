import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains auto-download settings presets for the current user
@immutable
final class AutoDownloadSettingsPresets extends TdObject {
  AutoDownloadSettingsPresets({this.low, this.medium, this.high});

  /// [low] Preset with lowest settings; expected to be used by default when
  /// roaming
  final AutoDownloadSettings? low;

  /// [medium] Preset with medium settings; expected to be used by default when
  /// using mobile data
  final AutoDownloadSettings? medium;

  /// [high] Preset with highest settings; expected to be used by default when
  /// connected on Wi-Fi
  final AutoDownloadSettings? high;

  static const String constructor = 'autoDownloadSettingsPresets';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'low': low?.toJson(),
    'medium': medium?.toJson(),
    'high': high?.toJson(),
    '@type': constructor,
  };

  static AutoDownloadSettingsPresets? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AutoDownloadSettingsPresets(
      low: AutoDownloadSettings.fromJson(tdMapFromJson(json['low'])),
      medium: AutoDownloadSettings.fromJson(tdMapFromJson(json['medium'])),
      high: AutoDownloadSettings.fromJson(tdMapFromJson(json['high'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
