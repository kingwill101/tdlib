import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the type of poll
@immutable
sealed class PollType extends TdObject {
  const PollType();

  static const String constructor = 'pollType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [PollTypeQuiz]
  /// [PollTypeRegular]
  static PollType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PollTypeQuiz.constructor:
        return PollTypeQuiz.fromJson(json);

      case PollTypeRegular.constructor:
        return PollTypeRegular.fromJson(json);

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
final class PollTypeQuiz extends PollType {
  PollTypeQuiz({
    required this.correctOptionIds,
    this.explanation,
    this.explanationMedia,
  });

  /// [correctOptionIds] Increasing list of 0-based identifiers of the correct
  /// answer options; empty for a yet unanswered poll
  final List<int> correctOptionIds;

  /// [explanation] Text that is shown when the user chooses an incorrect answer
  /// or taps on the lamp icon; empty for a yet unanswered poll
  final FormattedText? explanation;

  /// [explanationMedia] Media that is shown when the user chooses an incorrect
  /// answer or taps on the lamp icon; may be null if none or the poll is
  /// unanswered yet. If present, currently, can be only of the types
  /// pollMediaAnimation, pollMediaAudio, pollMediaDocument, pollMediaLocation,
  /// pollMediaPhoto, pollMediaVenue, or pollMediaVideo
  final PollMedia? explanationMedia;

  static const String constructor = 'pollTypeQuiz';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'correct_option_ids': correctOptionIds.map((item) => item).toList(),
    'explanation': explanation?.toJson(),
    'explanation_media': explanationMedia?.toJson(),
    '@type': constructor,
  };

  static PollTypeQuiz? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollTypeQuiz(
      correctOptionIds: List<int>.from(
        tdListFromJson(
          json['correct_option_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      explanation: FormattedText.fromJson(tdMapFromJson(json['explanation'])),
      explanationMedia: PollMedia.fromJson(
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
final class PollTypeRegular extends PollType {
  const PollTypeRegular();

  static const String constructor = 'pollTypeRegular';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PollTypeRegular? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PollTypeRegular();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
