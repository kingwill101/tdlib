import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a chat theme based on an upgraded gift
@immutable
final class GiftChatTheme extends TdObject {
  GiftChatTheme({this.gift, this.lightSettings, this.darkSettings});

  /// [gift] The gift
  final UpgradedGift? gift;

  /// [lightSettings] Theme settings for a light chat theme
  final ThemeSettings? lightSettings;

  /// [darkSettings] Theme settings for a dark chat theme
  final ThemeSettings? darkSettings;

  static const String constructor = 'giftChatTheme';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift': gift?.toJson(),
    'light_settings': lightSettings?.toJson(),
    'dark_settings': darkSettings?.toJson(),
    '@type': constructor,
  };

  static GiftChatTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftChatTheme(
      gift: UpgradedGift.fromJson(tdMapFromJson(json['gift'])),
      lightSettings: ThemeSettings.fromJson(
        tdMapFromJson(json['light_settings']),
      ),
      darkSettings: ThemeSettings.fromJson(
        tdMapFromJson(json['dark_settings']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
