import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a media to be used in a sent rich message
@immutable
final class InputRichMessageMedia extends TdObject {
  InputRichMessageMedia({required this.id, this.media});

  /// [id] Unique identifier of the media; 1-64 base64url characters
  final String id;

  /// [media] The media to send. Must be one of the following types:
  /// inputMessageAnimation, inputMessageAudio, inputMessagePhoto,
  /// inputMessageVideo, or inputMessageVoiceNote
  final InputMessageContent? media;

  static const String constructor = 'inputRichMessageMedia';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'media': media?.toJson(),
    '@type': constructor,
  };

  static InputRichMessageMedia? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputRichMessageMedia(
      id: (json['id'] as String?) ?? '',
      media: InputMessageContent.fromJson(tdMapFromJson(json['media'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
