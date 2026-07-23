import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes source of a keyboard button
@immutable
sealed class KeyboardButtonSource extends TdObject {
  const KeyboardButtonSource();

  static const String constructor = 'keyboardButtonSource';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [KeyboardButtonSourceMessage]
  /// [KeyboardButtonSourceWebApp]
  static KeyboardButtonSource? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case KeyboardButtonSourceMessage.constructor:
        return KeyboardButtonSourceMessage.fromJson(json);

      case KeyboardButtonSourceWebApp.constructor:
        return KeyboardButtonSourceWebApp.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The button is from a bot's message
@immutable
final class KeyboardButtonSourceMessage extends KeyboardButtonSource {
  KeyboardButtonSourceMessage({required this.chatId, required this.messageId});

  /// [chatId] Identifier of the chat with the message
  final int chatId;

  /// [messageId] Identifier of the message with the button
  final int messageId;

  static const String constructor = 'keyboardButtonSourceMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    '@type': constructor,
  };

  static KeyboardButtonSourceMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return KeyboardButtonSourceMessage(
      chatId: (json['chat_id'] as int?) ?? 0,
      messageId: (json['message_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The button is a prepared keyboard button from a Mini App received via
/// getPreparedKeyboardButton
@immutable
final class KeyboardButtonSourceWebApp extends KeyboardButtonSource {
  KeyboardButtonSourceWebApp({
    required this.botUserId,
    required this.preparedButtonId,
  });

  /// [botUserId] Identifier of the bot that created the button
  final int botUserId;

  /// [preparedButtonId] Identifier of the prepared button
  final String preparedButtonId;

  static const String constructor = 'keyboardButtonSourceWebApp';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bot_user_id': botUserId,
    'prepared_button_id': preparedButtonId,
    '@type': constructor,
  };

  static KeyboardButtonSourceWebApp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return KeyboardButtonSourceWebApp(
      botUserId: (json['bot_user_id'] as int?) ?? 0,
      preparedButtonId: (json['prepared_button_id'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
