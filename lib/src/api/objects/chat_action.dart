import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the different types of activity in a chat
@immutable
sealed class ChatAction extends TdObject {
  const ChatAction();

  static const String constructor = 'chatAction';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ChatActionCancel]
  /// [ChatActionChoosingContact]
  /// [ChatActionChoosingLocation]
  /// [ChatActionChoosingSticker]
  /// [ChatActionRecordingVideo]
  /// [ChatActionRecordingVideoNote]
  /// [ChatActionRecordingVoiceNote]
  /// [ChatActionStartPlayingGame]
  /// [ChatActionTyping]
  /// [ChatActionUploadingDocument]
  /// [ChatActionUploadingPhoto]
  /// [ChatActionUploadingVideo]
  /// [ChatActionUploadingVideoNote]
  /// [ChatActionUploadingVoiceNote]
  /// [ChatActionWatchingAnimations]
  static ChatAction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatActionCancel.constructor:
        return ChatActionCancel.fromJson(json);

      case ChatActionChoosingContact.constructor:
        return ChatActionChoosingContact.fromJson(json);

      case ChatActionChoosingLocation.constructor:
        return ChatActionChoosingLocation.fromJson(json);

      case ChatActionChoosingSticker.constructor:
        return ChatActionChoosingSticker.fromJson(json);

      case ChatActionRecordingVideo.constructor:
        return ChatActionRecordingVideo.fromJson(json);

      case ChatActionRecordingVideoNote.constructor:
        return ChatActionRecordingVideoNote.fromJson(json);

      case ChatActionRecordingVoiceNote.constructor:
        return ChatActionRecordingVoiceNote.fromJson(json);

      case ChatActionStartPlayingGame.constructor:
        return ChatActionStartPlayingGame.fromJson(json);

      case ChatActionTyping.constructor:
        return ChatActionTyping.fromJson(json);

      case ChatActionUploadingDocument.constructor:
        return ChatActionUploadingDocument.fromJson(json);

      case ChatActionUploadingPhoto.constructor:
        return ChatActionUploadingPhoto.fromJson(json);

      case ChatActionUploadingVideo.constructor:
        return ChatActionUploadingVideo.fromJson(json);

      case ChatActionUploadingVideoNote.constructor:
        return ChatActionUploadingVideoNote.fromJson(json);

      case ChatActionUploadingVoiceNote.constructor:
        return ChatActionUploadingVoiceNote.fromJson(json);

      case ChatActionWatchingAnimations.constructor:
        return ChatActionWatchingAnimations.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user has canceled the previous action
@immutable
final class ChatActionCancel extends ChatAction {
  const ChatActionCancel();

  static const String constructor = 'chatActionCancel';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatActionCancel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionCancel();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is picking a contact to send
@immutable
final class ChatActionChoosingContact extends ChatAction {
  const ChatActionChoosingContact();

  static const String constructor = 'chatActionChoosingContact';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatActionChoosingContact? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionChoosingContact();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is picking a location or venue to send
@immutable
final class ChatActionChoosingLocation extends ChatAction {
  const ChatActionChoosingLocation();

  static const String constructor = 'chatActionChoosingLocation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatActionChoosingLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionChoosingLocation();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is picking a sticker to send
@immutable
final class ChatActionChoosingSticker extends ChatAction {
  const ChatActionChoosingSticker();

  static const String constructor = 'chatActionChoosingSticker';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatActionChoosingSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionChoosingSticker();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is recording a video
@immutable
final class ChatActionRecordingVideo extends ChatAction {
  const ChatActionRecordingVideo();

  static const String constructor = 'chatActionRecordingVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatActionRecordingVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionRecordingVideo();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is recording a video note
@immutable
final class ChatActionRecordingVideoNote extends ChatAction {
  const ChatActionRecordingVideoNote();

  static const String constructor = 'chatActionRecordingVideoNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatActionRecordingVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionRecordingVideoNote();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is recording a voice note
@immutable
final class ChatActionRecordingVoiceNote extends ChatAction {
  const ChatActionRecordingVoiceNote();

  static const String constructor = 'chatActionRecordingVoiceNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatActionRecordingVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionRecordingVoiceNote();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user has started to play a game
@immutable
final class ChatActionStartPlayingGame extends ChatAction {
  const ChatActionStartPlayingGame();

  static const String constructor = 'chatActionStartPlayingGame';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatActionStartPlayingGame? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionStartPlayingGame();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is typing a message
@immutable
final class ChatActionTyping extends ChatAction {
  const ChatActionTyping();

  static const String constructor = 'chatActionTyping';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatActionTyping? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionTyping();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is uploading a document
@immutable
final class ChatActionUploadingDocument extends ChatAction {
  ChatActionUploadingDocument({required this.progress});

  /// [progress] Upload progress, as a percentage
  final int progress;

  static const String constructor = 'chatActionUploadingDocument';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'progress': progress,
    '@type': constructor,
  };

  static ChatActionUploadingDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActionUploadingDocument(
      progress: (json['progress'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is uploading a photo
@immutable
final class ChatActionUploadingPhoto extends ChatAction {
  ChatActionUploadingPhoto({required this.progress});

  /// [progress] Upload progress, as a percentage
  final int progress;

  static const String constructor = 'chatActionUploadingPhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'progress': progress,
    '@type': constructor,
  };

  static ChatActionUploadingPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActionUploadingPhoto(progress: (json['progress'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is uploading a video
@immutable
final class ChatActionUploadingVideo extends ChatAction {
  ChatActionUploadingVideo({required this.progress});

  /// [progress] Upload progress, as a percentage
  final int progress;

  static const String constructor = 'chatActionUploadingVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'progress': progress,
    '@type': constructor,
  };

  static ChatActionUploadingVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActionUploadingVideo(progress: (json['progress'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is uploading a video note
@immutable
final class ChatActionUploadingVideoNote extends ChatAction {
  ChatActionUploadingVideoNote({required this.progress});

  /// [progress] Upload progress, as a percentage
  final int progress;

  static const String constructor = 'chatActionUploadingVideoNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'progress': progress,
    '@type': constructor,
  };

  static ChatActionUploadingVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActionUploadingVideoNote(
      progress: (json['progress'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is uploading a voice note
@immutable
final class ChatActionUploadingVoiceNote extends ChatAction {
  ChatActionUploadingVoiceNote({required this.progress});

  /// [progress] Upload progress, as a percentage
  final int progress;

  static const String constructor = 'chatActionUploadingVoiceNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'progress': progress,
    '@type': constructor,
  };

  static ChatActionUploadingVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActionUploadingVoiceNote(
      progress: (json['progress'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The user is watching animations sent by the other party by clicking on an
/// animated emoji
@immutable
final class ChatActionWatchingAnimations extends ChatAction {
  ChatActionWatchingAnimations({required this.emoji});

  /// [emoji] The animated emoji
  final String emoji;

  static const String constructor = 'chatActionWatchingAnimations';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'emoji': emoji,
    '@type': constructor,
  };

  static ChatActionWatchingAnimations? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActionWatchingAnimations(
      emoji: (json['emoji'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
