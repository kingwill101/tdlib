import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains settings for gift receiving for a user
@immutable
final class GiftSettings extends TdObject {
  GiftSettings({required this.showGiftButton, this.acceptedGiftTypes});

  /// [showGiftButton] True, if a button for sending a gift to the user or by
  /// the user must always be shown in the input field
  final bool showGiftButton;

  /// [acceptedGiftTypes] Types of gifts accepted by the user; for Telegram
  /// Premium users only
  final AcceptedGiftTypes? acceptedGiftTypes;

  static const String constructor = 'giftSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'show_gift_button': showGiftButton,
    'accepted_gift_types': acceptedGiftTypes?.toJson(),
    '@type': constructor,
  };

  static GiftSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftSettings(
      showGiftButton: (json['show_gift_button'] as bool?) ?? false,
      acceptedGiftTypes: AcceptedGiftTypes.fromJson(
        tdMapFromJson(json['accepted_gift_types']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
