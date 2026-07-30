import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes available user privacy settings
@immutable
sealed class UserPrivacySetting extends TdObject {
  const UserPrivacySetting();

  static const String constructor = 'userPrivacySetting';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [UserPrivacySettingAllowCalls]
  /// [UserPrivacySettingAllowChatInvites]
  /// [UserPrivacySettingAllowFindingByPhoneNumber]
  /// [UserPrivacySettingAllowPeerToPeerCalls]
  /// [UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages]
  /// [UserPrivacySettingAllowUnpaidMessages]
  /// [UserPrivacySettingAutosaveGifts]
  /// [UserPrivacySettingShowBio]
  /// [UserPrivacySettingShowBirthdate]
  /// [UserPrivacySettingShowLinkInForwardedMessages]
  /// [UserPrivacySettingShowPhoneNumber]
  /// [UserPrivacySettingShowProfileAudio]
  /// [UserPrivacySettingShowProfilePhoto]
  /// [UserPrivacySettingShowStatus]
  static UserPrivacySetting? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case UserPrivacySettingAllowCalls.constructor:
        return UserPrivacySettingAllowCalls.fromJson(json);

      case UserPrivacySettingAllowChatInvites.constructor:
        return UserPrivacySettingAllowChatInvites.fromJson(json);

      case UserPrivacySettingAllowFindingByPhoneNumber.constructor:
        return UserPrivacySettingAllowFindingByPhoneNumber.fromJson(json);

      case UserPrivacySettingAllowPeerToPeerCalls.constructor:
        return UserPrivacySettingAllowPeerToPeerCalls.fromJson(json);

      case UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages.constructor:
        return UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages.fromJson(
          json,
        );

      case UserPrivacySettingAllowUnpaidMessages.constructor:
        return UserPrivacySettingAllowUnpaidMessages.fromJson(json);

      case UserPrivacySettingAutosaveGifts.constructor:
        return UserPrivacySettingAutosaveGifts.fromJson(json);

      case UserPrivacySettingShowBio.constructor:
        return UserPrivacySettingShowBio.fromJson(json);

      case UserPrivacySettingShowBirthdate.constructor:
        return UserPrivacySettingShowBirthdate.fromJson(json);

      case UserPrivacySettingShowLinkInForwardedMessages.constructor:
        return UserPrivacySettingShowLinkInForwardedMessages.fromJson(json);

      case UserPrivacySettingShowPhoneNumber.constructor:
        return UserPrivacySettingShowPhoneNumber.fromJson(json);

      case UserPrivacySettingShowProfileAudio.constructor:
        return UserPrivacySettingShowProfileAudio.fromJson(json);

      case UserPrivacySettingShowProfilePhoto.constructor:
        return UserPrivacySettingShowProfilePhoto.fromJson(json);

      case UserPrivacySettingShowStatus.constructor:
        return UserPrivacySettingShowStatus.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A privacy setting for managing whether the user can be called
@immutable
final class UserPrivacySettingAllowCalls extends UserPrivacySetting {
  const UserPrivacySettingAllowCalls();

  static const String constructor = 'userPrivacySettingAllowCalls';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UserPrivacySettingAllowCalls? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingAllowCalls();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A privacy setting for managing whether the user can be invited to chats
@immutable
final class UserPrivacySettingAllowChatInvites extends UserPrivacySetting {
  const UserPrivacySettingAllowChatInvites();

  static const String constructor = 'userPrivacySettingAllowChatInvites';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UserPrivacySettingAllowChatInvites? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingAllowChatInvites();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A privacy setting for managing whether the user can be found by their
/// phone number. Checked only if the phone number is not known to the other
/// user. Can be set only to "Allow contacts" or "Allow all"
@immutable
final class UserPrivacySettingAllowFindingByPhoneNumber
    extends UserPrivacySetting {
  const UserPrivacySettingAllowFindingByPhoneNumber();

  static const String constructor =
      'userPrivacySettingAllowFindingByPhoneNumber';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UserPrivacySettingAllowFindingByPhoneNumber? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingAllowFindingByPhoneNumber();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A privacy setting for managing whether peer-to-peer connections can be
/// used for calls
@immutable
final class UserPrivacySettingAllowPeerToPeerCalls extends UserPrivacySetting {
  const UserPrivacySettingAllowPeerToPeerCalls();

  static const String constructor = 'userPrivacySettingAllowPeerToPeerCalls';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UserPrivacySettingAllowPeerToPeerCalls? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingAllowPeerToPeerCalls();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A privacy setting for managing whether the user can receive voice and
/// video messages in private chats; for Telegram Premium users only
@immutable
final class UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages
    extends UserPrivacySetting {
  const UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages();

  static const String constructor =
      'userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A privacy setting for managing whether the user can receive messages
/// without additional payment
@immutable
final class UserPrivacySettingAllowUnpaidMessages extends UserPrivacySetting {
  const UserPrivacySettingAllowUnpaidMessages();

  static const String constructor = 'userPrivacySettingAllowUnpaidMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UserPrivacySettingAllowUnpaidMessages? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingAllowUnpaidMessages();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A privacy setting for managing whether received gifts are automatically
/// shown on the user's profile page
@immutable
final class UserPrivacySettingAutosaveGifts extends UserPrivacySetting {
  const UserPrivacySettingAutosaveGifts();

  static const String constructor = 'userPrivacySettingAutosaveGifts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UserPrivacySettingAutosaveGifts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingAutosaveGifts();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A privacy setting for managing whether the user's bio is visible
@immutable
final class UserPrivacySettingShowBio extends UserPrivacySetting {
  const UserPrivacySettingShowBio();

  static const String constructor = 'userPrivacySettingShowBio';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UserPrivacySettingShowBio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingShowBio();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A privacy setting for managing whether the user's birthdate is visible
@immutable
final class UserPrivacySettingShowBirthdate extends UserPrivacySetting {
  const UserPrivacySettingShowBirthdate();

  static const String constructor = 'userPrivacySettingShowBirthdate';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UserPrivacySettingShowBirthdate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingShowBirthdate();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A privacy setting for managing whether a link to the user's account is
/// included in forwarded messages
@immutable
final class UserPrivacySettingShowLinkInForwardedMessages
    extends UserPrivacySetting {
  const UserPrivacySettingShowLinkInForwardedMessages();

  static const String constructor =
      'userPrivacySettingShowLinkInForwardedMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UserPrivacySettingShowLinkInForwardedMessages? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingShowLinkInForwardedMessages();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A privacy setting for managing whether the user's phone number is visible
@immutable
final class UserPrivacySettingShowPhoneNumber extends UserPrivacySetting {
  const UserPrivacySettingShowPhoneNumber();

  static const String constructor = 'userPrivacySettingShowPhoneNumber';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UserPrivacySettingShowPhoneNumber? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingShowPhoneNumber();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A privacy setting for managing whether the user's profile audio files are
/// visible
@immutable
final class UserPrivacySettingShowProfileAudio extends UserPrivacySetting {
  const UserPrivacySettingShowProfileAudio();

  static const String constructor = 'userPrivacySettingShowProfileAudio';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UserPrivacySettingShowProfileAudio? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingShowProfileAudio();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A privacy setting for managing whether the user's profile photo is visible
@immutable
final class UserPrivacySettingShowProfilePhoto extends UserPrivacySetting {
  const UserPrivacySettingShowProfilePhoto();

  static const String constructor = 'userPrivacySettingShowProfilePhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UserPrivacySettingShowProfilePhoto? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingShowProfilePhoto();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A privacy setting for managing whether the user's online status is visible
@immutable
final class UserPrivacySettingShowStatus extends UserPrivacySetting {
  const UserPrivacySettingShowStatus();

  static const String constructor = 'userPrivacySettingShowStatus';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static UserPrivacySettingShowStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingShowStatus();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
