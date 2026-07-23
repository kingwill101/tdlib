import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes one answer option of a poll to be created
@immutable
final class InputPollOption extends TdObject {
  InputPollOption({this.text, this.media});

  /// [text] Option text; 1-100 characters. Only custom emoji entities are
  /// allowed to be added and only by Premium users
  final FormattedText? text;

  /// [media] Option media; pass null if none; ignored in addPollOption. Must be
  /// one of the following types: inputMessageAnimation, non-live
  /// inputMessageLocation, inputMessagePhoto, inputMessageSticker,
  /// inputMessageVenue, or inputMessageVideo without caption
  final InputMessageContent? media;

  static const String constructor = 'inputPollOption';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'media': media?.toJson(),
    '@type': constructor,
  };

  static InputPollOption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPollOption(
      text: FormattedText.fromJson(tdMapFromJson(json['text'])),
      media: InputMessageContent.fromJson(tdMapFromJson(json['media'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
