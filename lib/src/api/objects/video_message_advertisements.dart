import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of advertisements to be shown while a video from a message
/// is watched
@immutable
final class VideoMessageAdvertisements extends TdObject {
  VideoMessageAdvertisements({
    required this.advertisements,
    required this.startDelay,
    required this.betweenDelay,
  });

  /// [advertisements] List of advertisements
  final List<VideoMessageAdvertisement> advertisements;

  /// [startDelay] Delay before the first advertisement is shown, in seconds
  final int startDelay;

  /// [betweenDelay] Delay between consecutive advertisements, in seconds
  final int betweenDelay;

  static const String constructor = 'videoMessageAdvertisements';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'advertisements': advertisements.map((item) => item.toJson()).toList(),
    'start_delay': startDelay,
    'between_delay': betweenDelay,
    '@type': constructor,
  };

  static VideoMessageAdvertisements? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return VideoMessageAdvertisements(
      advertisements: List<VideoMessageAdvertisement>.from(
        tdListFromJson(json['advertisements'])
            .map(
              (item) => VideoMessageAdvertisement.fromJson(tdMapFromJson(item)),
            )
            .whereType<VideoMessageAdvertisement>(),
      ),
      startDelay: (json['start_delay'] as int?) ?? 0,
      betweenDelay: (json['between_delay'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
