import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an internal https://t.me or tg: link, which must be processed by
/// the application in a special way
@immutable
sealed class InternalLinkType extends TdObject {
  const InternalLinkType();

  static const String constructor = 'internalLinkType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [InternalLinkTypeAttachmentMenuBot]
  /// [InternalLinkTypeAuthenticationCode]
  /// [InternalLinkTypeBackground]
  /// [InternalLinkTypeBotAddToChannel]
  /// [InternalLinkTypeBotStart]
  /// [InternalLinkTypeBotStartInGroup]
  /// [InternalLinkTypeBusinessChat]
  /// [InternalLinkTypeCallsPage]
  /// [InternalLinkTypeChatAffiliateProgram]
  /// [InternalLinkTypeChatBoost]
  /// [InternalLinkTypeChatFolderInvite]
  /// [InternalLinkTypeChatInvite]
  /// [InternalLinkTypeChatSelection]
  /// [InternalLinkTypeContactsPage]
  /// [InternalLinkTypeDirectMessagesChat]
  /// [InternalLinkTypeGame]
  /// [InternalLinkTypeGiftAuction]
  /// [InternalLinkTypeGiftCollection]
  /// [InternalLinkTypeGroupCall]
  /// [InternalLinkTypeInstantView]
  /// [InternalLinkTypeInvoice]
  /// [InternalLinkTypeLanguagePack]
  /// [InternalLinkTypeLiveStory]
  /// [InternalLinkTypeMainWebApp]
  /// [InternalLinkTypeMessage]
  /// [InternalLinkTypeMessageDraft]
  /// [InternalLinkTypeMyProfilePage]
  /// [InternalLinkTypeNewChannelChat]
  /// [InternalLinkTypeNewGroupChat]
  /// [InternalLinkTypeNewPrivateChat]
  /// [InternalLinkTypeNewStory]
  /// [InternalLinkTypeOauth]
  /// [InternalLinkTypePassportDataRequest]
  /// [InternalLinkTypePhoneNumberConfirmation]
  /// [InternalLinkTypePremiumFeaturesPage]
  /// [InternalLinkTypePremiumGiftCode]
  /// [InternalLinkTypePremiumGiftPurchase]
  /// [InternalLinkTypeProxy]
  /// [InternalLinkTypePublicChat]
  /// [InternalLinkTypeQrCodeAuthentication]
  /// [InternalLinkTypeRequestManagedBot]
  /// [InternalLinkTypeRestorePurchases]
  /// [InternalLinkTypeSavedMessages]
  /// [InternalLinkTypeSearch]
  /// [InternalLinkTypeSettings]
  /// [InternalLinkTypeStarPurchase]
  /// [InternalLinkTypeStickerSet]
  /// [InternalLinkTypeStory]
  /// [InternalLinkTypeStoryAlbum]
  /// [InternalLinkTypeTextCompositionStyle]
  /// [InternalLinkTypeTheme]
  /// [InternalLinkTypeUnknownDeepLink]
  /// [InternalLinkTypeUpgradedGift]
  /// [InternalLinkTypeUserPhoneNumber]
  /// [InternalLinkTypeUserToken]
  /// [InternalLinkTypeVideoChat]
  /// [InternalLinkTypeWebApp]
  static InternalLinkType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InternalLinkTypeAttachmentMenuBot.constructor:
        return InternalLinkTypeAttachmentMenuBot.fromJson(json);

      case InternalLinkTypeAuthenticationCode.constructor:
        return InternalLinkTypeAuthenticationCode.fromJson(json);

      case InternalLinkTypeBackground.constructor:
        return InternalLinkTypeBackground.fromJson(json);

      case InternalLinkTypeBotAddToChannel.constructor:
        return InternalLinkTypeBotAddToChannel.fromJson(json);

      case InternalLinkTypeBotStart.constructor:
        return InternalLinkTypeBotStart.fromJson(json);

      case InternalLinkTypeBotStartInGroup.constructor:
        return InternalLinkTypeBotStartInGroup.fromJson(json);

      case InternalLinkTypeBusinessChat.constructor:
        return InternalLinkTypeBusinessChat.fromJson(json);

      case InternalLinkTypeCallsPage.constructor:
        return InternalLinkTypeCallsPage.fromJson(json);

      case InternalLinkTypeChatAffiliateProgram.constructor:
        return InternalLinkTypeChatAffiliateProgram.fromJson(json);

      case InternalLinkTypeChatBoost.constructor:
        return InternalLinkTypeChatBoost.fromJson(json);

      case InternalLinkTypeChatFolderInvite.constructor:
        return InternalLinkTypeChatFolderInvite.fromJson(json);

      case InternalLinkTypeChatInvite.constructor:
        return InternalLinkTypeChatInvite.fromJson(json);

      case InternalLinkTypeChatSelection.constructor:
        return InternalLinkTypeChatSelection.fromJson(json);

      case InternalLinkTypeContactsPage.constructor:
        return InternalLinkTypeContactsPage.fromJson(json);

      case InternalLinkTypeDirectMessagesChat.constructor:
        return InternalLinkTypeDirectMessagesChat.fromJson(json);

      case InternalLinkTypeGame.constructor:
        return InternalLinkTypeGame.fromJson(json);

      case InternalLinkTypeGiftAuction.constructor:
        return InternalLinkTypeGiftAuction.fromJson(json);

      case InternalLinkTypeGiftCollection.constructor:
        return InternalLinkTypeGiftCollection.fromJson(json);

      case InternalLinkTypeGroupCall.constructor:
        return InternalLinkTypeGroupCall.fromJson(json);

      case InternalLinkTypeInstantView.constructor:
        return InternalLinkTypeInstantView.fromJson(json);

      case InternalLinkTypeInvoice.constructor:
        return InternalLinkTypeInvoice.fromJson(json);

      case InternalLinkTypeLanguagePack.constructor:
        return InternalLinkTypeLanguagePack.fromJson(json);

      case InternalLinkTypeLiveStory.constructor:
        return InternalLinkTypeLiveStory.fromJson(json);

      case InternalLinkTypeMainWebApp.constructor:
        return InternalLinkTypeMainWebApp.fromJson(json);

      case InternalLinkTypeMessage.constructor:
        return InternalLinkTypeMessage.fromJson(json);

      case InternalLinkTypeMessageDraft.constructor:
        return InternalLinkTypeMessageDraft.fromJson(json);

      case InternalLinkTypeMyProfilePage.constructor:
        return InternalLinkTypeMyProfilePage.fromJson(json);

      case InternalLinkTypeNewChannelChat.constructor:
        return InternalLinkTypeNewChannelChat.fromJson(json);

      case InternalLinkTypeNewGroupChat.constructor:
        return InternalLinkTypeNewGroupChat.fromJson(json);

      case InternalLinkTypeNewPrivateChat.constructor:
        return InternalLinkTypeNewPrivateChat.fromJson(json);

      case InternalLinkTypeNewStory.constructor:
        return InternalLinkTypeNewStory.fromJson(json);

      case InternalLinkTypeOauth.constructor:
        return InternalLinkTypeOauth.fromJson(json);

      case InternalLinkTypePassportDataRequest.constructor:
        return InternalLinkTypePassportDataRequest.fromJson(json);

      case InternalLinkTypePhoneNumberConfirmation.constructor:
        return InternalLinkTypePhoneNumberConfirmation.fromJson(json);

      case InternalLinkTypePremiumFeaturesPage.constructor:
        return InternalLinkTypePremiumFeaturesPage.fromJson(json);

      case InternalLinkTypePremiumGiftCode.constructor:
        return InternalLinkTypePremiumGiftCode.fromJson(json);

      case InternalLinkTypePremiumGiftPurchase.constructor:
        return InternalLinkTypePremiumGiftPurchase.fromJson(json);

      case InternalLinkTypeProxy.constructor:
        return InternalLinkTypeProxy.fromJson(json);

      case InternalLinkTypePublicChat.constructor:
        return InternalLinkTypePublicChat.fromJson(json);

      case InternalLinkTypeQrCodeAuthentication.constructor:
        return InternalLinkTypeQrCodeAuthentication.fromJson(json);

      case InternalLinkTypeRequestManagedBot.constructor:
        return InternalLinkTypeRequestManagedBot.fromJson(json);

      case InternalLinkTypeRestorePurchases.constructor:
        return InternalLinkTypeRestorePurchases.fromJson(json);

      case InternalLinkTypeSavedMessages.constructor:
        return InternalLinkTypeSavedMessages.fromJson(json);

      case InternalLinkTypeSearch.constructor:
        return InternalLinkTypeSearch.fromJson(json);

      case InternalLinkTypeSettings.constructor:
        return InternalLinkTypeSettings.fromJson(json);

      case InternalLinkTypeStarPurchase.constructor:
        return InternalLinkTypeStarPurchase.fromJson(json);

      case InternalLinkTypeStickerSet.constructor:
        return InternalLinkTypeStickerSet.fromJson(json);

      case InternalLinkTypeStory.constructor:
        return InternalLinkTypeStory.fromJson(json);

      case InternalLinkTypeStoryAlbum.constructor:
        return InternalLinkTypeStoryAlbum.fromJson(json);

      case InternalLinkTypeTextCompositionStyle.constructor:
        return InternalLinkTypeTextCompositionStyle.fromJson(json);

      case InternalLinkTypeTheme.constructor:
        return InternalLinkTypeTheme.fromJson(json);

      case InternalLinkTypeUnknownDeepLink.constructor:
        return InternalLinkTypeUnknownDeepLink.fromJson(json);

      case InternalLinkTypeUpgradedGift.constructor:
        return InternalLinkTypeUpgradedGift.fromJson(json);

      case InternalLinkTypeUserPhoneNumber.constructor:
        return InternalLinkTypeUserPhoneNumber.fromJson(json);

      case InternalLinkTypeUserToken.constructor:
        return InternalLinkTypeUserToken.fromJson(json);

      case InternalLinkTypeVideoChat.constructor:
        return InternalLinkTypeVideoChat.fromJson(json);

      case InternalLinkTypeWebApp.constructor:
        return InternalLinkTypeWebApp.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to an attachment menu bot to be opened in the specified
/// or a chosen chat. Process given target_chat to open the chat. Then, call
/// searchPublicChat with the given bot username, check that the user is a bot
/// and can be added to attachment menu. Then, use getAttachmentMenuBot to
/// receive information about the bot. If the bot isn't added to attachment
/// menu, then show a disclaimer about Mini Apps being third-party
/// applications, ask the user to accept their Terms of service and confirm
/// adding the bot to side and attachment menu. If the user accept the terms
/// and confirms adding, then use toggleBotIsAddedToAttachmentMenu to add the
/// bot. If the attachment menu bot can't be used in the opened chat, show an
/// error to the user. If the bot is added to attachment menu and can be used
/// in the chat, then use openWebApp with the given URL
@immutable
final class InternalLinkTypeAttachmentMenuBot extends InternalLinkType {
  InternalLinkTypeAttachmentMenuBot({
    this.targetChat,
    required this.botUsername,
    required this.url,
  });

  /// [targetChat] Target chat to be opened
  final TargetChat? targetChat;

  /// [botUsername] Username of the bot
  final String botUsername;

  /// [url] URL to be passed to openWebApp
  final String url;

  static const String constructor = 'internalLinkTypeAttachmentMenuBot';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'target_chat': targetChat?.toJson(),
    'bot_username': botUsername,
    'url': url,
    '@type': constructor,
  };

  static InternalLinkTypeAttachmentMenuBot? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeAttachmentMenuBot(
      targetChat: TargetChat.fromJson(tdMapFromJson(json['target_chat'])),
      botUsername: (json['bot_username'] as String?) ?? '',
      url: (json['url'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link contains an authentication code. Call checkAuthenticationCode
/// with the code if the current authorization state is
/// authorizationStateWaitCode
@immutable
final class InternalLinkTypeAuthenticationCode extends InternalLinkType {
  InternalLinkTypeAuthenticationCode({required this.code});

  /// [code] The authentication code
  final String code;

  static const String constructor = 'internalLinkTypeAuthenticationCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'code': code,
    '@type': constructor,
  };

  static InternalLinkTypeAuthenticationCode? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeAuthenticationCode(
      code: (json['code'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a background. Call searchBackground with the given
/// background name to process the link. If background is found and the user
/// wants to apply it, then call setDefaultBackground
@immutable
final class InternalLinkTypeBackground extends InternalLinkType {
  InternalLinkTypeBackground({required this.backgroundName});

  /// [backgroundName] Name of the background
  final String backgroundName;

  static const String constructor = 'internalLinkTypeBackground';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'background_name': backgroundName,
    '@type': constructor,
  };

  static InternalLinkTypeBackground? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeBackground(
      backgroundName: (json['background_name'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a Telegram bot, which is expected to be added to a
/// channel chat as an administrator. Call searchPublicChat with the given bot
/// username and check that the user is a bot, ask the current user to select
/// a channel chat to add the bot to as an administrator. Then, call
/// getChatMember to receive the current bot rights in the chat and if the bot
/// already is an administrator, check that the current user can edit its
/// administrator rights and combine received rights with the requested
/// administrator rights. Then, show confirmation box to the user, and call
/// setChatMemberStatus with the chosen chat and confirmed rights
@immutable
final class InternalLinkTypeBotAddToChannel extends InternalLinkType {
  InternalLinkTypeBotAddToChannel({
    required this.botUsername,
    this.administratorRights,
  });

  /// [botUsername] Username of the bot
  final String botUsername;

  /// [administratorRights] Expected administrator rights for the bot
  final ChatAdministratorRights? administratorRights;

  static const String constructor = 'internalLinkTypeBotAddToChannel';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bot_username': botUsername,
    'administrator_rights': administratorRights?.toJson(),
    '@type': constructor,
  };

  static InternalLinkTypeBotAddToChannel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeBotAddToChannel(
      botUsername: (json['bot_username'] as String?) ?? '',
      administratorRights: ChatAdministratorRights.fromJson(
        tdMapFromJson(json['administrator_rights']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a chat with a Telegram bot. Call searchPublicChat
/// with the given bot username, check that the user is a bot, show START
/// button in the chat with the bot, and then call sendBotStartMessage with
/// the given start parameter after the button is pressed
@immutable
final class InternalLinkTypeBotStart extends InternalLinkType {
  InternalLinkTypeBotStart({
    required this.botUsername,
    required this.startParameter,
    required this.autostart,
  });

  /// [botUsername] Username of the bot
  final String botUsername;

  /// [startParameter] The parameter to be passed to sendBotStartMessage
  final String startParameter;

  /// [autostart] True, if sendBotStartMessage must be called automatically
  /// without showing the START button
  final bool autostart;

  static const String constructor = 'internalLinkTypeBotStart';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bot_username': botUsername,
    'start_parameter': startParameter,
    'autostart': autostart,
    '@type': constructor,
  };

  static InternalLinkTypeBotStart? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeBotStart(
      botUsername: (json['bot_username'] as String?) ?? '',
      startParameter: (json['start_parameter'] as String?) ?? '',
      autostart: (json['autostart'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a Telegram bot, which is expected to be added to a
/// group chat. Call searchPublicChat with the given bot username, check that
/// the user is a bot and can be added to groups, ask the current user to
/// select a basic group or a supergroup chat to add the bot to, taking into
/// account that bots can be added to a public supergroup only by
/// administrators of the supergroup. If administrator rights are provided by
/// the link, call getChatMember to receive the current bot rights in the chat
/// and if the bot already is an administrator, check that the current user
/// can edit its administrator rights, combine received rights with the
/// requested administrator rights, show confirmation box to the user, and
/// call setChatMemberStatus with the chosen chat and confirmed administrator
/// rights. Before call to setChatMemberStatus it may be required to upgrade
/// the chosen basic group chat to a supergroup chat. Then, if start_parameter
/// isn't empty, call sendBotStartMessage with the given start parameter and
/// the chosen chat; otherwise, just send /start message with bot's username
/// added to the chat
@immutable
final class InternalLinkTypeBotStartInGroup extends InternalLinkType {
  InternalLinkTypeBotStartInGroup({
    required this.botUsername,
    required this.startParameter,
    this.administratorRights,
  });

  /// [botUsername] Username of the bot
  final String botUsername;

  /// [startParameter] The parameter to be passed to sendBotStartMessage
  final String startParameter;

  /// [administratorRights] Expected administrator rights for the bot; may be
  /// null
  final ChatAdministratorRights? administratorRights;

  static const String constructor = 'internalLinkTypeBotStartInGroup';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bot_username': botUsername,
    'start_parameter': startParameter,
    'administrator_rights': administratorRights?.toJson(),
    '@type': constructor,
  };

  static InternalLinkTypeBotStartInGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeBotStartInGroup(
      botUsername: (json['bot_username'] as String?) ?? '',
      startParameter: (json['start_parameter'] as String?) ?? '',
      administratorRights: ChatAdministratorRights.fromJson(
        tdMapFromJson(json['administrator_rights']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a business chat. Use getBusinessChatLinkInfo with
/// the provided link name to get information about the link, then open
/// received private chat and replace chat draft with the provided text
@immutable
final class InternalLinkTypeBusinessChat extends InternalLinkType {
  InternalLinkTypeBusinessChat({required this.linkName});

  /// [linkName] Name of the link
  final String linkName;

  static const String constructor = 'internalLinkTypeBusinessChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'link_name': linkName,
    '@type': constructor,
  };

  static InternalLinkTypeBusinessChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeBusinessChat(
      linkName: (json['link_name'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to the Call tab or page
@immutable
final class InternalLinkTypeCallsPage extends InternalLinkType {
  InternalLinkTypeCallsPage({required this.section});

  /// [section] Section of the page; may be one of "", "all", "missed", "edit",
  /// "show-tab", "start-call"
  final String section;

  static const String constructor = 'internalLinkTypeCallsPage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'section': section,
    '@type': constructor,
  };

  static InternalLinkTypeCallsPage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeCallsPage(
      section: (json['section'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is an affiliate program link. Call searchChatAffiliateProgram
/// with the given username and referrer to process the link
@immutable
final class InternalLinkTypeChatAffiliateProgram extends InternalLinkType {
  InternalLinkTypeChatAffiliateProgram({
    required this.username,
    required this.referrer,
  });

  /// [username] Username to be passed to searchChatAffiliateProgram
  final String username;

  /// [referrer] Referrer to be passed to searchChatAffiliateProgram
  final String referrer;

  static const String constructor = 'internalLinkTypeChatAffiliateProgram';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'username': username,
    'referrer': referrer,
    '@type': constructor,
  };

  static InternalLinkTypeChatAffiliateProgram? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeChatAffiliateProgram(
      username: (json['username'] as String?) ?? '',
      referrer: (json['referrer'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to boost a Telegram chat. Call getChatBoostLinkInfo
/// with the given URL to process the link. If the chat is found, then call
/// getChatBoostStatus and getAvailableChatBoostSlots to get the current boost
/// status and check whether the chat can be boosted. If the user wants to
/// boost the chat and the chat can be boosted, then call boostChat
@immutable
final class InternalLinkTypeChatBoost extends InternalLinkType {
  InternalLinkTypeChatBoost({required this.url});

  /// [url] URL to be passed to getChatBoostLinkInfo
  final String url;

  static const String constructor = 'internalLinkTypeChatBoost';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    '@type': constructor,
  };

  static InternalLinkTypeChatBoost? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeChatBoost(url: (json['url'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is an invite link to a chat folder. Call
/// checkChatFolderInviteLink with the given invite link to process the link.
/// If the link is valid and the user wants to join the chat folder, then call
/// addChatFolderByInviteLink
@immutable
final class InternalLinkTypeChatFolderInvite extends InternalLinkType {
  InternalLinkTypeChatFolderInvite({required this.inviteLink});

  /// [inviteLink] Internal representation of the invite link
  final String inviteLink;

  static const String constructor = 'internalLinkTypeChatFolderInvite';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'invite_link': inviteLink,
    '@type': constructor,
  };

  static InternalLinkTypeChatFolderInvite? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeChatFolderInvite(
      inviteLink: (json['invite_link'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a chat invite link. Call checkChatInviteLink with the given
/// invite link to process the link. If the link is valid and the user wants
/// to join the chat, then call joinChatByInviteLink
@immutable
final class InternalLinkTypeChatInvite extends InternalLinkType {
  InternalLinkTypeChatInvite({required this.inviteLink});

  /// [inviteLink] Internal representation of the invite link
  final String inviteLink;

  static const String constructor = 'internalLinkTypeChatInvite';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'invite_link': inviteLink,
    '@type': constructor,
  };

  static InternalLinkTypeChatInvite? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeChatInvite(
      inviteLink: (json['invite_link'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link that allows to select some chats
@immutable
final class InternalLinkTypeChatSelection extends InternalLinkType {
  const InternalLinkTypeChatSelection();

  static const String constructor = 'internalLinkTypeChatSelection';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static InternalLinkTypeChatSelection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeChatSelection();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to the Contacts tab or page
@immutable
final class InternalLinkTypeContactsPage extends InternalLinkType {
  InternalLinkTypeContactsPage({required this.section});

  /// [section] Section of the page; may be one of "", "search", "sort", "new",
  /// "invite", "manage"
  final String section;

  static const String constructor = 'internalLinkTypeContactsPage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'section': section,
    '@type': constructor,
  };

  static InternalLinkTypeContactsPage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeContactsPage(
      section: (json['section'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a channel direct messages chat by username of the
/// channel. Call searchPublicChat with the given chat username to process the
/// link. If the chat is found and is channel, open the direct messages chat
/// of the channel
@immutable
final class InternalLinkTypeDirectMessagesChat extends InternalLinkType {
  InternalLinkTypeDirectMessagesChat({required this.channelUsername});

  /// [channelUsername] Username of the channel
  final String channelUsername;

  static const String constructor = 'internalLinkTypeDirectMessagesChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'channel_username': channelUsername,
    '@type': constructor,
  };

  static InternalLinkTypeDirectMessagesChat? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeDirectMessagesChat(
      channelUsername: (json['channel_username'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a game. Call searchPublicChat with the given bot
/// username, check that the user is a bot, ask the current user to select a
/// chat to send the game, and then call sendMessage with inputMessageGame
@immutable
final class InternalLinkTypeGame extends InternalLinkType {
  InternalLinkTypeGame({
    required this.botUsername,
    required this.gameShortName,
  });

  /// [botUsername] Username of the bot that owns the game
  final String botUsername;

  /// [gameShortName] Short name of the game
  final String gameShortName;

  static const String constructor = 'internalLinkTypeGame';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bot_username': botUsername,
    'game_short_name': gameShortName,
    '@type': constructor,
  };

  static InternalLinkTypeGame? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeGame(
      botUsername: (json['bot_username'] as String?) ?? '',
      gameShortName: (json['game_short_name'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a gift auction. Call getGiftAuctionState with the
/// given auction identifier to process the link
@immutable
final class InternalLinkTypeGiftAuction extends InternalLinkType {
  InternalLinkTypeGiftAuction({required this.auctionId});

  /// [auctionId] Unique identifier of the auction
  final String auctionId;

  static const String constructor = 'internalLinkTypeGiftAuction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'auction_id': auctionId,
    '@type': constructor,
  };

  static InternalLinkTypeGiftAuction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeGiftAuction(
      auctionId: (json['auction_id'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a gift collection. Call searchPublicChat with the
/// given username, then call getReceivedGifts with the received gift owner
/// identifier and the given collection identifier, then show the collection
/// if received
@immutable
final class InternalLinkTypeGiftCollection extends InternalLinkType {
  InternalLinkTypeGiftCollection({
    required this.giftOwnerUsername,
    required this.collectionId,
  });

  /// [giftOwnerUsername] Username of the owner of the gift collection
  final String giftOwnerUsername;

  /// [collectionId] Gift collection identifier
  final int collectionId;

  static const String constructor = 'internalLinkTypeGiftCollection';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift_owner_username': giftOwnerUsername,
    'collection_id': collectionId,
    '@type': constructor,
  };

  static InternalLinkTypeGiftCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeGiftCollection(
      giftOwnerUsername: (json['gift_owner_username'] as String?) ?? '',
      collectionId: (json['collection_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a group call that isn't bound to a chat. Use
/// getGroupCallParticipants to get the list of group call participants and
/// show them on the join group call screen. Call joinGroupCall with the given
/// invite_link to join the call
@immutable
final class InternalLinkTypeGroupCall extends InternalLinkType {
  InternalLinkTypeGroupCall({required this.inviteLink});

  /// [inviteLink] Internal representation of the invite link
  final String inviteLink;

  static const String constructor = 'internalLinkTypeGroupCall';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'invite_link': inviteLink,
    '@type': constructor,
  };

  static InternalLinkTypeGroupCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeGroupCall(
      inviteLink: (json['invite_link'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link must be opened in an Instant View. Call getWebPageInstantView
/// with the given URL to process the link. If Instant View is found, then
/// show it, otherwise, open the fallback URL in an external browser
@immutable
final class InternalLinkTypeInstantView extends InternalLinkType {
  InternalLinkTypeInstantView({required this.url, required this.fallbackUrl});

  /// [url] URL to be passed to getWebPageInstantView
  final String url;

  /// [fallbackUrl] An URL to open if getWebPageInstantView fails
  final String fallbackUrl;

  static const String constructor = 'internalLinkTypeInstantView';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    'fallback_url': fallbackUrl,
    '@type': constructor,
  };

  static InternalLinkTypeInstantView? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeInstantView(
      url: (json['url'] as String?) ?? '',
      fallbackUrl: (json['fallback_url'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to an invoice. Call getPaymentForm with the given
/// invoice name to process the link
@immutable
final class InternalLinkTypeInvoice extends InternalLinkType {
  InternalLinkTypeInvoice({required this.invoiceName});

  /// [invoiceName] Name of the invoice
  final String invoiceName;

  static const String constructor = 'internalLinkTypeInvoice';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'invoice_name': invoiceName,
    '@type': constructor,
  };

  static InternalLinkTypeInvoice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeInvoice(
      invoiceName: (json['invoice_name'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a language pack. Call getLanguagePackInfo with the
/// given language pack identifier to process the link. If the language pack
/// is found and the user wants to apply it, then call setOption for the
/// option "language_pack_id"
@immutable
final class InternalLinkTypeLanguagePack extends InternalLinkType {
  InternalLinkTypeLanguagePack({required this.languagePackId});

  /// [languagePackId] Language pack identifier
  final String languagePackId;

  static const String constructor = 'internalLinkTypeLanguagePack';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'language_pack_id': languagePackId,
    '@type': constructor,
  };

  static InternalLinkTypeLanguagePack? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeLanguagePack(
      languagePackId: (json['language_pack_id'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a live story. Call searchPublicChat with the given
/// chat username, then getChatActiveStories to get active stories in the
/// chat, then find a live story among active stories of the chat, and then
/// joinLiveStory to join the live story
@immutable
final class InternalLinkTypeLiveStory extends InternalLinkType {
  InternalLinkTypeLiveStory({required this.storyPosterUsername});

  /// [storyPosterUsername] Username of the poster of the story
  final String storyPosterUsername;

  static const String constructor = 'internalLinkTypeLiveStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story_poster_username': storyPosterUsername,
    '@type': constructor,
  };

  static InternalLinkTypeLiveStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeLiveStory(
      storyPosterUsername: (json['story_poster_username'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to the main Web App of a bot. Call searchPublicChat
/// with the given bot username, check that the user is a bot and has the main
/// Web App. If the bot can be added to attachment menu, then use
/// getAttachmentMenuBot to receive information about the bot, then if the bot
/// isn't added to side menu, show a disclaimer about Mini Apps being
/// third-party applications, ask the user to accept their Terms of service
/// and confirm adding the bot to side and attachment menu, then if the user
/// accepts the terms and confirms adding, use
/// toggleBotIsAddedToAttachmentMenu to add the bot. Then, use getMainWebApp
/// with the given start parameter and mode and open the returned URL as a Web
/// App
@immutable
final class InternalLinkTypeMainWebApp extends InternalLinkType {
  InternalLinkTypeMainWebApp({
    required this.botUsername,
    required this.startParameter,
    this.mode,
  });

  /// [botUsername] Username of the bot
  final String botUsername;

  /// [startParameter] Start parameter to be passed to getMainWebApp
  final String startParameter;

  /// [mode] The mode to be passed to getMainWebApp
  final WebAppOpenMode? mode;

  static const String constructor = 'internalLinkTypeMainWebApp';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bot_username': botUsername,
    'start_parameter': startParameter,
    'mode': mode?.toJson(),
    '@type': constructor,
  };

  static InternalLinkTypeMainWebApp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeMainWebApp(
      botUsername: (json['bot_username'] as String?) ?? '',
      startParameter: (json['start_parameter'] as String?) ?? '',
      mode: WebAppOpenMode.fromJson(tdMapFromJson(json['mode'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a Telegram message or a forum topic. Call
/// getMessageLinkInfo with the given URL to process the link, and then open
/// received forum topic or chat and show the message there
@immutable
final class InternalLinkTypeMessage extends InternalLinkType {
  InternalLinkTypeMessage({required this.url});

  /// [url] URL to be passed to getMessageLinkInfo
  final String url;

  static const String constructor = 'internalLinkTypeMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    '@type': constructor,
  };

  static InternalLinkTypeMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeMessage(url: (json['url'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link contains a message draft text. A share screen needs to be shown
/// to the user, then the chosen chat must be opened and the text is added to
/// the input field
@immutable
final class InternalLinkTypeMessageDraft extends InternalLinkType {
  InternalLinkTypeMessageDraft({this.text, required this.containsLink});

  /// [text] Message draft text
  final FormattedText? text;

  /// [containsLink] True, if the first line of the text contains a link. If
  /// true, the input field needs to be focused and the text after the link must
  /// be selected
  final bool containsLink;

  static const String constructor = 'internalLinkTypeMessageDraft';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'contains_link': containsLink,
    '@type': constructor,
  };

  static InternalLinkTypeMessageDraft? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeMessageDraft(
      text: FormattedText.fromJson(tdMapFromJson(json['text'])),
      containsLink: (json['contains_link'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to the My Profile application page
@immutable
final class InternalLinkTypeMyProfilePage extends InternalLinkType {
  InternalLinkTypeMyProfilePage({required this.section});

  /// [section] Section of the page; may be one of "", "posts",
  /// "posts/all-stories", "posts/add-album", "gifts", "archived-posts"
  final String section;

  static const String constructor = 'internalLinkTypeMyProfilePage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'section': section,
    '@type': constructor,
  };

  static InternalLinkTypeMyProfilePage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeMyProfilePage(
      section: (json['section'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to the screen for creating a new channel chat
@immutable
final class InternalLinkTypeNewChannelChat extends InternalLinkType {
  const InternalLinkTypeNewChannelChat();

  static const String constructor = 'internalLinkTypeNewChannelChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static InternalLinkTypeNewChannelChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeNewChannelChat();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to the screen for creating a new group chat
@immutable
final class InternalLinkTypeNewGroupChat extends InternalLinkType {
  const InternalLinkTypeNewGroupChat();

  static const String constructor = 'internalLinkTypeNewGroupChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static InternalLinkTypeNewGroupChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeNewGroupChat();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to the screen for creating a new private chat with a
/// contact
@immutable
final class InternalLinkTypeNewPrivateChat extends InternalLinkType {
  const InternalLinkTypeNewPrivateChat();

  static const String constructor = 'internalLinkTypeNewPrivateChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static InternalLinkTypeNewPrivateChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeNewPrivateChat();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to open the story posting interface
@immutable
final class InternalLinkTypeNewStory extends InternalLinkType {
  InternalLinkTypeNewStory({this.contentType});

  /// [contentType] The type of the content of the story to post; may be null if
  /// unspecified
  final StoryContentType? contentType;

  static const String constructor = 'internalLinkTypeNewStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'content_type': contentType?.toJson(),
    '@type': constructor,
  };

  static InternalLinkTypeNewStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeNewStory(
      contentType: StoryContentType.fromJson(
        tdMapFromJson(json['content_type']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is an OAuth link. Call getOauthLinkInfo with the given URL to
/// process the link if the link was received from outside of the application;
/// otherwise, ignore it. After getOauthLinkInfo, show the user confirmation
/// dialog and process it with checkOauthRequestMatchCode, acceptOauthRequest
/// or declineOauthRequest
@immutable
final class InternalLinkTypeOauth extends InternalLinkType {
  InternalLinkTypeOauth({required this.url});

  /// [url] URL to be passed to getOauthLinkInfo
  final String url;

  static const String constructor = 'internalLinkTypeOauth';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    '@type': constructor,
  };

  static InternalLinkTypeOauth? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeOauth(url: (json['url'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link contains a request of Telegram passport data. Call
/// getPassportAuthorizationForm with the given parameters to process the link
/// if the link was received from outside of the application; otherwise,
/// ignore it
@immutable
final class InternalLinkTypePassportDataRequest extends InternalLinkType {
  InternalLinkTypePassportDataRequest({
    required this.botUserId,
    required this.scope,
    required this.publicKey,
    required this.nonce,
    required this.callbackUrl,
  });

  /// [botUserId] User identifier of the service's bot; the corresponding user
  /// may be unknown yet
  final int botUserId;

  /// [scope] Telegram Passport element types requested by the service
  final String scope;

  /// [publicKey] Service's public key
  final String publicKey;

  /// [nonce] Unique request identifier provided by the service
  final String nonce;

  /// [callbackUrl] An HTTP URL to open once the request is finished, canceled,
  /// or failed with the parameters tg_passport=success, tg_passport=cancel, or
  /// tg_passport=error&error=... respectively. If empty, then onActivityResult
  /// method must be used to return response on Android, or the link
  /// tgbot{bot_user_id}://passport/success or
  /// tgbot{bot_user_id}://passport/cancel must be opened otherwise
  final String callbackUrl;

  static const String constructor = 'internalLinkTypePassportDataRequest';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bot_user_id': botUserId,
    'scope': scope,
    'public_key': publicKey,
    'nonce': nonce,
    'callback_url': callbackUrl,
    '@type': constructor,
  };

  static InternalLinkTypePassportDataRequest? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypePassportDataRequest(
      botUserId: (json['bot_user_id'] as int?) ?? 0,
      scope: (json['scope'] as String?) ?? '',
      publicKey: (json['public_key'] as String?) ?? '',
      nonce: (json['nonce'] as String?) ?? '',
      callbackUrl: (json['callback_url'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link can be used to confirm ownership of a phone number to prevent
/// account deletion. Call sendPhoneNumberCode with the given phone number and
/// with phoneNumberCodeTypeConfirmOwnership with the given hash to process
/// the link. If succeeded, call checkPhoneNumberCode to check entered by the
/// user code, or resendPhoneNumberCode to resend it
@immutable
final class InternalLinkTypePhoneNumberConfirmation extends InternalLinkType {
  InternalLinkTypePhoneNumberConfirmation({
    required this.hash,
    required this.phoneNumber,
  });

  /// [hash] Hash value from the link
  final String hash;

  /// [phoneNumber] Phone number value from the link
  final String phoneNumber;

  static const String constructor = 'internalLinkTypePhoneNumberConfirmation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'hash': hash,
    'phone_number': phoneNumber,
    '@type': constructor,
  };

  static InternalLinkTypePhoneNumberConfirmation? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypePhoneNumberConfirmation(
      hash: (json['hash'] as String?) ?? '',
      phoneNumber: (json['phone_number'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to the Premium features screen of the application from
/// which the user can subscribe to Telegram Premium. Call getPremiumFeatures
/// with the given referrer to process the link
@immutable
final class InternalLinkTypePremiumFeaturesPage extends InternalLinkType {
  InternalLinkTypePremiumFeaturesPage({required this.referrer});

  /// [referrer] Referrer specified in the link
  final String referrer;

  static const String constructor = 'internalLinkTypePremiumFeaturesPage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'referrer': referrer,
    '@type': constructor,
  };

  static InternalLinkTypePremiumFeaturesPage? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypePremiumFeaturesPage(
      referrer: (json['referrer'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link with a Telegram Premium gift code. Call
/// checkPremiumGiftCode with the given code to process the link. If the code
/// is valid and the user wants to apply it, then call applyPremiumGiftCode
@immutable
final class InternalLinkTypePremiumGiftCode extends InternalLinkType {
  InternalLinkTypePremiumGiftCode({required this.code});

  /// [code] The Telegram Premium gift code
  final String code;

  static const String constructor = 'internalLinkTypePremiumGiftCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'code': code,
    '@type': constructor,
  };

  static InternalLinkTypePremiumGiftCode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypePremiumGiftCode(
      code: (json['code'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to the screen for gifting Telegram Premium
/// subscriptions to friends via inputInvoiceTelegram with
/// telegramPaymentPurposePremiumGift payments or in-store purchases
@immutable
final class InternalLinkTypePremiumGiftPurchase extends InternalLinkType {
  InternalLinkTypePremiumGiftPurchase({required this.referrer});

  /// [referrer] Referrer specified in the link
  final String referrer;

  static const String constructor = 'internalLinkTypePremiumGiftPurchase';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'referrer': referrer,
    '@type': constructor,
  };

  static InternalLinkTypePremiumGiftPurchase? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypePremiumGiftPurchase(
      referrer: (json['referrer'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a proxy. Call addProxy with the given parameters to
/// process the link and add the proxy
@immutable
final class InternalLinkTypeProxy extends InternalLinkType {
  InternalLinkTypeProxy({this.proxy});

  /// [proxy] The proxy; may be null if the proxy is unsupported, in which case
  /// an alert can be shown to the user
  final Proxy? proxy;

  static const String constructor = 'internalLinkTypeProxy';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'proxy': proxy?.toJson(),
    '@type': constructor,
  };

  static InternalLinkTypeProxy? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeProxy(
      proxy: Proxy.fromJson(tdMapFromJson(json['proxy'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a chat by its username. Call searchPublicChat with
/// the given chat username to process the link. If the chat is found, open
/// its profile information screen or the chat itself. If draft text isn't
/// empty and the chat is a private chat with a regular user, then put the
/// draft text in the input field
@immutable
final class InternalLinkTypePublicChat extends InternalLinkType {
  InternalLinkTypePublicChat({
    required this.chatUsername,
    required this.draftText,
    required this.openProfile,
  });

  /// [chatUsername] Username of the chat
  final String chatUsername;

  /// [draftText] Draft text for message to send in the chat
  final String draftText;

  /// [openProfile] True, if chat profile information screen must be opened;
  /// otherwise, the chat itself must be opened
  final bool openProfile;

  static const String constructor = 'internalLinkTypePublicChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_username': chatUsername,
    'draft_text': draftText,
    'open_profile': openProfile,
    '@type': constructor,
  };

  static InternalLinkTypePublicChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypePublicChat(
      chatUsername: (json['chat_username'] as String?) ?? '',
      draftText: (json['draft_text'] as String?) ?? '',
      openProfile: (json['open_profile'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link can be used to login the current user on another device, but it
/// must be scanned from QR-code using in-app camera. An alert similar to
/// "This code can be used to allow someone to log in to your Telegram
/// account. To confirm Telegram login, please go to Settings
@immutable
final class InternalLinkTypeQrCodeAuthentication extends InternalLinkType {
  const InternalLinkTypeQrCodeAuthentication();

  static const String constructor = 'internalLinkTypeQrCodeAuthentication';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static InternalLinkTypeQrCodeAuthentication? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeQrCodeAuthentication();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a dialog for creating of a managed bot. Call
/// searchPublicChat with the given manager bot username. If the chat is
/// found, the chat is a chat with a bot and the bot has can_manage_bots ==
/// true, then show bot creation confirmation dialog with the given
/// suggested_bot_username and suggested_bot_name. If user agrees, call
/// createBot with via_link == true to create the bot
@immutable
final class InternalLinkTypeRequestManagedBot extends InternalLinkType {
  InternalLinkTypeRequestManagedBot({
    required this.managerBotUsername,
    required this.suggestedBotUsername,
    required this.suggestedBotName,
  });

  /// [managerBotUsername] Username of the bot which will manage the new bot
  final String managerBotUsername;

  /// [suggestedBotUsername] Suggested username for the bot; always ends with
  /// "bot" case-insensitive
  final String suggestedBotUsername;

  /// [suggestedBotName] Suggested name for the bot; may be empty if not
  /// specified
  final String suggestedBotName;

  static const String constructor = 'internalLinkTypeRequestManagedBot';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'manager_bot_username': managerBotUsername,
    'suggested_bot_username': suggestedBotUsername,
    'suggested_bot_name': suggestedBotName,
    '@type': constructor,
  };

  static InternalLinkTypeRequestManagedBot? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeRequestManagedBot(
      managerBotUsername: (json['manager_bot_username'] as String?) ?? '',
      suggestedBotUsername: (json['suggested_bot_username'] as String?) ?? '',
      suggestedBotName: (json['suggested_bot_name'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link forces restore of App Store purchases when opened. For official
/// iOS application only
@immutable
final class InternalLinkTypeRestorePurchases extends InternalLinkType {
  const InternalLinkTypeRestorePurchases();

  static const String constructor = 'internalLinkTypeRestorePurchases';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static InternalLinkTypeRestorePurchases? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeRestorePurchases();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to the Saved Messages chat. Call createPrivateChat with
/// getOption("my_id") and open the chat
@immutable
final class InternalLinkTypeSavedMessages extends InternalLinkType {
  const InternalLinkTypeSavedMessages();

  static const String constructor = 'internalLinkTypeSavedMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static InternalLinkTypeSavedMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeSavedMessages();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to the global chat and messages search field
@immutable
final class InternalLinkTypeSearch extends InternalLinkType {
  const InternalLinkTypeSearch();

  static const String constructor = 'internalLinkTypeSearch';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static InternalLinkTypeSearch? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeSearch();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to application settings
@immutable
final class InternalLinkTypeSettings extends InternalLinkType {
  InternalLinkTypeSettings({this.section});

  /// [section] Section of the application settings to open; may be null if none
  final SettingsSection? section;

  static const String constructor = 'internalLinkTypeSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'section': section?.toJson(),
    '@type': constructor,
  };

  static InternalLinkTypeSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeSettings(
      section: SettingsSection.fromJson(tdMapFromJson(json['section'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to the Telegram Star purchase section of the
/// application
@immutable
final class InternalLinkTypeStarPurchase extends InternalLinkType {
  InternalLinkTypeStarPurchase({
    required this.starCount,
    required this.purpose,
  });

  /// [starCount] The number of Telegram Stars that must be owned by the user
  final int starCount;

  /// [purpose] Purpose of Telegram Star purchase. Arbitrary string specified by
  /// the server, for example, "subs" if the Telegram Stars are required to
  /// extend channel subscriptions
  final String purpose;

  static const String constructor = 'internalLinkTypeStarPurchase';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'star_count': starCount,
    'purpose': purpose,
    '@type': constructor,
  };

  static InternalLinkTypeStarPurchase? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeStarPurchase(
      starCount: (json['star_count'] as int?) ?? 0,
      purpose: (json['purpose'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a sticker set. Call searchStickerSet with the given
/// sticker set name to process the link and show the sticker set. If the
/// sticker set is found and the user wants to add it, then call
/// changeStickerSet
@immutable
final class InternalLinkTypeStickerSet extends InternalLinkType {
  InternalLinkTypeStickerSet({
    required this.stickerSetName,
    required this.expectCustomEmoji,
  });

  /// [stickerSetName] Name of the sticker set
  final String stickerSetName;

  /// [expectCustomEmoji] True, if the sticker set is expected to contain custom
  /// emoji
  final bool expectCustomEmoji;

  static const String constructor = 'internalLinkTypeStickerSet';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sticker_set_name': stickerSetName,
    'expect_custom_emoji': expectCustomEmoji,
    '@type': constructor,
  };

  static InternalLinkTypeStickerSet? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeStickerSet(
      stickerSetName: (json['sticker_set_name'] as String?) ?? '',
      expectCustomEmoji: (json['expect_custom_emoji'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a story. Call searchPublicChat with the given poster
/// username, then call getStory with the received chat identifier and the
/// given story identifier, then show the story if received
@immutable
final class InternalLinkTypeStory extends InternalLinkType {
  InternalLinkTypeStory({
    required this.storyPosterUsername,
    required this.storyId,
  });

  /// [storyPosterUsername] Username of the poster of the story
  final String storyPosterUsername;

  /// [storyId] Story identifier
  final int storyId;

  static const String constructor = 'internalLinkTypeStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story_poster_username': storyPosterUsername,
    'story_id': storyId,
    '@type': constructor,
  };

  static InternalLinkTypeStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeStory(
      storyPosterUsername: (json['story_poster_username'] as String?) ?? '',
      storyId: (json['story_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to an album of stories. Call searchPublicChat with the
/// given username, then call getStoryAlbumStories with the received chat
/// identifier and the given story album identifier, then show the story album
/// if received
@immutable
final class InternalLinkTypeStoryAlbum extends InternalLinkType {
  InternalLinkTypeStoryAlbum({
    required this.storyAlbumOwnerUsername,
    required this.storyAlbumId,
  });

  /// [storyAlbumOwnerUsername] Username of the owner of the story album
  final String storyAlbumOwnerUsername;

  /// [storyAlbumId] Story album identifier
  final int storyAlbumId;

  static const String constructor = 'internalLinkTypeStoryAlbum';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story_album_owner_username': storyAlbumOwnerUsername,
    'story_album_id': storyAlbumId,
    '@type': constructor,
  };

  static InternalLinkTypeStoryAlbum? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeStoryAlbum(
      storyAlbumOwnerUsername:
          (json['story_album_owner_username'] as String?) ?? '',
      storyAlbumId: (json['story_album_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a text composition style. Call
/// searchTextCompositionStyle with the given style name to get information
/// about the style. If the style is found and the user wants to add it, then
/// call addTextCompositionStyle
@immutable
final class InternalLinkTypeTextCompositionStyle extends InternalLinkType {
  InternalLinkTypeTextCompositionStyle({required this.styleName});

  /// [styleName] Name of the style
  final String styleName;

  static const String constructor = 'internalLinkTypeTextCompositionStyle';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'style_name': styleName,
    '@type': constructor,
  };

  static InternalLinkTypeTextCompositionStyle? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeTextCompositionStyle(
      styleName: (json['style_name'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a cloud theme. TDLib has no theme support yet
@immutable
final class InternalLinkTypeTheme extends InternalLinkType {
  InternalLinkTypeTheme({required this.themeName});

  /// [themeName] Name of the theme
  final String themeName;

  static const String constructor = 'internalLinkTypeTheme';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'theme_name': themeName,
    '@type': constructor,
  };

  static InternalLinkTypeTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeTheme(
      themeName: (json['theme_name'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is an unknown tg: link. Call getDeepLinkInfo to process the link
@immutable
final class InternalLinkTypeUnknownDeepLink extends InternalLinkType {
  InternalLinkTypeUnknownDeepLink({required this.link});

  /// [link] Link to be passed to getDeepLinkInfo
  final String link;

  static const String constructor = 'internalLinkTypeUnknownDeepLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'link': link,
    '@type': constructor,
  };

  static InternalLinkTypeUnknownDeepLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeUnknownDeepLink(
      link: (json['link'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to an upgraded gift. Call getUpgradedGift with the
/// given name to process the link
@immutable
final class InternalLinkTypeUpgradedGift extends InternalLinkType {
  InternalLinkTypeUpgradedGift({required this.name});

  /// [name] Name of the unique gift
  final String name;

  static const String constructor = 'internalLinkTypeUpgradedGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'name': name,
    '@type': constructor,
  };

  static InternalLinkTypeUpgradedGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeUpgradedGift(name: (json['name'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a user by its phone number. Call
/// searchUserByPhoneNumber with the given phone number to process the link.
/// If the user is found, then call createPrivateChat and open user's profile
/// information screen or the chat itself. If draft text isn't empty, then put
/// the draft text in the input field
@immutable
final class InternalLinkTypeUserPhoneNumber extends InternalLinkType {
  InternalLinkTypeUserPhoneNumber({
    required this.phoneNumber,
    required this.draftText,
    required this.openProfile,
  });

  /// [phoneNumber] Phone number of the user
  final String phoneNumber;

  /// [draftText] Draft text for message to send in the chat
  final String draftText;

  /// [openProfile] True, if user's profile information screen must be opened;
  /// otherwise, the chat itself must be opened
  final bool openProfile;

  static const String constructor = 'internalLinkTypeUserPhoneNumber';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'phone_number': phoneNumber,
    'draft_text': draftText,
    'open_profile': openProfile,
    '@type': constructor,
  };

  static InternalLinkTypeUserPhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeUserPhoneNumber(
      phoneNumber: (json['phone_number'] as String?) ?? '',
      draftText: (json['draft_text'] as String?) ?? '',
      openProfile: (json['open_profile'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a user by a temporary token. Call searchUserByToken
/// with the given token to process the link. If the user is found, then call
/// createPrivateChat and open the chat
@immutable
final class InternalLinkTypeUserToken extends InternalLinkType {
  InternalLinkTypeUserToken({required this.token});

  /// [token] The token
  final String token;

  static const String constructor = 'internalLinkTypeUserToken';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'token': token,
    '@type': constructor,
  };

  static InternalLinkTypeUserToken? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeUserToken(token: (json['token'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a video chat. Call searchPublicChat with the given
/// chat username, and then joinVideoChat with the given invite hash to
/// process the link
@immutable
final class InternalLinkTypeVideoChat extends InternalLinkType {
  InternalLinkTypeVideoChat({
    required this.chatUsername,
    required this.inviteHash,
    required this.isLiveStream,
  });

  /// [chatUsername] Username of the chat with the video chat
  final String chatUsername;

  /// [inviteHash] If non-empty, invite hash to be used to join the video chat
  /// without being muted by administrators
  final String inviteHash;

  /// [isLiveStream] True, if the video chat is expected to be a live stream in
  /// a channel or a broadcast group
  final bool isLiveStream;

  static const String constructor = 'internalLinkTypeVideoChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_username': chatUsername,
    'invite_hash': inviteHash,
    'is_live_stream': isLiveStream,
    '@type': constructor,
  };

  static InternalLinkTypeVideoChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeVideoChat(
      chatUsername: (json['chat_username'] as String?) ?? '',
      inviteHash: (json['invite_hash'] as String?) ?? '',
      isLiveStream: (json['is_live_stream'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The link is a link to a Web App. Call searchPublicChat with the given bot
/// username, check that the user is a bot. If the bot is restricted for the
/// current user, then show an error message. Otherwise, call searchWebApp
/// with the received bot and the given web_app_short_name. Process received
/// foundWebApp by showing a confirmation dialog if needed. If the bot can be
/// added to attachment or side menu, but isn't added yet, then show a
/// disclaimer about Mini Apps being third-party applications instead of the
/// dialog and ask the user to accept their Terms of service. If the user
/// accept the terms and confirms adding, then use
/// toggleBotIsAddedToAttachmentMenu to add the bot. Then, call
/// getWebAppLinkUrl and open the returned URL as a Web App
@immutable
final class InternalLinkTypeWebApp extends InternalLinkType {
  InternalLinkTypeWebApp({
    required this.botUsername,
    required this.webAppShortName,
    required this.startParameter,
    this.mode,
  });

  /// [botUsername] Username of the bot that owns the Web App
  final String botUsername;

  /// [webAppShortName] Short name of the Web App
  final String webAppShortName;

  /// [startParameter] Start parameter to be passed to getWebAppLinkUrl
  final String startParameter;

  /// [mode] The mode in which the Web App must be opened
  final WebAppOpenMode? mode;

  static const String constructor = 'internalLinkTypeWebApp';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bot_username': botUsername,
    'web_app_short_name': webAppShortName,
    'start_parameter': startParameter,
    'mode': mode?.toJson(),
    '@type': constructor,
  };

  static InternalLinkTypeWebApp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeWebApp(
      botUsername: (json['bot_username'] as String?) ?? '',
      webAppShortName: (json['web_app_short_name'] as String?) ?? '',
      startParameter: (json['start_parameter'] as String?) ?? '',
      mode: WebAppOpenMode.fromJson(tdMapFromJson(json['mode'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
