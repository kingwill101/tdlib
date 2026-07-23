import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a bot, which can be added to attachment or side menu
@immutable
final class AttachmentMenuBot extends TdObject {
  AttachmentMenuBot({
    required this.botUserId,
    required this.supportsSelfChat,
    required this.supportsUserChats,
    required this.supportsBotChats,
    required this.supportsGroupChats,
    required this.supportsChannelChats,
    required this.requestWriteAccess,
    required this.isAdded,
    required this.showInAttachmentMenu,
    required this.showInSideMenu,
    required this.showDisclaimerInSideMenu,
    required this.name,
    this.nameColor,
    this.defaultIcon,
    this.iosStaticIcon,
    this.iosAnimatedIcon,
    this.iosSideMenuIcon,
    this.androidIcon,
    this.androidSideMenuIcon,
    this.macosIcon,
    this.macosSideMenuIcon,
    this.iconColor,
    this.webAppPlaceholder,
  });

  /// [botUserId] User identifier of the bot
  final int botUserId;

  /// [supportsSelfChat] True, if the bot supports opening from attachment menu
  /// in the chat with the bot
  final bool supportsSelfChat;

  /// [supportsUserChats] True, if the bot supports opening from attachment menu
  /// in private chats with ordinary users
  final bool supportsUserChats;

  /// [supportsBotChats] True, if the bot supports opening from attachment menu
  /// in private chats with other bots
  final bool supportsBotChats;

  /// [supportsGroupChats] True, if the bot supports opening from attachment
  /// menu in basic group and supergroup chats
  final bool supportsGroupChats;

  /// [supportsChannelChats] True, if the bot supports opening from attachment
  /// menu in channel chats
  final bool supportsChannelChats;

  /// [requestWriteAccess] True, if the user must be asked for the permission to
  /// send messages to the bot
  final bool requestWriteAccess;

  /// [isAdded] True, if the bot was explicitly added by the user. If the bot
  /// isn't added, then on the first bot launch toggleBotIsAddedToAttachmentMenu
  /// must be called and the bot must be added or removed
  final bool isAdded;

  /// [showInAttachmentMenu] True, if the bot must be shown in the attachment
  /// menu
  final bool showInAttachmentMenu;

  /// [showInSideMenu] True, if the bot must be shown in the side menu
  final bool showInSideMenu;

  /// [showDisclaimerInSideMenu] True, if a disclaimer, why the bot is shown in
  /// the side menu, is needed
  final bool showDisclaimerInSideMenu;

  /// [name] Name for the bot in attachment menu
  final String name;

  /// [nameColor] Color to highlight selected name of the bot if appropriate;
  /// may be null
  final AttachmentMenuBotColor? nameColor;

  /// [defaultIcon] Default icon for the bot in SVG format; may be null
  final File? defaultIcon;

  /// [iosStaticIcon] Icon for the bot in SVG format for the official iOS app;
  /// may be null
  final File? iosStaticIcon;

  /// [iosAnimatedIcon] Icon for the bot in TGS format for the official iOS app;
  /// may be null
  final File? iosAnimatedIcon;

  /// [iosSideMenuIcon] Icon for the bot in PNG format for the official iOS app
  /// side menu; may be null
  final File? iosSideMenuIcon;

  /// [androidIcon] Icon for the bot in TGS format for the official Android app;
  /// may be null
  final File? androidIcon;

  /// [androidSideMenuIcon] Icon for the bot in SVG format for the official
  /// Android app side menu; may be null
  final File? androidSideMenuIcon;

  /// [macosIcon] Icon for the bot in TGS format for the official native macOS
  /// app; may be null
  final File? macosIcon;

  /// [macosSideMenuIcon] Icon for the bot in PNG format for the official macOS
  /// app side menu; may be null
  final File? macosSideMenuIcon;

  /// [iconColor] Color to highlight selected icon of the bot if appropriate;
  /// may be null
  final AttachmentMenuBotColor? iconColor;

  /// [webAppPlaceholder] Default placeholder for opened Web Apps in SVG format;
  /// may be null
  final File? webAppPlaceholder;

  static const String constructor = 'attachmentMenuBot';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bot_user_id': botUserId,
    'supports_self_chat': supportsSelfChat,
    'supports_user_chats': supportsUserChats,
    'supports_bot_chats': supportsBotChats,
    'supports_group_chats': supportsGroupChats,
    'supports_channel_chats': supportsChannelChats,
    'request_write_access': requestWriteAccess,
    'is_added': isAdded,
    'show_in_attachment_menu': showInAttachmentMenu,
    'show_in_side_menu': showInSideMenu,
    'show_disclaimer_in_side_menu': showDisclaimerInSideMenu,
    'name': name,
    'name_color': nameColor?.toJson(),
    'default_icon': defaultIcon?.toJson(),
    'ios_static_icon': iosStaticIcon?.toJson(),
    'ios_animated_icon': iosAnimatedIcon?.toJson(),
    'ios_side_menu_icon': iosSideMenuIcon?.toJson(),
    'android_icon': androidIcon?.toJson(),
    'android_side_menu_icon': androidSideMenuIcon?.toJson(),
    'macos_icon': macosIcon?.toJson(),
    'macos_side_menu_icon': macosSideMenuIcon?.toJson(),
    'icon_color': iconColor?.toJson(),
    'web_app_placeholder': webAppPlaceholder?.toJson(),
    '@type': constructor,
  };

  static AttachmentMenuBot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AttachmentMenuBot(
      botUserId: (json['bot_user_id'] as int?) ?? 0,
      supportsSelfChat: (json['supports_self_chat'] as bool?) ?? false,
      supportsUserChats: (json['supports_user_chats'] as bool?) ?? false,
      supportsBotChats: (json['supports_bot_chats'] as bool?) ?? false,
      supportsGroupChats: (json['supports_group_chats'] as bool?) ?? false,
      supportsChannelChats: (json['supports_channel_chats'] as bool?) ?? false,
      requestWriteAccess: (json['request_write_access'] as bool?) ?? false,
      isAdded: (json['is_added'] as bool?) ?? false,
      showInAttachmentMenu: (json['show_in_attachment_menu'] as bool?) ?? false,
      showInSideMenu: (json['show_in_side_menu'] as bool?) ?? false,
      showDisclaimerInSideMenu:
          (json['show_disclaimer_in_side_menu'] as bool?) ?? false,
      name: (json['name'] as String?) ?? '',
      nameColor: AttachmentMenuBotColor.fromJson(
        tdMapFromJson(json['name_color']),
      ),
      defaultIcon: File.fromJson(tdMapFromJson(json['default_icon'])),
      iosStaticIcon: File.fromJson(tdMapFromJson(json['ios_static_icon'])),
      iosAnimatedIcon: File.fromJson(tdMapFromJson(json['ios_animated_icon'])),
      iosSideMenuIcon: File.fromJson(tdMapFromJson(json['ios_side_menu_icon'])),
      androidIcon: File.fromJson(tdMapFromJson(json['android_icon'])),
      androidSideMenuIcon: File.fromJson(
        tdMapFromJson(json['android_side_menu_icon']),
      ),
      macosIcon: File.fromJson(tdMapFromJson(json['macos_icon'])),
      macosSideMenuIcon: File.fromJson(
        tdMapFromJson(json['macos_side_menu_icon']),
      ),
      iconColor: AttachmentMenuBotColor.fromJson(
        tdMapFromJson(json['icon_color']),
      ),
      webAppPlaceholder: File.fromJson(
        tdMapFromJson(json['web_app_placeholder']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
