import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a sticker
@immutable
final class Sticker extends TdObject {
  Sticker({
    required this.id,
    required this.setId,
    required this.width,
    required this.height,
    required this.emoji,
    this.format,
    this.fullType,
    this.thumbnail,
    this.sticker,
  });

  /// [id] Unique sticker identifier within the set; 0 if none
  final int id;

  /// [setId] Identifier of the sticker set to which the sticker belongs; 0 if
  /// none
  final int setId;

  /// [width] Sticker width; as defined by the sender
  final int width;

  /// [height] Sticker height; as defined by the sender
  final int height;

  /// [emoji] Emoji corresponding to the sticker; may be empty if unknown
  final String emoji;

  /// [format] Sticker format
  final StickerFormat? format;

  /// [fullType] Sticker's full type
  final StickerFullType? fullType;

  /// [thumbnail] Sticker thumbnail in WEBP or JPEG format; may be null
  final Thumbnail? thumbnail;

  /// [sticker] File containing the sticker
  final File? sticker;

  static const String constructor = 'sticker';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id.toString(),
    'set_id': setId.toString(),
    'width': width,
    'height': height,
    'emoji': emoji,
    'format': format?.toJson(),
    'full_type': fullType?.toJson(),
    'thumbnail': thumbnail?.toJson(),
    'sticker': sticker?.toJson(),
    '@type': constructor,
  };

  static Sticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Sticker(
      id: int.tryParse((json['id'] as dynamic)?.toString() ?? '') ?? 0,
      setId: int.tryParse((json['set_id'] as dynamic)?.toString() ?? '') ?? 0,
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
      emoji: (json['emoji'] as String?) ?? '',
      format: StickerFormat.fromJson(tdMapFromJson(json['format'])),
      fullType: StickerFullType.fromJson(tdMapFromJson(json['full_type'])),
      thumbnail: Thumbnail.fromJson(tdMapFromJson(json['thumbnail'])),
      sticker: File.fromJson(tdMapFromJson(json['sticker'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
