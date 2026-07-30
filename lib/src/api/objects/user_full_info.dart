import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains full information about a user
@immutable
final class UserFullInfo extends TdObject {
  UserFullInfo({
    this.personalPhoto,
    this.photo,
    this.publicPhoto,
    this.communityId,
    this.blockList,
    required this.canBeCalled,
    required this.supportsVideoCalls,
    required this.hasPrivateCalls,
    required this.hasPrivateForwards,
    required this.hasRestrictedVoiceAndVideoNoteMessages,
    required this.hasPostedToProfileStories,
    required this.hasSponsoredMessagesEnabled,
    required this.needPhoneNumberPrivacyException,
    required this.setChatBackground,
    required this.usesUnofficialApp,
    this.bio,
    this.birthdate,
    required this.personalChatId,
    required this.giftCount,
    required this.groupInCommonCount,
    required this.incomingPaidMessageStarCount,
    required this.outgoingPaidMessageStarCount,
    this.giftSettings,
    this.botVerification,
    this.mainProfileTab,
    this.firstProfileAudio,
    this.rating,
    this.pendingRating,
    required this.pendingRatingDate,
    this.note,
    this.businessInfo,
    this.botInfo,
  });

  /// [personalPhoto] User profile photo set by the current user for the
  /// contact; may be null. If null and user.profile_photo is null, then the
  /// photo is empty; otherwise, it is unknown. If non-null, then it is the same
  /// photo as in user.profile_photo and chat.photo. This photo isn't returned
  /// in the list of user photos
  final ChatPhoto? personalPhoto;

  /// [photo] User profile photo; may be null. If null and user.profile_photo is
  /// null, then the photo is empty; otherwise, it is unknown. If non-null and
  /// personal_photo is null, then it is the same photo as in user.profile_photo
  /// and chat.photo
  final ChatPhoto? photo;

  /// [publicPhoto] User profile photo visible if the main photo is hidden by
  /// privacy settings; may be null. If null and user.profile_photo is null,
  /// then the photo is empty; otherwise, it is unknown. If non-null and both
  /// photo and personal_photo are null, then it is the same photo as in
  /// user.profile_photo and chat.photo. This photo isn't returned in the list
  /// of user photos
  final ChatPhoto? publicPhoto;

  /// [communityId] Identifier of the community to which chat with the bot was
  /// added; for bots only
  final int? communityId;

  /// [blockList] Block list to which the user is added; may be null if none
  final BlockList? blockList;

  /// [canBeCalled] True, if the user can be called
  final bool canBeCalled;

  /// [supportsVideoCalls] True, if a video call can be created with the user
  final bool supportsVideoCalls;

  /// [hasPrivateCalls] True, if the user can't be called due to their privacy
  /// settings
  final bool hasPrivateCalls;

  /// [hasPrivateForwards] True, if the user can't be linked in forwarded
  /// messages due to their privacy settings
  final bool hasPrivateForwards;

  /// [hasRestrictedVoiceAndVideoNoteMessages] True, if voice and video notes
  /// can't be sent or forwarded to the user
  final bool hasRestrictedVoiceAndVideoNoteMessages;

  /// [hasPostedToProfileStories] True, if the user has posted to profile
  /// stories
  final bool hasPostedToProfileStories;

  /// [hasSponsoredMessagesEnabled] True, if the user always enabled sponsored
  /// messages; known only for the current user
  final bool hasSponsoredMessagesEnabled;

  /// [needPhoneNumberPrivacyException] True, if the current user needs to
  /// explicitly allow to share their phone number with the user when the method
  /// addContact is used
  final bool needPhoneNumberPrivacyException;

  /// [setChatBackground] True, if the user set chat background for both chat
  /// users and it wasn't reverted yet
  final bool setChatBackground;

  /// [usesUnofficialApp] True, if the user uses an unofficial application that
  /// poses a security risk
  final bool usesUnofficialApp;

  /// [bio] A short user bio; may be null for bots
  final FormattedText? bio;

  /// [birthdate] Birthdate of the user; may be null if unknown
  final Birthdate? birthdate;

  /// [personalChatId] Identifier of the personal chat of the user; 0 if none
  final int personalChatId;

  /// [giftCount] Number of saved to profile gifts for other users or the total
  /// number of received gifts for the current user
  final int giftCount;

  /// [groupInCommonCount] Number of group chats where both the other user and
  /// the current user are a member; 0 for the current user
  final int groupInCommonCount;

  /// [incomingPaidMessageStarCount] Number of Telegram Stars that must be paid
  /// by the user for each sent message to the current user
  final int incomingPaidMessageStarCount;

  /// [outgoingPaidMessageStarCount] Number of Telegram Stars that must be paid
  /// by the current user for each sent message to the user
  final int outgoingPaidMessageStarCount;

  /// [giftSettings] Settings for gift receiving for the user
  final GiftSettings? giftSettings;

  /// [botVerification] Information about verification status of the user
  /// provided by a bot; may be null if none or unknown
  final BotVerification? botVerification;

  /// [mainProfileTab] The main tab chosen by the user; may be null if not
  /// chosen manually
  final ProfileTab? mainProfileTab;

  /// [firstProfileAudio] The first audio file added to the user's profile; may
  /// be null if none
  final Audio? firstProfileAudio;

  /// [rating] The current rating of the user; may be null if none
  final UserRating? rating;

  /// [pendingRating] The rating of the user after the next change; may be null
  /// if the user isn't the current user or there are no pending rating changes
  final UserRating? pendingRating;

  /// [pendingRatingDate] Unix timestamp when rating of the user will change to
  /// pending_rating; 0 if the user isn't the current user or there are no
  /// pending rating changes
  final int pendingRatingDate;

  /// [note] Note added to the user's contact; may be null if none
  final FormattedText? note;

  /// [businessInfo] Information about business settings for Telegram Business
  /// accounts; may be null if none
  final BusinessInfo? businessInfo;

  /// [botInfo] For bots, information about the bot; may be null if the user
  /// isn't a bot
  final BotInfo? botInfo;

  static const String constructor = 'userFullInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'personal_photo': personalPhoto?.toJson(),
    'photo': photo?.toJson(),
    'public_photo': publicPhoto?.toJson(),
    'community_id': communityId,
    'block_list': blockList?.toJson(),
    'can_be_called': canBeCalled,
    'supports_video_calls': supportsVideoCalls,
    'has_private_calls': hasPrivateCalls,
    'has_private_forwards': hasPrivateForwards,
    'has_restricted_voice_and_video_note_messages':
        hasRestrictedVoiceAndVideoNoteMessages,
    'has_posted_to_profile_stories': hasPostedToProfileStories,
    'has_sponsored_messages_enabled': hasSponsoredMessagesEnabled,
    'need_phone_number_privacy_exception': needPhoneNumberPrivacyException,
    'set_chat_background': setChatBackground,
    'uses_unofficial_app': usesUnofficialApp,
    'bio': bio?.toJson(),
    'birthdate': birthdate?.toJson(),
    'personal_chat_id': personalChatId,
    'gift_count': giftCount,
    'group_in_common_count': groupInCommonCount,
    'incoming_paid_message_star_count': incomingPaidMessageStarCount,
    'outgoing_paid_message_star_count': outgoingPaidMessageStarCount,
    'gift_settings': giftSettings?.toJson(),
    'bot_verification': botVerification?.toJson(),
    'main_profile_tab': mainProfileTab?.toJson(),
    'first_profile_audio': firstProfileAudio?.toJson(),
    'rating': rating?.toJson(),
    'pending_rating': pendingRating?.toJson(),
    'pending_rating_date': pendingRatingDate,
    'note': note?.toJson(),
    'business_info': businessInfo?.toJson(),
    'bot_info': botInfo?.toJson(),
    '@type': constructor,
  };

  static UserFullInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserFullInfo(
      personalPhoto: ChatPhoto.fromJson(tdMapFromJson(json['personal_photo'])),
      photo: ChatPhoto.fromJson(tdMapFromJson(json['photo'])),
      publicPhoto: ChatPhoto.fromJson(tdMapFromJson(json['public_photo'])),
      communityId: (json['community_id'] as int?),
      blockList: BlockList.fromJson(tdMapFromJson(json['block_list'])),
      canBeCalled: (json['can_be_called'] as bool?) ?? false,
      supportsVideoCalls: (json['supports_video_calls'] as bool?) ?? false,
      hasPrivateCalls: (json['has_private_calls'] as bool?) ?? false,
      hasPrivateForwards: (json['has_private_forwards'] as bool?) ?? false,
      hasRestrictedVoiceAndVideoNoteMessages:
          (json['has_restricted_voice_and_video_note_messages'] as bool?) ??
          false,
      hasPostedToProfileStories:
          (json['has_posted_to_profile_stories'] as bool?) ?? false,
      hasSponsoredMessagesEnabled:
          (json['has_sponsored_messages_enabled'] as bool?) ?? false,
      needPhoneNumberPrivacyException:
          (json['need_phone_number_privacy_exception'] as bool?) ?? false,
      setChatBackground: (json['set_chat_background'] as bool?) ?? false,
      usesUnofficialApp: (json['uses_unofficial_app'] as bool?) ?? false,
      bio: FormattedText.fromJson(tdMapFromJson(json['bio'])),
      birthdate: Birthdate.fromJson(tdMapFromJson(json['birthdate'])),
      personalChatId: (json['personal_chat_id'] as int?) ?? 0,
      giftCount: (json['gift_count'] as int?) ?? 0,
      groupInCommonCount: (json['group_in_common_count'] as int?) ?? 0,
      incomingPaidMessageStarCount:
          (json['incoming_paid_message_star_count'] as int?) ?? 0,
      outgoingPaidMessageStarCount:
          (json['outgoing_paid_message_star_count'] as int?) ?? 0,
      giftSettings: GiftSettings.fromJson(tdMapFromJson(json['gift_settings'])),
      botVerification: BotVerification.fromJson(
        tdMapFromJson(json['bot_verification']),
      ),
      mainProfileTab: ProfileTab.fromJson(
        tdMapFromJson(json['main_profile_tab']),
      ),
      firstProfileAudio: Audio.fromJson(
        tdMapFromJson(json['first_profile_audio']),
      ),
      rating: UserRating.fromJson(tdMapFromJson(json['rating'])),
      pendingRating: UserRating.fromJson(tdMapFromJson(json['pending_rating'])),
      pendingRatingDate: (json['pending_rating_date'] as int?) ?? 0,
      note: FormattedText.fromJson(tdMapFromJson(json['note'])),
      businessInfo: BusinessInfo.fromJson(tdMapFromJson(json['business_info'])),
      botInfo: BotInfo.fromJson(tdMapFromJson(json['bot_info'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
