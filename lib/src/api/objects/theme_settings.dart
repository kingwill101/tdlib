import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes theme settings
@immutable
final class ThemeSettings extends TdObject {
  ThemeSettings({
    this.baseTheme,
    required this.accentColor,
    this.background,
    this.outgoingMessageFill,
    required this.animateOutgoingMessageFill,
    required this.outgoingMessageAccentColor,
  });

  /// [baseTheme] Base theme for this theme
  final BuiltInTheme? baseTheme;

  /// [accentColor] Theme accent color in ARGB format
  final int accentColor;

  /// [background] The background to be used in chats; may be null
  final Background? background;

  /// [outgoingMessageFill] The fill to be used as a background for outgoing
  /// messages; may be null if the fill from the base theme must be used instead
  final BackgroundFill? outgoingMessageFill;

  /// [animateOutgoingMessageFill] If true, the freeform gradient fill needs to
  /// be animated on every sent message
  final bool animateOutgoingMessageFill;

  /// [outgoingMessageAccentColor] Accent color of outgoing messages in ARGB
  /// format
  final int outgoingMessageAccentColor;

  static const String constructor = 'themeSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'base_theme': baseTheme?.toJson(),
    'accent_color': accentColor,
    'background': background?.toJson(),
    'outgoing_message_fill': outgoingMessageFill?.toJson(),
    'animate_outgoing_message_fill': animateOutgoingMessageFill,
    'outgoing_message_accent_color': outgoingMessageAccentColor,
    '@type': constructor,
  };

  static ThemeSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ThemeSettings(
      baseTheme: BuiltInTheme.fromJson(tdMapFromJson(json['base_theme'])),
      accentColor: (json['accent_color'] as int?) ?? 0,
      background: Background.fromJson(tdMapFromJson(json['background'])),
      outgoingMessageFill: BackgroundFill.fromJson(
        tdMapFromJson(json['outgoing_message_fill']),
      ),
      animateOutgoingMessageFill:
          (json['animate_outgoing_message_fill'] as bool?) ?? false,
      outgoingMessageAccentColor:
          (json['outgoing_message_accent_color'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
