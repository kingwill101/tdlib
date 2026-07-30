import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes scope of autosave settings
@immutable
sealed class AutosaveSettingsScope extends TdObject {
  const AutosaveSettingsScope();

  static const String constructor = 'autosaveSettingsScope';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [AutosaveSettingsScopeChannelChats]
  /// [AutosaveSettingsScopeChat]
  /// [AutosaveSettingsScopeGroupChats]
  /// [AutosaveSettingsScopePrivateChats]
  static AutosaveSettingsScope? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case AutosaveSettingsScopeChannelChats.constructor:
        return AutosaveSettingsScopeChannelChats.fromJson(json);

      case AutosaveSettingsScopeChat.constructor:
        return AutosaveSettingsScopeChat.fromJson(json);

      case AutosaveSettingsScopeGroupChats.constructor:
        return AutosaveSettingsScopeGroupChats.fromJson(json);

      case AutosaveSettingsScopePrivateChats.constructor:
        return AutosaveSettingsScopePrivateChats.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Autosave settings applied to all channel chats without chat-specific
/// settings
@immutable
final class AutosaveSettingsScopeChannelChats extends AutosaveSettingsScope {
  const AutosaveSettingsScopeChannelChats();

  static const String constructor = 'autosaveSettingsScopeChannelChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static AutosaveSettingsScopeChannelChats? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const AutosaveSettingsScopeChannelChats();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Autosave settings applied to a chat
@immutable
final class AutosaveSettingsScopeChat extends AutosaveSettingsScope {
  AutosaveSettingsScopeChat({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  static const String constructor = 'autosaveSettingsScopeChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    '@type': constructor,
  };

  static AutosaveSettingsScopeChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AutosaveSettingsScopeChat(chatId: (json['chat_id'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Autosave settings applied to all basic group and supergroup chats without
/// chat-specific settings
@immutable
final class AutosaveSettingsScopeGroupChats extends AutosaveSettingsScope {
  const AutosaveSettingsScopeGroupChats();

  static const String constructor = 'autosaveSettingsScopeGroupChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static AutosaveSettingsScopeGroupChats? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AutosaveSettingsScopeGroupChats();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Autosave settings applied to all private chats without chat-specific
/// settings
@immutable
final class AutosaveSettingsScopePrivateChats extends AutosaveSettingsScope {
  const AutosaveSettingsScopePrivateChats();

  static const String constructor = 'autosaveSettingsScopePrivateChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static AutosaveSettingsScopePrivateChats? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const AutosaveSettingsScopePrivateChats();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
