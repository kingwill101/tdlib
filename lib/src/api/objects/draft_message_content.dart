import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Content of the message draft
@immutable
sealed class DraftMessageContent extends TdObject {
  const DraftMessageContent();

  static const String constructor = 'draftMessageContent';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [DraftMessageContentRichMessage]
  /// [DraftMessageContentText]
  /// [DraftMessageContentVideoNote]
  /// [DraftMessageContentVoiceNote]
  static DraftMessageContent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case DraftMessageContentRichMessage.constructor:
        return DraftMessageContentRichMessage.fromJson(json);

      case DraftMessageContentText.constructor:
        return DraftMessageContentText.fromJson(json);

      case DraftMessageContentVideoNote.constructor:
        return DraftMessageContentVideoNote.fromJson(json);

      case DraftMessageContentVoiceNote.constructor:
        return DraftMessageContentVoiceNote.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A rich message draft; not supported in setChatDraftMessage
@immutable
final class DraftMessageContentRichMessage extends DraftMessageContent {
  DraftMessageContentRichMessage({this.message});

  /// [message] The rich message; the message must not have not yet uploaded
  /// media
  final RichMessage? message;

  static const String constructor = 'draftMessageContentRichMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'message': message?.toJson(),
    '@type': constructor,
  };

  static DraftMessageContentRichMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DraftMessageContentRichMessage(
      message: RichMessage.fromJson(tdMapFromJson(json['message'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A text message draft
@immutable
final class DraftMessageContentText extends DraftMessageContent {
  DraftMessageContentText({this.text, this.linkPreviewOptions});

  /// [text] Formatted text to be saved as a draft;
  /// 0-getOption("message_text_length_max") characters
  final FormattedText? text;

  /// [linkPreviewOptions] Options to be used for generation of a link preview;
  /// may be null if none; pass null to use default link preview options
  final LinkPreviewOptions? linkPreviewOptions;

  static const String constructor = 'draftMessageContentText';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'link_preview_options': linkPreviewOptions?.toJson(),
    '@type': constructor,
  };

  static DraftMessageContentText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DraftMessageContentText(
      text: FormattedText.fromJson(tdMapFromJson(json['text'])),
      linkPreviewOptions: LinkPreviewOptions.fromJson(
        tdMapFromJson(json['link_preview_options']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A video note message draft
@immutable
final class DraftMessageContentVideoNote extends DraftMessageContent {
  DraftMessageContentVideoNote({
    required this.filePath,
    required this.duration,
    required this.length,
    this.selfDestructType,
  });

  /// [filePath] Path to the file with the video note
  final String filePath;

  /// [duration] Duration of the video, in seconds; 0-60
  final int duration;

  /// [length] Video width and height; must be positive and not greater than 640
  final int length;

  /// [selfDestructType] Video note self-destruct type; may be null if none;
  /// pass null if none; private chats only
  final MessageSelfDestructType? selfDestructType;

  static const String constructor = 'draftMessageContentVideoNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'file_path': filePath,
    'duration': duration,
    'length': length,
    'self_destruct_type': selfDestructType?.toJson(),
    '@type': constructor,
  };

  static DraftMessageContentVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DraftMessageContentVideoNote(
      filePath: (json['file_path'] as String?) ?? '',
      duration: (json['duration'] as int?) ?? 0,
      length: (json['length'] as int?) ?? 0,
      selfDestructType: MessageSelfDestructType.fromJson(
        tdMapFromJson(json['self_destruct_type']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A voice note message draft
@immutable
final class DraftMessageContentVoiceNote extends DraftMessageContent {
  DraftMessageContentVoiceNote({
    required this.filePath,
    required this.duration,
    required this.waveform,
    this.selfDestructType,
  });

  /// [filePath] Path to the file with the voice note
  final String filePath;

  /// [duration] Duration of the voice note, in seconds
  final int duration;

  /// [waveform] Waveform representation of the voice note in 5-bit format
  final String waveform;

  /// [selfDestructType] Voice note self-destruct type; may be null if none;
  /// pass null if none; private chats only
  final MessageSelfDestructType? selfDestructType;

  static const String constructor = 'draftMessageContentVoiceNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'file_path': filePath,
    'duration': duration,
    'waveform': waveform,
    'self_destruct_type': selfDestructType?.toJson(),
    '@type': constructor,
  };

  static DraftMessageContentVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DraftMessageContentVoiceNote(
      filePath: (json['file_path'] as String?) ?? '',
      duration: (json['duration'] as int?) ?? 0,
      waveform: (json['waveform'] as String?) ?? '',
      selfDestructType: MessageSelfDestructType.fromJson(
        tdMapFromJson(json['self_destruct_type']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
