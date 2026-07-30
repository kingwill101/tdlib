import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes autosave settings
@immutable
final class AutosaveSettings extends TdObject {
  AutosaveSettings({
    this.privateChatSettings,
    this.groupSettings,
    this.channelSettings,
    required this.exceptions,
  });

  /// [privateChatSettings] Default autosave settings for private chats
  final ScopeAutosaveSettings? privateChatSettings;

  /// [groupSettings] Default autosave settings for basic group and supergroup
  /// chats
  final ScopeAutosaveSettings? groupSettings;

  /// [channelSettings] Default autosave settings for channel chats
  final ScopeAutosaveSettings? channelSettings;

  /// [exceptions] Autosave settings for specific chats
  final List<AutosaveSettingsException> exceptions;

  static const String constructor = 'autosaveSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'private_chat_settings': privateChatSettings?.toJson(),
    'group_settings': groupSettings?.toJson(),
    'channel_settings': channelSettings?.toJson(),
    'exceptions': exceptions.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static AutosaveSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AutosaveSettings(
      privateChatSettings: ScopeAutosaveSettings.fromJson(
        tdMapFromJson(json['private_chat_settings']),
      ),
      groupSettings: ScopeAutosaveSettings.fromJson(
        tdMapFromJson(json['group_settings']),
      ),
      channelSettings: ScopeAutosaveSettings.fromJson(
        tdMapFromJson(json['channel_settings']),
      ),
      exceptions: List<AutosaveSettingsException>.from(
        tdListFromJson(json['exceptions'])
            .map(
              (item) => AutosaveSettingsException.fromJson(tdMapFromJson(item)),
            )
            .whereType<AutosaveSettingsException>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
