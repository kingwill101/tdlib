import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a voice note
@immutable
final class VoiceNote extends TdObject {
  VoiceNote({
    required this.duration,
    required this.waveform,
    required this.mimeType,
    this.speechRecognitionResult,
    this.voice,
  });

  /// [duration] Duration of the voice note, in seconds; as defined by the
  /// sender
  final int duration;

  /// [waveform] A waveform representation of the voice note in 5-bit format
  final String waveform;

  /// [mimeType] MIME type of the file; as defined by the sender. Usually, one
  /// of "audio/ogg" for Opus in an OGG container, "audio/mpeg" for an MP3
  /// audio, or "audio/mp4" for an M4A audio
  final String mimeType;

  /// [speechRecognitionResult] Result of speech recognition in the voice note;
  /// may be null
  final SpeechRecognitionResult? speechRecognitionResult;

  /// [voice] File containing the voice note
  final File? voice;

  static const String constructor = 'voiceNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'duration': duration,
    'waveform': waveform,
    'mime_type': mimeType,
    'speech_recognition_result': speechRecognitionResult?.toJson(),
    'voice': voice?.toJson(),
    '@type': constructor,
  };

  static VoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return VoiceNote(
      duration: (json['duration'] as int?) ?? 0,
      waveform: (json['waveform'] as String?) ?? '',
      mimeType: (json['mime_type'] as String?) ?? '',
      speechRecognitionResult: SpeechRecognitionResult.fromJson(
        tdMapFromJson(json['speech_recognition_result']),
      ),
      voice: File.fromJson(tdMapFromJson(json['voice'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
