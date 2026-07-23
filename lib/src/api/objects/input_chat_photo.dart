import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a photo to be set as a user profile or chat photo
@immutable
sealed class InputChatPhoto extends TdObject {
  const InputChatPhoto();

  static const String constructor = 'inputChatPhoto';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [InputChatPhotoAnimation]
  /// [InputChatPhotoPrevious]
  /// [InputChatPhotoStatic]
  /// [InputChatPhotoSticker]
  static InputChatPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputChatPhotoAnimation.constructor:
        return InputChatPhotoAnimation.fromJson(json);

      case InputChatPhotoPrevious.constructor:
        return InputChatPhotoPrevious.fromJson(json);

      case InputChatPhotoStatic.constructor:
        return InputChatPhotoStatic.fromJson(json);

      case InputChatPhotoSticker.constructor:
        return InputChatPhotoSticker.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An animation in MPEG4 format; must be square, at most 10 seconds long,
/// have width between 160 and 1280 and be at most 2MB in size
@immutable
final class InputChatPhotoAnimation extends InputChatPhoto {
  InputChatPhotoAnimation({this.animation, required this.mainFrameTimestamp});

  /// [animation] Animation to be set as profile photo. Only inputFileLocal and
  /// inputFileGenerated are allowed
  final InputFile? animation;

  /// [mainFrameTimestamp] Timestamp of the frame, which will be used as static
  /// chat photo
  final double mainFrameTimestamp;

  static const String constructor = 'inputChatPhotoAnimation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'animation': animation?.toJson(),
    'main_frame_timestamp': mainFrameTimestamp,
    '@type': constructor,
  };

  static InputChatPhotoAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputChatPhotoAnimation(
      animation: InputFile.fromJson(tdMapFromJson(json['animation'])),
      mainFrameTimestamp: ((json['main_frame_timestamp'] as num?) ?? 0.0)
          .toDouble(),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A previously used profile photo of the current user
@immutable
final class InputChatPhotoPrevious extends InputChatPhoto {
  InputChatPhotoPrevious({required this.chatPhotoId});

  /// [chatPhotoId] Identifier of the current user's profile photo to reuse
  final int chatPhotoId;

  static const String constructor = 'inputChatPhotoPrevious';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_photo_id': chatPhotoId.toString(),
    '@type': constructor,
  };

  static InputChatPhotoPrevious? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputChatPhotoPrevious(
      chatPhotoId:
          int.tryParse((json['chat_photo_id'] as dynamic)?.toString() ?? '') ??
          0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A static photo in JPEG format
@immutable
final class InputChatPhotoStatic extends InputChatPhoto {
  InputChatPhotoStatic({this.photo});

  /// [photo] Photo to be set as profile photo. Only inputFileLocal and
  /// inputFileGenerated are allowed
  final InputFile? photo;

  static const String constructor = 'inputChatPhotoStatic';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'photo': photo?.toJson(),
    '@type': constructor,
  };

  static InputChatPhotoStatic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputChatPhotoStatic(
      photo: InputFile.fromJson(tdMapFromJson(json['photo'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A sticker on a custom background
@immutable
final class InputChatPhotoSticker extends InputChatPhoto {
  InputChatPhotoSticker({this.sticker});

  /// [sticker] Information about the sticker
  final ChatPhotoSticker? sticker;

  static const String constructor = 'inputChatPhotoSticker';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sticker': sticker?.toJson(),
    '@type': constructor,
  };

  static InputChatPhotoSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputChatPhotoSticker(
      sticker: ChatPhotoSticker.fromJson(tdMapFromJson(json['sticker'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
