import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a folder for user chats
@immutable
final class ChatFolder extends TdObject {
  ChatFolder({
    this.name,
    this.icon,
    required this.colorId,
    required this.isShareable,
    required this.pinnedChatIds,
    required this.includedChatIds,
    required this.excludedChatIds,
    required this.excludeMuted,
    required this.excludeRead,
    required this.excludeArchived,
    required this.includeContacts,
    required this.includeNonContacts,
    required this.includeBots,
    required this.includeGroups,
    required this.includeChannels,
  });

  /// [name] The name of the folder
  final ChatFolderName? name;

  /// [icon] The chosen icon for the chat folder; may be null. If null, use
  /// getChatFolderDefaultIconName to get default icon name for the folder
  final ChatFolderIcon? icon;

  /// [colorId] The identifier of the chosen color for the chat folder icon;
  /// from -1 to 6. If -1, then color is disabled. Can't be changed if folder
  /// tags are disabled or the current user doesn't have Telegram Premium
  /// subscription
  final int colorId;

  /// [isShareable] True, if at least one link has been created for the folder
  final bool isShareable;

  /// [pinnedChatIds] The chat identifiers of pinned chats in the folder. There
  /// can be up to getOption("chat_folder_chosen_chat_count_max") pinned and
  /// always included non-secret chats and the same number of secret chats, but
  /// the limit can be increased with Telegram Premium
  final List<int> pinnedChatIds;

  /// [includedChatIds] The chat identifiers of always included chats in the
  /// folder. There can be up to getOption("chat_folder_chosen_chat_count_max")
  /// pinned and always included non-secret chats and the same number of secret
  /// chats, but the limit can be increased with Telegram Premium
  final List<int> includedChatIds;

  /// [excludedChatIds] The chat identifiers of always excluded chats in the
  /// folder. There can be up to getOption("chat_folder_chosen_chat_count_max")
  /// always excluded non-secret chats and the same number of secret chats, but
  /// the limit can be increased with Telegram Premium
  final List<int> excludedChatIds;

  /// [excludeMuted] True, if muted chats need to be excluded
  final bool excludeMuted;

  /// [excludeRead] True, if read chats need to be excluded
  final bool excludeRead;

  /// [excludeArchived] True, if archived chats need to be excluded
  final bool excludeArchived;

  /// [includeContacts] True, if contacts need to be included
  final bool includeContacts;

  /// [includeNonContacts] True, if non-contact users need to be included
  final bool includeNonContacts;

  /// [includeBots] True, if bots need to be included
  final bool includeBots;

  /// [includeGroups] True, if basic groups and supergroups need to be included
  final bool includeGroups;

  /// [includeChannels] True, if channels need to be included
  final bool includeChannels;

  static const String constructor = 'chatFolder';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'name': name?.toJson(),
    'icon': icon?.toJson(),
    'color_id': colorId,
    'is_shareable': isShareable,
    'pinned_chat_ids': pinnedChatIds.map((item) => item).toList(),
    'included_chat_ids': includedChatIds.map((item) => item).toList(),
    'excluded_chat_ids': excludedChatIds.map((item) => item).toList(),
    'exclude_muted': excludeMuted,
    'exclude_read': excludeRead,
    'exclude_archived': excludeArchived,
    'include_contacts': includeContacts,
    'include_non_contacts': includeNonContacts,
    'include_bots': includeBots,
    'include_groups': includeGroups,
    'include_channels': includeChannels,
    '@type': constructor,
  };

  static ChatFolder? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatFolder(
      name: ChatFolderName.fromJson(tdMapFromJson(json['name'])),
      icon: ChatFolderIcon.fromJson(tdMapFromJson(json['icon'])),
      colorId: (json['color_id'] as int?) ?? 0,
      isShareable: (json['is_shareable'] as bool?) ?? false,
      pinnedChatIds: List<int>.from(
        tdListFromJson(
          json['pinned_chat_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      includedChatIds: List<int>.from(
        tdListFromJson(
          json['included_chat_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      excludedChatIds: List<int>.from(
        tdListFromJson(
          json['excluded_chat_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      excludeMuted: (json['exclude_muted'] as bool?) ?? false,
      excludeRead: (json['exclude_read'] as bool?) ?? false,
      excludeArchived: (json['exclude_archived'] as bool?) ?? false,
      includeContacts: (json['include_contacts'] as bool?) ?? false,
      includeNonContacts: (json['include_non_contacts'] as bool?) ?? false,
      includeBots: (json['include_bots'] as bool?) ?? false,
      includeGroups: (json['include_groups'] as bool?) ?? false,
      includeChannels: (json['include_channels'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
