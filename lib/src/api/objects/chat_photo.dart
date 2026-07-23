import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a chat or user profile photo
@immutable
final class ChatPhoto extends TdObject {
  ChatPhoto({
    required this.id,
    required this.addedDate,
    this.minithumbnail,
    required this.sizes,
    this.animation,
    this.smallAnimation,
    this.sticker,
  });

  /// [id] Unique photo identifier
  final int id;

  /// [addedDate] Point in time (Unix timestamp) when the photo has been added
  final int addedDate;

  /// [minithumbnail] Photo minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [sizes] Available variants of the photo in JPEG format, in different size
  final List<PhotoSize> sizes;

  /// [animation] A big (up to 1280x1280) animated variant of the photo in MPEG4
  /// format; may be null
  final AnimatedChatPhoto? animation;

  /// [smallAnimation] A small (160x160) animated variant of the photo in MPEG4
  /// format; may be null even if the big animation is available
  final AnimatedChatPhoto? smallAnimation;

  /// [sticker] Sticker-based version of the chat photo; may be null
  final ChatPhotoSticker? sticker;

  static const String constructor = 'chatPhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id.toString(),
    'added_date': addedDate,
    'minithumbnail': minithumbnail?.toJson(),
    'sizes': sizes.map((item) => item.toJson()).toList(),
    'animation': animation?.toJson(),
    'small_animation': smallAnimation?.toJson(),
    'sticker': sticker?.toJson(),
    '@type': constructor,
  };

  static ChatPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatPhoto(
      id: int.tryParse((json['id'] as dynamic)?.toString() ?? '') ?? 0,
      addedDate: (json['added_date'] as int?) ?? 0,
      minithumbnail: Minithumbnail.fromJson(
        tdMapFromJson(json['minithumbnail']),
      ),
      sizes: List<PhotoSize>.from(
        tdListFromJson(json['sizes'])
            .map((item) => PhotoSize.fromJson(tdMapFromJson(item)))
            .whereType<PhotoSize>(),
      ),
      animation: AnimatedChatPhoto.fromJson(tdMapFromJson(json['animation'])),
      smallAnimation: AnimatedChatPhoto.fromJson(
        tdMapFromJson(json['small_animation']),
      ),
      sticker: ChatPhotoSticker.fromJson(tdMapFromJson(json['sticker'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
