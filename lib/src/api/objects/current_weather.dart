import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the current weather
@immutable
final class CurrentWeather extends TdObject {
  CurrentWeather({required this.temperature, required this.emoji});

  /// [temperature] Temperature, in degree Celsius
  final double temperature;

  /// [emoji] Emoji representing the weather
  final String emoji;

  static const String constructor = 'currentWeather';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'temperature': temperature,
    'emoji': emoji,
    '@type': constructor,
  };

  static CurrentWeather? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CurrentWeather(
      temperature: ((json['temperature'] as num?) ?? 0.0).toDouble(),
      emoji: (json['emoji'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
