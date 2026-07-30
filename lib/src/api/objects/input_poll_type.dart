import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the type of poll to send
@immutable
sealed class InputPollType extends TdObject {
  const InputPollType();

  static const String constructor = 'inputPollType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [InputPollTypeQuiz]
  /// [InputPollTypeRegular]
  static InputPollType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputPollTypeQuiz.constructor:
        return InputPollTypeQuiz.fromJson(json);

      case InputPollTypeRegular.constructor:
        return InputPollTypeRegular.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A poll in quiz mode, which has predefined correct answers
@immutable
final class InputPollTypeQuiz extends InputPollType {
  InputPollTypeQuiz({
    required this.correctOptionIds,
    this.explanation,
    this.explanationMedia,
  });

  /// [correctOptionIds] Increasing list of 0-based identifiers of the correct
  /// answer options; must be non-empty
  final List<int> correctOptionIds;

  /// [explanation] Text that is shown when the user chooses an incorrect answer
  /// or taps on the lamp icon; 0-200 characters with at most 2 line feeds
  final FormattedText? explanation;

  /// [explanationMedia] Media that is shown when the user chooses an incorrect
  /// answer or taps on the lamp icon; pass null if none. Must be one of the
  /// following types: inputPollMediaAnimation, inputPollMediaAudio,
  /// inputPollMediaDocument, inputPollMediaLocation, inputPollMediaPhoto,
  /// inputPollMediaVenue, or inputPollMediaVideo without caption
  final InputPollMedia? explanationMedia;

  static const String constructor = 'inputPollTypeQuiz';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'correct_option_ids': correctOptionIds.map((item) => item).toList(),
    'explanation': explanation?.toJson(),
    'explanation_media': explanationMedia?.toJson(),
    '@type': constructor,
  };

  static InputPollTypeQuiz? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPollTypeQuiz(
      correctOptionIds: List<int>.from(
        tdListFromJson(
          json['correct_option_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      explanation: FormattedText.fromJson(tdMapFromJson(json['explanation'])),
      explanationMedia: InputPollMedia.fromJson(
        tdMapFromJson(json['explanation_media']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A regular poll
@immutable
final class InputPollTypeRegular extends InputPollType {
  InputPollTypeRegular({required this.allowAddingOptions});

  /// [allowAddingOptions] True, if answer options can be added to the poll
  /// after creation; not supported in channel chats and for anonymous polls
  final bool allowAddingOptions;

  static const String constructor = 'inputPollTypeRegular';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'allow_adding_options': allowAddingOptions,
    '@type': constructor,
  };

  static InputPollTypeRegular? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPollTypeRegular(
      allowAddingOptions: (json['allow_adding_options'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
