import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Information about the sticker, which was used to create the chat photo.
/// The sticker is shown at the center of the photo and occupies at most 67%
/// of it
@immutable
final class ChatPhotoSticker extends TdObject {
  ChatPhotoSticker({this.type, this.backgroundFill});

  /// [type] Type of the sticker
  final ChatPhotoStickerType? type;

  /// [backgroundFill] The fill to be used as background for the sticker;
  /// rotation angle in backgroundFillGradient isn't supported
  final BackgroundFill? backgroundFill;

  static const String constructor = 'chatPhotoSticker';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'type': type?.toJson(),
    'background_fill': backgroundFill?.toJson(),
    '@type': constructor,
  };

  static ChatPhotoSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatPhotoSticker(
      type: ChatPhotoStickerType.fromJson(tdMapFromJson(json['type'])),
      backgroundFill: BackgroundFill.fromJson(
        tdMapFromJson(json['background_fill']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
