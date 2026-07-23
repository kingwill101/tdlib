import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes actions that a user is allowed to take in a chat
@immutable
final class ChatPermissions extends TdObject {
  ChatPermissions({
    required this.canSendBasicMessages,
    required this.canSendAudios,
    required this.canSendDocuments,
    required this.canSendPhotos,
    required this.canSendVideos,
    required this.canSendVideoNotes,
    required this.canSendVoiceNotes,
    required this.canSendPolls,
    required this.canSendOtherMessages,
    required this.canAddLinkPreviews,
    required this.canReactToMessages,
    required this.canEditTag,
    required this.canChangeInfo,
    required this.canInviteUsers,
    required this.canPinMessages,
    required this.canCreateTopics,
  });

  /// [canSendBasicMessages] True, if the user can send text messages, contacts,
  /// giveaways, giveaway winners, invoices, locations, and venues
  final bool canSendBasicMessages;

  /// [canSendAudios] True, if the user can send music files
  final bool canSendAudios;

  /// [canSendDocuments] True, if the user can send documents
  final bool canSendDocuments;

  /// [canSendPhotos] True, if the user can send photos
  final bool canSendPhotos;

  /// [canSendVideos] True, if the user can send videos
  final bool canSendVideos;

  /// [canSendVideoNotes] True, if the user can send video notes
  final bool canSendVideoNotes;

  /// [canSendVoiceNotes] True, if the user can send voice notes
  final bool canSendVoiceNotes;

  /// [canSendPolls] True, if the user can send polls and checklists
  final bool canSendPolls;

  /// [canSendOtherMessages] True, if the user can send animations, games,
  /// stickers, and dice and use inline bots
  final bool canSendOtherMessages;

  /// [canAddLinkPreviews] True, if the user may add a link preview to their
  /// messages
  final bool canAddLinkPreviews;

  /// [canReactToMessages] True, if the user can react to messages
  final bool canReactToMessages;

  /// [canEditTag] True, if the user may change the tag of self
  final bool canEditTag;

  /// [canChangeInfo] True, if the user can change the chat title, photo, and
  /// other settings
  final bool canChangeInfo;

  /// [canInviteUsers] True, if the user can invite new users to the chat
  final bool canInviteUsers;

  /// [canPinMessages] True, if the user can pin messages
  final bool canPinMessages;

  /// [canCreateTopics] True, if the user can create topics
  final bool canCreateTopics;

  static const String constructor = 'chatPermissions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'can_send_basic_messages': canSendBasicMessages,
    'can_send_audios': canSendAudios,
    'can_send_documents': canSendDocuments,
    'can_send_photos': canSendPhotos,
    'can_send_videos': canSendVideos,
    'can_send_video_notes': canSendVideoNotes,
    'can_send_voice_notes': canSendVoiceNotes,
    'can_send_polls': canSendPolls,
    'can_send_other_messages': canSendOtherMessages,
    'can_add_link_previews': canAddLinkPreviews,
    'can_react_to_messages': canReactToMessages,
    'can_edit_tag': canEditTag,
    'can_change_info': canChangeInfo,
    'can_invite_users': canInviteUsers,
    'can_pin_messages': canPinMessages,
    'can_create_topics': canCreateTopics,
    '@type': constructor,
  };

  static ChatPermissions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatPermissions(
      canSendBasicMessages: (json['can_send_basic_messages'] as bool?) ?? false,
      canSendAudios: (json['can_send_audios'] as bool?) ?? false,
      canSendDocuments: (json['can_send_documents'] as bool?) ?? false,
      canSendPhotos: (json['can_send_photos'] as bool?) ?? false,
      canSendVideos: (json['can_send_videos'] as bool?) ?? false,
      canSendVideoNotes: (json['can_send_video_notes'] as bool?) ?? false,
      canSendVoiceNotes: (json['can_send_voice_notes'] as bool?) ?? false,
      canSendPolls: (json['can_send_polls'] as bool?) ?? false,
      canSendOtherMessages: (json['can_send_other_messages'] as bool?) ?? false,
      canAddLinkPreviews: (json['can_add_link_previews'] as bool?) ?? false,
      canReactToMessages: (json['can_react_to_messages'] as bool?) ?? false,
      canEditTag: (json['can_edit_tag'] as bool?) ?? false,
      canChangeInfo: (json['can_change_info'] as bool?) ?? false,
      canInviteUsers: (json['can_invite_users'] as bool?) ?? false,
      canPinMessages: (json['can_pin_messages'] as bool?) ?? false,
      canCreateTopics: (json['can_create_topics'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
