import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a section of the application settings
@immutable
sealed class SettingsSection extends TdObject {
  const SettingsSection();

  static const String constructor = 'settingsSection';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [SettingsSectionAppearance]
  /// [SettingsSectionAskQuestion]
  /// [SettingsSectionBusiness]
  /// [SettingsSectionChatFolders]
  /// [SettingsSectionDataAndStorage]
  /// [SettingsSectionDevices]
  /// [SettingsSectionEditProfile]
  /// [SettingsSectionFaq]
  /// [SettingsSectionFeatures]
  /// [SettingsSectionInAppBrowser]
  /// [SettingsSectionLanguage]
  /// [SettingsSectionMyStars]
  /// [SettingsSectionMyToncoins]
  /// [SettingsSectionNotifications]
  /// [SettingsSectionPowerSaving]
  /// [SettingsSectionPremium]
  /// [SettingsSectionPrivacyAndSecurity]
  /// [SettingsSectionPrivacyPolicy]
  /// [SettingsSectionQrCode]
  /// [SettingsSectionSearch]
  /// [SettingsSectionSendGift]
  static SettingsSection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SettingsSectionAppearance.constructor:
        return SettingsSectionAppearance.fromJson(json);

      case SettingsSectionAskQuestion.constructor:
        return SettingsSectionAskQuestion.fromJson(json);

      case SettingsSectionBusiness.constructor:
        return SettingsSectionBusiness.fromJson(json);

      case SettingsSectionChatFolders.constructor:
        return SettingsSectionChatFolders.fromJson(json);

      case SettingsSectionDataAndStorage.constructor:
        return SettingsSectionDataAndStorage.fromJson(json);

      case SettingsSectionDevices.constructor:
        return SettingsSectionDevices.fromJson(json);

      case SettingsSectionEditProfile.constructor:
        return SettingsSectionEditProfile.fromJson(json);

      case SettingsSectionFaq.constructor:
        return SettingsSectionFaq.fromJson(json);

      case SettingsSectionFeatures.constructor:
        return SettingsSectionFeatures.fromJson(json);

      case SettingsSectionInAppBrowser.constructor:
        return SettingsSectionInAppBrowser.fromJson(json);

      case SettingsSectionLanguage.constructor:
        return SettingsSectionLanguage.fromJson(json);

      case SettingsSectionMyStars.constructor:
        return SettingsSectionMyStars.fromJson(json);

      case SettingsSectionMyToncoins.constructor:
        return SettingsSectionMyToncoins.fromJson(json);

      case SettingsSectionNotifications.constructor:
        return SettingsSectionNotifications.fromJson(json);

      case SettingsSectionPowerSaving.constructor:
        return SettingsSectionPowerSaving.fromJson(json);

      case SettingsSectionPremium.constructor:
        return SettingsSectionPremium.fromJson(json);

      case SettingsSectionPrivacyAndSecurity.constructor:
        return SettingsSectionPrivacyAndSecurity.fromJson(json);

      case SettingsSectionPrivacyPolicy.constructor:
        return SettingsSectionPrivacyPolicy.fromJson(json);

      case SettingsSectionQrCode.constructor:
        return SettingsSectionQrCode.fromJson(json);

      case SettingsSectionSearch.constructor:
        return SettingsSectionSearch.fromJson(json);

      case SettingsSectionSendGift.constructor:
        return SettingsSectionSendGift.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The appearance section
@immutable
final class SettingsSectionAppearance extends SettingsSection {
  SettingsSectionAppearance({required this.subsection});

  /// [subsection] Subsection of the section; may be one of "", "themes",
  /// "themes/edit", "themes/create", "wallpapers", "wallpapers/edit",
  /// "wallpapers/set", "wallpapers/choose-photo", "your-color/profile",
  /// "your-color/profile/add-icons", "your-color/profile/use-gift",
  /// "your-color/profile/reset", "your-color/name",
  /// "your-color/name/add-icons", "your-color/name/use-gift", "night-mode",
  /// "auto-night-mode", "text-size", "text-size/use-system", "message-corners",
  /// "animations", "stickers-and-emoji", "stickers-and-emoji/edit",
  /// "stickers-and-emoji/trending", "stickers-and-emoji/archived",
  /// "stickers-and-emoji/archived/edit", "stickers-and-emoji/emoji",
  /// "stickers-and-emoji/emoji/edit", "stickers-and-emoji/emoji/archived",
  /// "stickers-and-emoji/emoji/archived/edit",
  /// "stickers-and-emoji/emoji/suggest",
  /// "stickers-and-emoji/emoji/quick-reaction",
  /// "stickers-and-emoji/emoji/quick-reaction/choose",
  /// "stickers-and-emoji/suggest-by-emoji", "stickers-and-emoji/large-emoji",
  /// "stickers-and-emoji/dynamic-order", "stickers-and-emoji/emoji/show-more",
  /// "app-icon", "tap-for-next-media"
  final String subsection;

  static const String constructor = 'settingsSectionAppearance';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'subsection': subsection,
    '@type': constructor,
  };

  static SettingsSectionAppearance? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SettingsSectionAppearance(
      subsection: (json['subsection'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The "Ask a question" section
@immutable
final class SettingsSectionAskQuestion extends SettingsSection {
  const SettingsSectionAskQuestion();

  static const String constructor = 'settingsSectionAskQuestion';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SettingsSectionAskQuestion? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SettingsSectionAskQuestion();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The "Telegram Business" section
@immutable
final class SettingsSectionBusiness extends SettingsSection {
  SettingsSectionBusiness({required this.subsection});

  /// [subsection] Subsection of the section; may be one of "",
  /// "do-not-hide-ads"
  final String subsection;

  static const String constructor = 'settingsSectionBusiness';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'subsection': subsection,
    '@type': constructor,
  };

  static SettingsSectionBusiness? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SettingsSectionBusiness(
      subsection: (json['subsection'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat folder settings section
@immutable
final class SettingsSectionChatFolders extends SettingsSection {
  SettingsSectionChatFolders({required this.subsection});

  /// [subsection] Subsection of the section; may be one of "", "edit",
  /// "create", "add-recommended", "show-tags", "tab-view"
  final String subsection;

  static const String constructor = 'settingsSectionChatFolders';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'subsection': subsection,
    '@type': constructor,
  };

  static SettingsSectionChatFolders? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SettingsSectionChatFolders(
      subsection: (json['subsection'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The data and storage settings section
@immutable
final class SettingsSectionDataAndStorage extends SettingsSection {
  SettingsSectionDataAndStorage({required this.subsection});

  /// [subsection] Subsection of the section; may be one of "", "storage",
  /// "storage/edit", "storage/auto-remove", "storage/clear-cache",
  /// "storage/max-cache", "usage", "usage/mobile", "usage/wifi", "usage/reset",
  /// "usage/roaming", "auto-download/mobile", "auto-download/mobile/enable",
  /// "auto-download/mobile/usage", "auto-download/mobile/photos",
  /// "auto-download/mobile/stories", "auto-download/mobile/videos",
  /// "auto-download/mobile/files", "auto-download/wifi",
  /// "auto-download/wifi/enable", "auto-download/wifi/usage",
  /// "auto-download/wifi/photos", "auto-download/wifi/stories",
  /// "auto-download/wifi/videos", "auto-download/wifi/files",
  /// "auto-download/roaming", "auto-download/roaming/enable",
  /// "auto-download/roaming/usage", "auto-download/roaming/photos",
  /// "auto-download/roaming/stories", "auto-download/roaming/videos",
  /// "auto-download/roaming/files", "auto-download/reset",
  /// "save-to-photos/chats", "save-to-photos/chats/max-video-size",
  /// "save-to-photos/chats/add-exception", "save-to-photos/chats/delete-all",
  /// "save-to-photos/groups", "save-to-photos/groups/max-video-size",
  /// "save-to-photos/groups/add-exception", "save-to-photos/groups/delete-all",
  /// "save-to-photos/channels", "save-to-photos/channels/max-video-size",
  /// "save-to-photos/channels/add-exception",
  /// "save-to-photos/channels/delete-all", "less-data-calls", "open-links",
  /// "share-sheet", "share-sheet/suggested-chats", "share-sheet/suggest-by",
  /// "share-sheet/reset", "saved-edited-photos", "pause-music",
  /// "raise-to-listen", "raise-to-speak", "show-18-content", "proxy",
  /// "proxy/edit", "proxy/use-proxy", "proxy/add-proxy", "proxy/share-list",
  /// "proxy/use-for-calls"
  final String subsection;

  static const String constructor = 'settingsSectionDataAndStorage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'subsection': subsection,
    '@type': constructor,
  };

  static SettingsSectionDataAndStorage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SettingsSectionDataAndStorage(
      subsection: (json['subsection'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The Devices section
@immutable
final class SettingsSectionDevices extends SettingsSection {
  SettingsSectionDevices({required this.subsection});

  /// [subsection] Subsection of the section; may be one of "", "edit",
  /// "link-desktop", "terminate-sessions", "auto-terminate"
  final String subsection;

  static const String constructor = 'settingsSectionDevices';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'subsection': subsection,
    '@type': constructor,
  };

  static SettingsSectionDevices? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SettingsSectionDevices(
      subsection: (json['subsection'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The profile edit section
@immutable
final class SettingsSectionEditProfile extends SettingsSection {
  SettingsSectionEditProfile({required this.subsection});

  /// [subsection] Subsection of the section; may be one of "", "set-photo",
  /// "first-name", "last-name", "emoji-status", "bio", "birthday",
  /// "change-number", "username", "your-color", "channel", "add-account",
  /// "log-out", "profile-color/profile", "profile-color/profile/add-icons",
  /// "profile-color/profile/use-gift", "profile-color/name",
  /// "profile-color/name/add-icons", "profile-color/name/use-gift",
  /// "profile-photo/use-emoji"
  final String subsection;

  static const String constructor = 'settingsSectionEditProfile';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'subsection': subsection,
    '@type': constructor,
  };

  static SettingsSectionEditProfile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SettingsSectionEditProfile(
      subsection: (json['subsection'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The FAQ section
@immutable
final class SettingsSectionFaq extends SettingsSection {
  const SettingsSectionFaq();

  static const String constructor = 'settingsSectionFaq';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SettingsSectionFaq? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SettingsSectionFaq();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The "Telegram Features" section
@immutable
final class SettingsSectionFeatures extends SettingsSection {
  const SettingsSectionFeatures();

  static const String constructor = 'settingsSectionFeatures';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SettingsSectionFeatures? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SettingsSectionFeatures();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The in-app browser settings section
@immutable
final class SettingsSectionInAppBrowser extends SettingsSection {
  SettingsSectionInAppBrowser({required this.subsection});

  /// [subsection] Subsection of the section; may be one of "",
  /// "enable-browser", "clear-cookies", "clear-cache", "history",
  /// "clear-history", "never-open", "clear-list", "search"
  final String subsection;

  static const String constructor = 'settingsSectionInAppBrowser';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'subsection': subsection,
    '@type': constructor,
  };

  static SettingsSectionInAppBrowser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SettingsSectionInAppBrowser(
      subsection: (json['subsection'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The application language section
@immutable
final class SettingsSectionLanguage extends SettingsSection {
  SettingsSectionLanguage({required this.subsection});

  /// [subsection] Subsection of the section; may be one of "", "show-button"
  /// for Show Translate Button toggle, "translate-chats" for Translate Entire
  /// Chats toggle, "do-not-translate" - for Do Not Translate language list
  final String subsection;

  static const String constructor = 'settingsSectionLanguage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'subsection': subsection,
    '@type': constructor,
  };

  static SettingsSectionLanguage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SettingsSectionLanguage(
      subsection: (json['subsection'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The Telegram Star balance and transaction section
@immutable
final class SettingsSectionMyStars extends SettingsSection {
  SettingsSectionMyStars({required this.subsection});

  /// [subsection] Subsection of the section; may be one of "", "top-up",
  /// "stats", "gift", "earn"
  final String subsection;

  static const String constructor = 'settingsSectionMyStars';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'subsection': subsection,
    '@type': constructor,
  };

  static SettingsSectionMyStars? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SettingsSectionMyStars(
      subsection: (json['subsection'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The Toncoin balance and transaction section
@immutable
final class SettingsSectionMyToncoins extends SettingsSection {
  const SettingsSectionMyToncoins();

  static const String constructor = 'settingsSectionMyToncoins';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SettingsSectionMyToncoins? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SettingsSectionMyToncoins();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The notification settings section
@immutable
final class SettingsSectionNotifications extends SettingsSection {
  SettingsSectionNotifications({required this.subsection});

  /// [subsection] Subsection of the section; may be one of "", "accounts",
  /// "private-chats", "private-chats/edit", "private-chats/show",
  /// "private-chats/preview", "private-chats/sound",
  /// "private-chats/add-exception", "private-chats/delete-exceptions",
  /// "private-chats/light-color", "private-chats/vibrate",
  /// "private-chats/priority", "groups", "groups/edit", "groups/show",
  /// "groups/preview", "groups/sound", "groups/add-exception",
  /// "groups/delete-exceptions", "groups/light-color", "groups/vibrate",
  /// "groups/priority", "channels", "channels/edit", "channels/show",
  /// "channels/preview", "channels/sound", "channels/add-exception",
  /// "channels/delete-exceptions", "channels/light-color", "channels/vibrate",
  /// "channels/priority", "stories", "stories/new", "stories/important",
  /// "stories/show-sender", "stories/sound", "stories/add-exception",
  /// "stories/delete-exceptions", "stories/light-color", "stories/vibrate",
  /// "stories/priority", "reactions", "reactions/messages",
  /// "reactions/stories", "reactions/show-sender", "reactions/sound",
  /// "reactions/light-color", "reactions/vibrate", "reactions/priority",
  /// "in-app-sounds", "in-app-vibrate", "in-app-preview", "in-chat-sounds",
  /// "in-app-popup", "lock-screen-names", "include-channels",
  /// "include-muted-chats", "count-unread-messages", "new-contacts",
  /// "pinned-messages", "reset", "web"
  final String subsection;

  static const String constructor = 'settingsSectionNotifications';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'subsection': subsection,
    '@type': constructor,
  };

  static SettingsSectionNotifications? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SettingsSectionNotifications(
      subsection: (json['subsection'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The power saving settings section
@immutable
final class SettingsSectionPowerSaving extends SettingsSection {
  SettingsSectionPowerSaving({required this.subsection});

  /// [subsection] Subsection of the section; may be one of "", "videos",
  /// "gifs", "stickers", "emoji", "effects", "preload", "background",
  /// "call-animations", "particles", "transitions"
  final String subsection;

  static const String constructor = 'settingsSectionPowerSaving';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'subsection': subsection,
    '@type': constructor,
  };

  static SettingsSectionPowerSaving? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SettingsSectionPowerSaving(
      subsection: (json['subsection'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The "Telegram Premium" section
@immutable
final class SettingsSectionPremium extends SettingsSection {
  const SettingsSectionPremium();

  static const String constructor = 'settingsSectionPremium';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SettingsSectionPremium? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SettingsSectionPremium();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The privacy and security section
@immutable
final class SettingsSectionPrivacyAndSecurity extends SettingsSection {
  SettingsSectionPrivacyAndSecurity({required this.subsection});

  /// [subsection] Subsection of the section; may be one of "", "blocked",
  /// "blocked/edit", "blocked/block-user", "blocked/block-user/chats",
  /// "blocked/block-user/contacts", "active-websites", "active-websites/edit",
  /// "active-websites/disconnect-all", "passcode", "passcode/disable",
  /// "passcode/change", "passcode/auto-lock", "passcode/face-id",
  /// "passcode/fingerprint", "2sv", "2sv/change", "2sv/disable",
  /// "2sv/change-email", "passkey", "passkey/create", "auto-delete",
  /// "auto-delete/set-custom", "login-email", "phone-number",
  /// "phone-number/never", "phone-number/always", "last-seen",
  /// "last-seen/never", "last-seen/always", "last-seen/hide-read-time",
  /// "profile-photos", "profile-photos/never", "profile-photos/always",
  /// "profile-photos/set-public", "profile-photos/update-public",
  /// "profile-photos/remove-public", "bio", "bio/never", "bio/always", "gifts",
  /// "gifts/show-icon", "gifts/never", "gifts/always", "gifts/accepted-types",
  /// "birthday", "birthday/add", "birthday/never", "birthday/always",
  /// "saved-music", "saved-music/never", "saved-music/always", "forwards",
  /// "forwards/never", "forwards/always", "calls", "calls/never",
  /// "calls/always", "calls/p2p", "calls/p2p/never", "calls/p2p/always",
  /// "calls/ios-integration", "voice", "voice/never", "voice/always",
  /// "messages", "messages/set-price", "messages/exceptions", "invites",
  /// "invites/never", "invites/always", "self-destruct", "data-settings",
  /// "data-settings/sync-contacts", "data-settings/delete-synced",
  /// "data-settings/suggest-contacts", "data-settings/delete-cloud-drafts",
  /// "data-settings/clear-payment-info", "data-settings/link-previews",
  /// "data-settings/bot-settings", "data-settings/map-provider",
  /// "archive-and-mute"
  final String subsection;

  static const String constructor = 'settingsSectionPrivacyAndSecurity';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'subsection': subsection,
    '@type': constructor,
  };

  static SettingsSectionPrivacyAndSecurity? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return SettingsSectionPrivacyAndSecurity(
      subsection: (json['subsection'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The "Privacy Policy" section
@immutable
final class SettingsSectionPrivacyPolicy extends SettingsSection {
  const SettingsSectionPrivacyPolicy();

  static const String constructor = 'settingsSectionPrivacyPolicy';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SettingsSectionPrivacyPolicy? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SettingsSectionPrivacyPolicy();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The current user's QR code section
@immutable
final class SettingsSectionQrCode extends SettingsSection {
  SettingsSectionQrCode({required this.subsection});

  /// [subsection] Subsection of the section; may be one of "", "share", "scan"
  final String subsection;

  static const String constructor = 'settingsSectionQrCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'subsection': subsection,
    '@type': constructor,
  };

  static SettingsSectionQrCode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SettingsSectionQrCode(
      subsection: (json['subsection'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Search in Settings
@immutable
final class SettingsSectionSearch extends SettingsSection {
  const SettingsSectionSearch();

  static const String constructor = 'settingsSectionSearch';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SettingsSectionSearch? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SettingsSectionSearch();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The "Send a gift" section
@immutable
final class SettingsSectionSendGift extends SettingsSection {
  SettingsSectionSendGift({required this.subsection});

  /// [subsection] Subsection of the section; may be one of "", "self"
  final String subsection;

  static const String constructor = 'settingsSectionSendGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'subsection': subsection,
    '@type': constructor,
  };

  static SettingsSectionSendGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SettingsSectionSendGift(
      subsection: (json['subsection'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
