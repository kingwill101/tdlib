import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Adds an audio file to the beginning of the profile audio files of the
/// current user
/// Returns [Ok]
@immutable
final class AddProfileAudio extends TdFunction {
  AddProfileAudio({
    this.audio,
    required this.duration,
    required this.title,
    required this.performer,
  });

  /// [audio] The audio file to be added
  final InputFile? audio;

  /// [duration] Duration of the audio, in seconds; may be replaced by the
  /// server; ignored for already uploaded files
  final int duration;

  /// [title] Title of the audio; 0-64 characters; may be replaced by the
  /// server; ignored for already uploaded files
  final String title;

  /// [performer] Performer of the audio; 0-64 characters, may be replaced by
  /// the server; ignored for already uploaded files
  final String performer;

  static const String constructor = 'addProfileAudio';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'audio': audio?.toJson(),
    'duration': duration,
    'title': title,
    'performer': performer,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
