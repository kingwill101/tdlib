import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes allowed types for the target chat
@immutable
final class TargetChatTypes extends TdObject {
  TargetChatTypes({
    required this.allowUserChats,
    required this.allowBotChats,
    required this.allowGroupChats,
    required this.allowChannelChats,
  });

  /// [allowUserChats] True, if private chats with ordinary users are allowed
  final bool allowUserChats;

  /// [allowBotChats] True, if private chats with other bots are allowed
  final bool allowBotChats;

  /// [allowGroupChats] True, if basic group and supergroup chats are allowed
  final bool allowGroupChats;

  /// [allowChannelChats] True, if channel chats are allowed
  final bool allowChannelChats;

  static const String constructor = 'targetChatTypes';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'allow_user_chats': allowUserChats,
    'allow_bot_chats': allowBotChats,
    'allow_group_chats': allowGroupChats,
    'allow_channel_chats': allowChannelChats,
    '@type': constructor,
  };

  static TargetChatTypes? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TargetChatTypes(
      allowUserChats: (json['allow_user_chats'] as bool?) ?? false,
      allowBotChats: (json['allow_bot_chats'] as bool?) ?? false,
      allowGroupChats: (json['allow_group_chats'] as bool?) ?? false,
      allowChannelChats: (json['allow_channel_chats'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
