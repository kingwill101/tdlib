import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents short information about a sticker set
@immutable
final class StickerSetInfo extends TdObject {
  StickerSetInfo({
    required this.id,
    required this.title,
    required this.name,
    this.thumbnail,
    this.thumbnailOutline,
    required this.isOwned,
    required this.isInstalled,
    required this.isArchived,
    required this.isOfficial,
    this.stickerType,
    required this.needsRepainting,
    required this.isAllowedAsChatEmojiStatus,
    required this.isViewed,
    required this.size,
    required this.covers,
  });

  /// [id] Identifier of the sticker set
  final int id;

  /// [title] Title of the sticker set
  final String title;

  /// [name] Name of the sticker set
  final String name;

  /// [thumbnail] Sticker set thumbnail in WEBP, TGS, or WEBM format with width
  /// and height 100; may be null. The file can be downloaded only before the
  /// thumbnail is changed
  final Thumbnail? thumbnail;

  /// [thumbnailOutline] Sticker set thumbnail's outline; may be null if unknown
  final Outline? thumbnailOutline;

  /// [isOwned] True, if the sticker set is owned by the current user
  final bool isOwned;

  /// [isInstalled] True, if the sticker set has been installed by the current
  /// user
  final bool isInstalled;

  /// [isArchived] True, if the sticker set has been archived. A sticker set
  /// can't be installed and archived simultaneously
  final bool isArchived;

  /// [isOfficial] True, if the sticker set is official
  final bool isOfficial;

  /// [stickerType] Type of the stickers in the set
  final StickerType? stickerType;

  /// [needsRepainting] True, if stickers in the sticker set are custom emoji
  /// that must be repainted; for custom emoji sticker sets only
  final bool needsRepainting;

  /// [isAllowedAsChatEmojiStatus] True, if stickers in the sticker set are
  /// custom emoji that can be used as chat emoji status; for custom emoji
  /// sticker sets only
  final bool isAllowedAsChatEmojiStatus;

  /// [isViewed] True for already viewed trending sticker sets
  final bool isViewed;

  /// [size] Total number of stickers in the set
  final int size;

  /// [covers] Up to the first 5 stickers from the set, depending on the
  /// context. If the application needs more stickers the full sticker set needs
  /// to be requested
  final List<Sticker> covers;

  static const String constructor = 'stickerSetInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id.toString(),
    'title': title,
    'name': name,
    'thumbnail': thumbnail?.toJson(),
    'thumbnail_outline': thumbnailOutline?.toJson(),
    'is_owned': isOwned,
    'is_installed': isInstalled,
    'is_archived': isArchived,
    'is_official': isOfficial,
    'sticker_type': stickerType?.toJson(),
    'needs_repainting': needsRepainting,
    'is_allowed_as_chat_emoji_status': isAllowedAsChatEmojiStatus,
    'is_viewed': isViewed,
    'size': size,
    'covers': covers.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static StickerSetInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StickerSetInfo(
      id: int.tryParse((json['id'] as dynamic)?.toString() ?? '') ?? 0,
      title: (json['title'] as String?) ?? '',
      name: (json['name'] as String?) ?? '',
      thumbnail: Thumbnail.fromJson(tdMapFromJson(json['thumbnail'])),
      thumbnailOutline: Outline.fromJson(
        tdMapFromJson(json['thumbnail_outline']),
      ),
      isOwned: (json['is_owned'] as bool?) ?? false,
      isInstalled: (json['is_installed'] as bool?) ?? false,
      isArchived: (json['is_archived'] as bool?) ?? false,
      isOfficial: (json['is_official'] as bool?) ?? false,
      stickerType: StickerType.fromJson(tdMapFromJson(json['sticker_type'])),
      needsRepainting: (json['needs_repainting'] as bool?) ?? false,
      isAllowedAsChatEmojiStatus:
          (json['is_allowed_as_chat_emoji_status'] as bool?) ?? false,
      isViewed: (json['is_viewed'] as bool?) ?? false,
      size: (json['size'] as int?) ?? 0,
      covers: List<Sticker>.from(
        tdListFromJson(json['covers'])
            .map((item) => Sticker.fromJson(tdMapFromJson(item)))
            .whereType<Sticker>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
