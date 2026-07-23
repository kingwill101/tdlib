import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about an emoji reaction
@immutable
final class EmojiReaction extends TdObject {
  EmojiReaction({
    required this.emoji,
    required this.title,
    required this.isActive,
    this.staticIcon,
    this.appearAnimation,
    this.selectAnimation,
    this.activateAnimation,
    this.effectAnimation,
    this.aroundAnimation,
    this.centerAnimation,
  });

  /// [emoji] Text representation of the reaction
  final String emoji;

  /// [title] Reaction title
  final String title;

  /// [isActive] True, if the reaction can be added to new messages and enabled
  /// in chats
  final bool isActive;

  /// [staticIcon] Static icon for the reaction
  final Sticker? staticIcon;

  /// [appearAnimation] Appear animation for the reaction
  final Sticker? appearAnimation;

  /// [selectAnimation] Select animation for the reaction
  final Sticker? selectAnimation;

  /// [activateAnimation] Activate animation for the reaction
  final Sticker? activateAnimation;

  /// [effectAnimation] Effect animation for the reaction
  final Sticker? effectAnimation;

  /// [aroundAnimation] Around animation for the reaction; may be null
  final Sticker? aroundAnimation;

  /// [centerAnimation] Center animation for the reaction; may be null
  final Sticker? centerAnimation;

  static const String constructor = 'emojiReaction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'emoji': emoji,
    'title': title,
    'is_active': isActive,
    'static_icon': staticIcon?.toJson(),
    'appear_animation': appearAnimation?.toJson(),
    'select_animation': selectAnimation?.toJson(),
    'activate_animation': activateAnimation?.toJson(),
    'effect_animation': effectAnimation?.toJson(),
    'around_animation': aroundAnimation?.toJson(),
    'center_animation': centerAnimation?.toJson(),
    '@type': constructor,
  };

  static EmojiReaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiReaction(
      emoji: (json['emoji'] as String?) ?? '',
      title: (json['title'] as String?) ?? '',
      isActive: (json['is_active'] as bool?) ?? false,
      staticIcon: Sticker.fromJson(tdMapFromJson(json['static_icon'])),
      appearAnimation: Sticker.fromJson(
        tdMapFromJson(json['appear_animation']),
      ),
      selectAnimation: Sticker.fromJson(
        tdMapFromJson(json['select_animation']),
      ),
      activateAnimation: Sticker.fromJson(
        tdMapFromJson(json['activate_animation']),
      ),
      effectAnimation: Sticker.fromJson(
        tdMapFromJson(json['effect_animation']),
      ),
      aroundAnimation: Sticker.fromJson(
        tdMapFromJson(json['around_animation']),
      ),
      centerAnimation: Sticker.fromJson(
        tdMapFromJson(json['center_animation']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
