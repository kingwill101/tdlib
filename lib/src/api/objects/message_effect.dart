import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about an effect added to a message
@immutable
final class MessageEffect extends TdObject {
  MessageEffect({
    required this.id,
    this.staticIcon,
    required this.emoji,
    required this.isPremium,
    this.type,
  });

  /// [id] Unique identifier of the effect
  final int id;

  /// [staticIcon] Static icon for the effect in WEBP format; may be null if
  /// none
  final Sticker? staticIcon;

  /// [emoji] Emoji corresponding to the effect that can be used if static icon
  /// isn't available
  final String emoji;

  /// [isPremium] True, if Telegram Premium subscription is required to use the
  /// effect
  final bool isPremium;

  /// [type] Type of the effect
  final MessageEffectType? type;

  static const String constructor = 'messageEffect';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id.toString(),
    'static_icon': staticIcon?.toJson(),
    'emoji': emoji,
    'is_premium': isPremium,
    'type': type?.toJson(),
    '@type': constructor,
  };

  static MessageEffect? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageEffect(
      id: int.tryParse((json['id'] as dynamic)?.toString() ?? '') ?? 0,
      staticIcon: Sticker.fromJson(tdMapFromJson(json['static_icon'])),
      emoji: (json['emoji'] as String?) ?? '',
      isPremium: (json['is_premium'] as bool?) ?? false,
      type: MessageEffectType.fromJson(tdMapFromJson(json['type'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
