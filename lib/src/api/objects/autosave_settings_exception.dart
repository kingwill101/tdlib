import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains autosave settings for a chat, which overrides default settings
/// for the corresponding scope
@immutable
final class AutosaveSettingsException extends TdObject {
  AutosaveSettingsException({required this.chatId, this.settings});

  /// [chatId] Chat identifier
  final int chatId;

  /// [settings] Autosave settings for the chat
  final ScopeAutosaveSettings? settings;

  static const String constructor = 'autosaveSettingsException';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'settings': settings?.toJson(),
    '@type': constructor,
  };

  static AutosaveSettingsException? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AutosaveSettingsException(
      chatId: (json['chat_id'] as int?) ?? 0,
      settings: ScopeAutosaveSettings.fromJson(tdMapFromJson(json['settings'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
