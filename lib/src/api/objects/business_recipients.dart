import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes private chats chosen for automatic interaction with a business
@immutable
final class BusinessRecipients extends TdObject {
  BusinessRecipients({
    required this.chatIds,
    required this.excludedChatIds,
    required this.selectExistingChats,
    required this.selectNewChats,
    required this.selectContacts,
    required this.selectNonContacts,
    required this.excludeSelected,
  });

  /// [chatIds] Identifiers of selected private chats
  final List<int> chatIds;

  /// [excludedChatIds] Identifiers of private chats that are always excluded;
  /// for businessConnectedBot only
  final List<int> excludedChatIds;

  /// [selectExistingChats] True, if all existing private chats are selected
  final bool selectExistingChats;

  /// [selectNewChats] True, if all new private chats are selected
  final bool selectNewChats;

  /// [selectContacts] True, if all private chats with contacts are selected
  final bool selectContacts;

  /// [selectNonContacts] True, if all private chats with non-contacts are
  /// selected
  final bool selectNonContacts;

  /// [excludeSelected] If true, then all private chats except the selected are
  /// chosen. Otherwise, only the selected chats are chosen
  final bool excludeSelected;

  static const String constructor = 'businessRecipients';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_ids': chatIds.map((item) => item).toList(),
    'excluded_chat_ids': excludedChatIds.map((item) => item).toList(),
    'select_existing_chats': selectExistingChats,
    'select_new_chats': selectNewChats,
    'select_contacts': selectContacts,
    'select_non_contacts': selectNonContacts,
    'exclude_selected': excludeSelected,
    '@type': constructor,
  };

  static BusinessRecipients? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessRecipients(
      chatIds: List<int>.from(
        tdListFromJson(
          json['chat_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      excludedChatIds: List<int>.from(
        tdListFromJson(
          json['excluded_chat_ids'],
        ).map((item) => int.tryParse((item as dynamic)?.toString() ?? '') ?? 0),
      ),
      selectExistingChats: (json['select_existing_chats'] as bool?) ?? false,
      selectNewChats: (json['select_new_chats'] as bool?) ?? false,
      selectContacts: (json['select_contacts'] as bool?) ?? false,
      selectNonContacts: (json['select_non_contacts'] as bool?) ?? false,
      excludeSelected: (json['exclude_selected'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
