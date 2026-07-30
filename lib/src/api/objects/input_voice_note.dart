import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A video note to be sent
@immutable
final class InputVoiceNote extends TdObject {
  InputVoiceNote({
    this.voiceNote,
    required this.duration,
    required this.waveform,
  });

  /// [voiceNote] Voice note file to be sent. The voice note must be encoded
  /// with the Opus codec and stored inside an OGG container with a single audio
  /// channel, or be in MP3 or M4A format as regular audio
  final InputFile? voiceNote;

  /// [duration] Duration of the voice note, in seconds
  final int duration;

  /// [waveform] Waveform representation of the voice note in 5-bit format
  final String waveform;

  static const String constructor = 'inputVoiceNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'voice_note': voiceNote?.toJson(),
    'duration': duration,
    'waveform': waveform,
    '@type': constructor,
  };

  static InputVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputVoiceNote(
      voiceNote: InputFile.fromJson(tdMapFromJson(json['voice_note'])),
      duration: (json['duration'] as int?) ?? 0,
      waveform: (json['waveform'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
