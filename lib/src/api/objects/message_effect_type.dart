import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of emoji effect
@immutable
sealed class MessageEffectType extends TdObject {
  const MessageEffectType();

  static const String constructor = 'messageEffectType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [MessageEffectTypeEmojiReaction]
  /// [MessageEffectTypePremiumSticker]
  static MessageEffectType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageEffectTypeEmojiReaction.constructor:
        return MessageEffectTypeEmojiReaction.fromJson(json);

      case MessageEffectTypePremiumSticker.constructor:
        return MessageEffectTypePremiumSticker.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An effect from an emoji reaction
@immutable
final class MessageEffectTypeEmojiReaction extends MessageEffectType {
  MessageEffectTypeEmojiReaction({this.selectAnimation, this.effectAnimation});

  /// [selectAnimation] Select animation for the effect in TGS format
  final Sticker? selectAnimation;

  /// [effectAnimation] Effect animation for the effect in TGS format
  final Sticker? effectAnimation;

  static const String constructor = 'messageEffectTypeEmojiReaction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'select_animation': selectAnimation?.toJson(),
    'effect_animation': effectAnimation?.toJson(),
    '@type': constructor,
  };

  static MessageEffectTypeEmojiReaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageEffectTypeEmojiReaction(
      selectAnimation: Sticker.fromJson(
        tdMapFromJson(json['select_animation']),
      ),
      effectAnimation: Sticker.fromJson(
        tdMapFromJson(json['effect_animation']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An effect from a premium sticker
@immutable
final class MessageEffectTypePremiumSticker extends MessageEffectType {
  MessageEffectTypePremiumSticker({this.sticker});

  /// [sticker] The premium sticker. The effect can be found at
  /// sticker.full_type.premium_animation
  final Sticker? sticker;

  static const String constructor = 'messageEffectTypePremiumSticker';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sticker': sticker?.toJson(),
    '@type': constructor,
  };

  static MessageEffectTypePremiumSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageEffectTypePremiumSticker(
      sticker: Sticker.fromJson(tdMapFromJson(json['sticker'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
