import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Animated variant of a chat photo in MPEG4 format
@immutable
final class AnimatedChatPhoto extends TdObject {
  AnimatedChatPhoto({
    required this.length,
    this.file,
    required this.mainFrameTimestamp,
  });

  /// [length] Animation width and height
  final int length;

  /// [file] Information about the animation file
  final File? file;

  /// [mainFrameTimestamp] Timestamp of the frame, used as a static chat photo
  final double mainFrameTimestamp;

  static const String constructor = 'animatedChatPhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'length': length,
    'file': file?.toJson(),
    'main_frame_timestamp': mainFrameTimestamp,
    '@type': constructor,
  };

  static AnimatedChatPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AnimatedChatPhoto(
      length: (json['length'] as int?) ?? 0,
      file: File.fromJson(tdMapFromJson(json['file'])),
      mainFrameTimestamp: ((json['main_frame_timestamp'] as num?) ?? 0.0)
          .toDouble(),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
