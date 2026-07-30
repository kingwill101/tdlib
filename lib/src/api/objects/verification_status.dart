import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about verification status of a chat or a user
@immutable
final class VerificationStatus extends TdObject {
  VerificationStatus({
    required this.isVerified,
    required this.isScam,
    required this.isFake,
    required this.botVerificationIconCustomEmojiId,
  });

  /// [isVerified] True, if the chat or the user is verified by Telegram
  final bool isVerified;

  /// [isScam] True, if the chat or the user is marked as scam by Telegram
  final bool isScam;

  /// [isFake] True, if the chat or the user is marked as fake by Telegram
  final bool isFake;

  /// [botVerificationIconCustomEmojiId] Identifier of the custom emoji to be
  /// shown as verification sign provided by a bot for the user; 0 if none
  final int botVerificationIconCustomEmojiId;

  static const String constructor = 'verificationStatus';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_verified': isVerified,
    'is_scam': isScam,
    'is_fake': isFake,
    'bot_verification_icon_custom_emoji_id': botVerificationIconCustomEmojiId
        .toString(),
    '@type': constructor,
  };

  static VerificationStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return VerificationStatus(
      isVerified: (json['is_verified'] as bool?) ?? false,
      isScam: (json['is_scam'] as bool?) ?? false,
      isFake: (json['is_fake'] as bool?) ?? false,
      botVerificationIconCustomEmojiId:
          int.tryParse(
            (json['bot_verification_icon_custom_emoji_id'] as dynamic)
                    ?.toString() ??
                '',
          ) ??
          0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
