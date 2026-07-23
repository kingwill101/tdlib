import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of audio files
@immutable
final class Audios extends TdObject {
  Audios({required this.totalCount, required this.audios});

  /// [totalCount] Approximate total number of audio files found
  final int totalCount;

  /// [audios] List of audio files
  final List<Audio> audios;

  static const String constructor = 'audios';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'audios': audios.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static Audios? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Audios(
      totalCount: (json['total_count'] as int?) ?? 0,
      audios: List<Audio>.from(
        tdListFromJson(
          json['audios'],
        ).map((item) => Audio.fromJson(tdMapFromJson(item))).whereType<Audio>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
