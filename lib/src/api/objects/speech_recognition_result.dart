import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes result of speech recognition in a voice note
@immutable
sealed class SpeechRecognitionResult extends TdObject {
  const SpeechRecognitionResult();

  static const String constructor = 'speechRecognitionResult';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [SpeechRecognitionResultError]
  /// [SpeechRecognitionResultPending]
  /// [SpeechRecognitionResultText]
  static SpeechRecognitionResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SpeechRecognitionResultError.constructor:
        return SpeechRecognitionResultError.fromJson(json);

      case SpeechRecognitionResultPending.constructor:
        return SpeechRecognitionResultPending.fromJson(json);

      case SpeechRecognitionResultText.constructor:
        return SpeechRecognitionResultText.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The speech recognition failed
@immutable
final class SpeechRecognitionResultError extends SpeechRecognitionResult {
  SpeechRecognitionResultError({this.error});

  /// [error] Recognition error. An error with a message "MSG_VOICE_TOO_LONG" is
  /// returned when media duration is too big to be recognized
  final TdError? error;

  static const String constructor = 'speechRecognitionResultError';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'error': error?.toJson(),
    '@type': constructor,
  };

  static SpeechRecognitionResultError? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SpeechRecognitionResultError(
      error: TdError.fromJson(tdMapFromJson(json['error'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The speech recognition is ongoing
@immutable
final class SpeechRecognitionResultPending extends SpeechRecognitionResult {
  SpeechRecognitionResultPending({required this.partialText});

  /// [partialText] Partially recognized text
  final String partialText;

  static const String constructor = 'speechRecognitionResultPending';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'partial_text': partialText,
    '@type': constructor,
  };

  static SpeechRecognitionResultPending? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SpeechRecognitionResultPending(
      partialText: (json['partial_text'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The speech recognition successfully finished
@immutable
final class SpeechRecognitionResultText extends SpeechRecognitionResult {
  SpeechRecognitionResultText({required this.text});

  /// [text] Recognized text
  final String text;

  static const String constructor = 'speechRecognitionResultText';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text,
    '@type': constructor,
  };

  static SpeechRecognitionResultText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SpeechRecognitionResultText(text: (json['text'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
