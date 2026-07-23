import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents the type of file
@immutable
sealed class FileType extends TdObject {
  const FileType();

  static const String constructor = 'fileType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [FileTypeAnimation]
  /// [FileTypeAudio]
  /// [FileTypeDocument]
  /// [FileTypeLivePhotoVideo]
  /// [FileTypeNone]
  /// [FileTypeNotificationSound]
  /// [FileTypePhoto]
  /// [FileTypePhotoStory]
  /// [FileTypeProfilePhoto]
  /// [FileTypeSecret]
  /// [FileTypeSecretThumbnail]
  /// [FileTypeSecure]
  /// [FileTypeSelfDestructingLivePhotoVideo]
  /// [FileTypeSelfDestructingPhoto]
  /// [FileTypeSelfDestructingVideo]
  /// [FileTypeSelfDestructingVideoNote]
  /// [FileTypeSelfDestructingVoiceNote]
  /// [FileTypeSticker]
  /// [FileTypeThumbnail]
  /// [FileTypeUnknown]
  /// [FileTypeVideo]
  /// [FileTypeVideoNote]
  /// [FileTypeVideoStory]
  /// [FileTypeVoiceNote]
  /// [FileTypeWallpaper]
  static FileType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case FileTypeAnimation.constructor:
        return FileTypeAnimation.fromJson(json);

      case FileTypeAudio.constructor:
        return FileTypeAudio.fromJson(json);

      case FileTypeDocument.constructor:
        return FileTypeDocument.fromJson(json);

      case FileTypeLivePhotoVideo.constructor:
        return FileTypeLivePhotoVideo.fromJson(json);

      case FileTypeNone.constructor:
        return FileTypeNone.fromJson(json);

      case FileTypeNotificationSound.constructor:
        return FileTypeNotificationSound.fromJson(json);

      case FileTypePhoto.constructor:
        return FileTypePhoto.fromJson(json);

      case FileTypePhotoStory.constructor:
        return FileTypePhotoStory.fromJson(json);

      case FileTypeProfilePhoto.constructor:
        return FileTypeProfilePhoto.fromJson(json);

      case FileTypeSecret.constructor:
        return FileTypeSecret.fromJson(json);

      case FileTypeSecretThumbnail.constructor:
        return FileTypeSecretThumbnail.fromJson(json);

      case FileTypeSecure.constructor:
        return FileTypeSecure.fromJson(json);

      case FileTypeSelfDestructingLivePhotoVideo.constructor:
        return FileTypeSelfDestructingLivePhotoVideo.fromJson(json);

      case FileTypeSelfDestructingPhoto.constructor:
        return FileTypeSelfDestructingPhoto.fromJson(json);

      case FileTypeSelfDestructingVideo.constructor:
        return FileTypeSelfDestructingVideo.fromJson(json);

      case FileTypeSelfDestructingVideoNote.constructor:
        return FileTypeSelfDestructingVideoNote.fromJson(json);

      case FileTypeSelfDestructingVoiceNote.constructor:
        return FileTypeSelfDestructingVoiceNote.fromJson(json);

      case FileTypeSticker.constructor:
        return FileTypeSticker.fromJson(json);

      case FileTypeThumbnail.constructor:
        return FileTypeThumbnail.fromJson(json);

      case FileTypeUnknown.constructor:
        return FileTypeUnknown.fromJson(json);

      case FileTypeVideo.constructor:
        return FileTypeVideo.fromJson(json);

      case FileTypeVideoNote.constructor:
        return FileTypeVideoNote.fromJson(json);

      case FileTypeVideoStory.constructor:
        return FileTypeVideoStory.fromJson(json);

      case FileTypeVoiceNote.constructor:
        return FileTypeVoiceNote.fromJson(json);

      case FileTypeWallpaper.constructor:
        return FileTypeWallpaper.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file is an animation
@immutable
final class FileTypeAnimation extends FileType {
  const FileTypeAnimation();

  static const String constructor = 'fileTypeAnimation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static FileTypeAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeAnimation();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file is an audio file
@immutable
final class FileTypeAudio extends FileType {
  const FileTypeAudio();

  static const String constructor = 'fileTypeAudio';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static FileTypeAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeAudio();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file is a document
@immutable
final class FileTypeDocument extends FileType {
  const FileTypeDocument();

  static const String constructor = 'fileTypeDocument';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static FileTypeDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeDocument();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file is a video for a live photo
@immutable
final class FileTypeLivePhotoVideo extends FileType {
  const FileTypeLivePhotoVideo();

  static const String constructor = 'fileTypeLivePhotoVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static FileTypeLivePhotoVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeLivePhotoVideo();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The data is not a file
@immutable
final class FileTypeNone extends FileType {
  const FileTypeNone();

  static const String constructor = 'fileTypeNone';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static FileTypeNone? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeNone();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file is a notification sound
@immutable
final class FileTypeNotificationSound extends FileType {
  const FileTypeNotificationSound();

  static const String constructor = 'fileTypeNotificationSound';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static FileTypeNotificationSound? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeNotificationSound();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file is a photo
@immutable
final class FileTypePhoto extends FileType {
  const FileTypePhoto();

  static const String constructor = 'fileTypePhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static FileTypePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypePhoto();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file is a photo published as a story
@immutable
final class FileTypePhotoStory extends FileType {
  const FileTypePhotoStory();

  static const String constructor = 'fileTypePhotoStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static FileTypePhotoStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypePhotoStory();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file is a profile photo
@immutable
final class FileTypeProfilePhoto extends FileType {
  const FileTypeProfilePhoto();

  static const String constructor = 'fileTypeProfilePhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static FileTypeProfilePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeProfilePhoto();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file was sent to a secret chat (the file type is not known to the
/// server)
@immutable
final class FileTypeSecret extends FileType {
  const FileTypeSecret();

  static const String constructor = 'fileTypeSecret';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static FileTypeSecret? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeSecret();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file is a thumbnail of a file from a secret chat
@immutable
final class FileTypeSecretThumbnail extends FileType {
  const FileTypeSecretThumbnail();

  static const String constructor = 'fileTypeSecretThumbnail';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static FileTypeSecretThumbnail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeSecretThumbnail();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file is a file from Secure storage used for storing Telegram Passport
/// files
@immutable
final class FileTypeSecure extends FileType {
  const FileTypeSecure();

  static const String constructor = 'fileTypeSecure';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static FileTypeSecure? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeSecure();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file is a self-destructing video for a live photo in a private chat
@immutable
final class FileTypeSelfDestructingLivePhotoVideo extends FileType {
  const FileTypeSelfDestructingLivePhotoVideo();

  static const String constructor = 'fileTypeSelfDestructingLivePhotoVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static FileTypeSelfDestructingLivePhotoVideo? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const FileTypeSelfDestructingLivePhotoVideo();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file is a self-destructing photo in a private chat
@immutable
final class FileTypeSelfDestructingPhoto extends FileType {
  const FileTypeSelfDestructingPhoto();

  static const String constructor = 'fileTypeSelfDestructingPhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static FileTypeSelfDestructingPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeSelfDestructingPhoto();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file is a self-destructing video in a private chat
@immutable
final class FileTypeSelfDestructingVideo extends FileType {
  const FileTypeSelfDestructingVideo();

  static const String constructor = 'fileTypeSelfDestructingVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static FileTypeSelfDestructingVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeSelfDestructingVideo();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file is a self-destructing video note in a private chat
@immutable
final class FileTypeSelfDestructingVideoNote extends FileType {
  const FileTypeSelfDestructingVideoNote();

  static const String constructor = 'fileTypeSelfDestructingVideoNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static FileTypeSelfDestructingVideoNote? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const FileTypeSelfDestructingVideoNote();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file is a self-destructing voice note in a private chat
@immutable
final class FileTypeSelfDestructingVoiceNote extends FileType {
  const FileTypeSelfDestructingVoiceNote();

  static const String constructor = 'fileTypeSelfDestructingVoiceNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static FileTypeSelfDestructingVoiceNote? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const FileTypeSelfDestructingVoiceNote();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file is a sticker
@immutable
final class FileTypeSticker extends FileType {
  const FileTypeSticker();

  static const String constructor = 'fileTypeSticker';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static FileTypeSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeSticker();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file is a thumbnail of another file
@immutable
final class FileTypeThumbnail extends FileType {
  const FileTypeThumbnail();

  static const String constructor = 'fileTypeThumbnail';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static FileTypeThumbnail? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeThumbnail();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file type is not yet known
@immutable
final class FileTypeUnknown extends FileType {
  const FileTypeUnknown();

  static const String constructor = 'fileTypeUnknown';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static FileTypeUnknown? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeUnknown();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file is a video
@immutable
final class FileTypeVideo extends FileType {
  const FileTypeVideo();

  static const String constructor = 'fileTypeVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static FileTypeVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeVideo();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file is a video note
@immutable
final class FileTypeVideoNote extends FileType {
  const FileTypeVideoNote();

  static const String constructor = 'fileTypeVideoNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static FileTypeVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeVideoNote();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file is a video published as a story
@immutable
final class FileTypeVideoStory extends FileType {
  const FileTypeVideoStory();

  static const String constructor = 'fileTypeVideoStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static FileTypeVideoStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeVideoStory();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file is a voice note
@immutable
final class FileTypeVoiceNote extends FileType {
  const FileTypeVoiceNote();

  static const String constructor = 'fileTypeVoiceNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static FileTypeVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeVoiceNote();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The file is a wallpaper or a background pattern
@immutable
final class FileTypeWallpaper extends FileType {
  const FileTypeWallpaper();

  static const String constructor = 'fileTypeWallpaper';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static FileTypeWallpaper? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FileTypeWallpaper();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
