import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a keyboard button type
@immutable
sealed class KeyboardButtonType extends TdObject {
  const KeyboardButtonType();

  static const String constructor = 'keyboardButtonType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [KeyboardButtonTypeRequestChat]
  /// [KeyboardButtonTypeRequestLocation]
  /// [KeyboardButtonTypeRequestManagedBot]
  /// [KeyboardButtonTypeRequestPhoneNumber]
  /// [KeyboardButtonTypeRequestPoll]
  /// [KeyboardButtonTypeRequestUsers]
  /// [KeyboardButtonTypeText]
  /// [KeyboardButtonTypeWebApp]
  static KeyboardButtonType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case KeyboardButtonTypeRequestChat.constructor:
        return KeyboardButtonTypeRequestChat.fromJson(json);

      case KeyboardButtonTypeRequestLocation.constructor:
        return KeyboardButtonTypeRequestLocation.fromJson(json);

      case KeyboardButtonTypeRequestManagedBot.constructor:
        return KeyboardButtonTypeRequestManagedBot.fromJson(json);

      case KeyboardButtonTypeRequestPhoneNumber.constructor:
        return KeyboardButtonTypeRequestPhoneNumber.fromJson(json);

      case KeyboardButtonTypeRequestPoll.constructor:
        return KeyboardButtonTypeRequestPoll.fromJson(json);

      case KeyboardButtonTypeRequestUsers.constructor:
        return KeyboardButtonTypeRequestUsers.fromJson(json);

      case KeyboardButtonTypeText.constructor:
        return KeyboardButtonTypeText.fromJson(json);

      case KeyboardButtonTypeWebApp.constructor:
        return KeyboardButtonTypeWebApp.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A button that requests a chat to be shared by the current user; available
/// only in private chats. Use the method shareChatWithBot to complete the
/// request
@immutable
final class KeyboardButtonTypeRequestChat extends KeyboardButtonType {
  KeyboardButtonTypeRequestChat({
    required this.id,
    required this.chatIsChannel,
    required this.restrictChatIsForum,
    required this.chatIsForum,
    required this.restrictChatHasUsername,
    required this.chatHasUsername,
    required this.chatIsCreated,
    this.userAdministratorRights,
    this.botAdministratorRights,
    required this.botIsMember,
    required this.requestTitle,
    required this.requestUsername,
    required this.requestPhoto,
  });

  /// [id] Unique button identifier
  final int id;

  /// [chatIsChannel] True, if the chat must be a channel; otherwise, a basic
  /// group or a supergroup chat is shared
  final bool chatIsChannel;

  /// [restrictChatIsForum] True, if the chat must or must not be a forum
  /// supergroup
  final bool restrictChatIsForum;

  /// [chatIsForum] True, if the chat must be a forum supergroup; otherwise, the
  /// chat must not be a forum supergroup. Ignored if restrict_chat_is_forum is
  /// false
  final bool chatIsForum;

  /// [restrictChatHasUsername] True, if the chat must or must not have a
  /// username
  final bool restrictChatHasUsername;

  /// [chatHasUsername] True, if the chat must have a username; otherwise, the
  /// chat must not have a username. Ignored if restrict_chat_has_username is
  /// false
  final bool chatHasUsername;

  /// [chatIsCreated] True, if the chat must be created by the current user
  final bool chatIsCreated;

  /// [userAdministratorRights] Expected user administrator rights in the chat;
  /// may be null if they aren't restricted
  final ChatAdministratorRights? userAdministratorRights;

  /// [botAdministratorRights] Expected bot administrator rights in the chat;
  /// may be null if they aren't restricted
  final ChatAdministratorRights? botAdministratorRights;

  /// [botIsMember] True, if the bot must be a member of the chat; for basic
  /// group and supergroup chats only
  final bool botIsMember;

  /// [requestTitle] Pass true to request title of the chat; bots only
  final bool requestTitle;

  /// [requestUsername] Pass true to request username of the chat; bots only
  final bool requestUsername;

  /// [requestPhoto] Pass true to request photo of the chat; bots only
  final bool requestPhoto;

  static const String constructor = 'keyboardButtonTypeRequestChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'chat_is_channel': chatIsChannel,
    'restrict_chat_is_forum': restrictChatIsForum,
    'chat_is_forum': chatIsForum,
    'restrict_chat_has_username': restrictChatHasUsername,
    'chat_has_username': chatHasUsername,
    'chat_is_created': chatIsCreated,
    'user_administrator_rights': userAdministratorRights?.toJson(),
    'bot_administrator_rights': botAdministratorRights?.toJson(),
    'bot_is_member': botIsMember,
    'request_title': requestTitle,
    'request_username': requestUsername,
    'request_photo': requestPhoto,
    '@type': constructor,
  };

  static KeyboardButtonTypeRequestChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return KeyboardButtonTypeRequestChat(
      id: (json['id'] as int?) ?? 0,
      chatIsChannel: (json['chat_is_channel'] as bool?) ?? false,
      restrictChatIsForum: (json['restrict_chat_is_forum'] as bool?) ?? false,
      chatIsForum: (json['chat_is_forum'] as bool?) ?? false,
      restrictChatHasUsername:
          (json['restrict_chat_has_username'] as bool?) ?? false,
      chatHasUsername: (json['chat_has_username'] as bool?) ?? false,
      chatIsCreated: (json['chat_is_created'] as bool?) ?? false,
      userAdministratorRights: ChatAdministratorRights.fromJson(
        tdMapFromJson(json['user_administrator_rights']),
      ),
      botAdministratorRights: ChatAdministratorRights.fromJson(
        tdMapFromJson(json['bot_administrator_rights']),
      ),
      botIsMember: (json['bot_is_member'] as bool?) ?? false,
      requestTitle: (json['request_title'] as bool?) ?? false,
      requestUsername: (json['request_username'] as bool?) ?? false,
      requestPhoto: (json['request_photo'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A button that sends the user's location when pressed; available only in
/// private chats
@immutable
final class KeyboardButtonTypeRequestLocation extends KeyboardButtonType {
  const KeyboardButtonTypeRequestLocation();

  static const String constructor = 'keyboardButtonTypeRequestLocation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static KeyboardButtonTypeRequestLocation? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const KeyboardButtonTypeRequestLocation();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A button that requests creation of a managed bot by the current user;
/// available only in private chats. Use the method createBot to complete the
/// request
@immutable
final class KeyboardButtonTypeRequestManagedBot extends KeyboardButtonType {
  KeyboardButtonTypeRequestManagedBot({
    required this.id,
    required this.suggestedName,
    required this.suggestedUsername,
  });

  /// [id] Unique button identifier
  final int id;

  /// [suggestedName] Suggested name for the bot; may be empty if not specified
  final String suggestedName;

  /// [suggestedUsername] Suggested username for the bot; may be empty if not
  /// specified
  final String suggestedUsername;

  static const String constructor = 'keyboardButtonTypeRequestManagedBot';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'suggested_name': suggestedName,
    'suggested_username': suggestedUsername,
    '@type': constructor,
  };

  static KeyboardButtonTypeRequestManagedBot? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return KeyboardButtonTypeRequestManagedBot(
      id: (json['id'] as int?) ?? 0,
      suggestedName: (json['suggested_name'] as String?) ?? '',
      suggestedUsername: (json['suggested_username'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A button that sends the user's phone number when pressed; available only
/// in private chats
@immutable
final class KeyboardButtonTypeRequestPhoneNumber extends KeyboardButtonType {
  const KeyboardButtonTypeRequestPhoneNumber();

  static const String constructor = 'keyboardButtonTypeRequestPhoneNumber';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static KeyboardButtonTypeRequestPhoneNumber? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const KeyboardButtonTypeRequestPhoneNumber();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A button that allows the user to create and send a poll when pressed;
/// available only in private chats
@immutable
final class KeyboardButtonTypeRequestPoll extends KeyboardButtonType {
  KeyboardButtonTypeRequestPoll({
    required this.forceRegular,
    required this.forceQuiz,
  });

  /// [forceRegular] If true, only regular polls must be allowed to create
  final bool forceRegular;

  /// [forceQuiz] If true, only polls in quiz mode must be allowed to create
  final bool forceQuiz;

  static const String constructor = 'keyboardButtonTypeRequestPoll';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'force_regular': forceRegular,
    'force_quiz': forceQuiz,
    '@type': constructor,
  };

  static KeyboardButtonTypeRequestPoll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return KeyboardButtonTypeRequestPoll(
      forceRegular: (json['force_regular'] as bool?) ?? false,
      forceQuiz: (json['force_quiz'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A button that requests users to be shared by the current user; available
/// only in private chats. Use the method shareUsersWithBot to complete the
/// request
@immutable
final class KeyboardButtonTypeRequestUsers extends KeyboardButtonType {
  KeyboardButtonTypeRequestUsers({
    required this.id,
    required this.restrictUserIsBot,
    required this.userIsBot,
    required this.restrictUserIsPremium,
    required this.userIsPremium,
    required this.maxQuantity,
    required this.requestName,
    required this.requestUsername,
    required this.requestPhoto,
  });

  /// [id] Unique button identifier
  final int id;

  /// [restrictUserIsBot] True, if the shared users must or must not be bots
  final bool restrictUserIsBot;

  /// [userIsBot] True, if the shared users must be bots; otherwise, the shared
  /// users must not be bots. Ignored if restrict_user_is_bot is false
  final bool userIsBot;

  /// [restrictUserIsPremium] True, if the shared users must or must not be
  /// Telegram Premium users
  final bool restrictUserIsPremium;

  /// [userIsPremium] True, if the shared users must be Telegram Premium users;
  /// otherwise, the shared users must not be Telegram Premium users. Ignored if
  /// restrict_user_is_premium is false
  final bool userIsPremium;

  /// [maxQuantity] The maximum number of users to share
  final int maxQuantity;

  /// [requestName] Pass true to request name of the users; bots only
  final bool requestName;

  /// [requestUsername] Pass true to request username of the users; bots only
  final bool requestUsername;

  /// [requestPhoto] Pass true to request photo of the users; bots only
  final bool requestPhoto;

  static const String constructor = 'keyboardButtonTypeRequestUsers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'restrict_user_is_bot': restrictUserIsBot,
    'user_is_bot': userIsBot,
    'restrict_user_is_premium': restrictUserIsPremium,
    'user_is_premium': userIsPremium,
    'max_quantity': maxQuantity,
    'request_name': requestName,
    'request_username': requestUsername,
    'request_photo': requestPhoto,
    '@type': constructor,
  };

  static KeyboardButtonTypeRequestUsers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return KeyboardButtonTypeRequestUsers(
      id: (json['id'] as int?) ?? 0,
      restrictUserIsBot: (json['restrict_user_is_bot'] as bool?) ?? false,
      userIsBot: (json['user_is_bot'] as bool?) ?? false,
      restrictUserIsPremium:
          (json['restrict_user_is_premium'] as bool?) ?? false,
      userIsPremium: (json['user_is_premium'] as bool?) ?? false,
      maxQuantity: (json['max_quantity'] as int?) ?? 0,
      requestName: (json['request_name'] as bool?) ?? false,
      requestUsername: (json['request_username'] as bool?) ?? false,
      requestPhoto: (json['request_photo'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A simple button, with text that must be sent when the button is pressed
@immutable
final class KeyboardButtonTypeText extends KeyboardButtonType {
  const KeyboardButtonTypeText();

  static const String constructor = 'keyboardButtonTypeText';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static KeyboardButtonTypeText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const KeyboardButtonTypeText();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A button that opens a Web App by calling getWebAppUrl
@immutable
final class KeyboardButtonTypeWebApp extends KeyboardButtonType {
  KeyboardButtonTypeWebApp({required this.url});

  /// [url] An HTTP URL to pass to getWebAppUrl
  final String url;

  static const String constructor = 'keyboardButtonTypeWebApp';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    '@type': constructor,
  };

  static KeyboardButtonTypeWebApp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return KeyboardButtonTypeWebApp(url: (json['url'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
