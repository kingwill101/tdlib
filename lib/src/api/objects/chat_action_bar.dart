import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes actions which must be possible to do through a chat action bar
@immutable
sealed class ChatActionBar extends TdObject {
  const ChatActionBar();

  static const String constructor = 'chatActionBar';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ChatActionBarAddContact]
  /// [ChatActionBarInviteMembers]
  /// [ChatActionBarJoinRequest]
  /// [ChatActionBarReportAddBlock]
  /// [ChatActionBarReportSpam]
  /// [ChatActionBarSharePhoneNumber]
  static ChatActionBar? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatActionBarAddContact.constructor:
        return ChatActionBarAddContact.fromJson(json);

      case ChatActionBarInviteMembers.constructor:
        return ChatActionBarInviteMembers.fromJson(json);

      case ChatActionBarJoinRequest.constructor:
        return ChatActionBarJoinRequest.fromJson(json);

      case ChatActionBarReportAddBlock.constructor:
        return ChatActionBarReportAddBlock.fromJson(json);

      case ChatActionBarReportSpam.constructor:
        return ChatActionBarReportSpam.fromJson(json);

      case ChatActionBarSharePhoneNumber.constructor:
        return ChatActionBarSharePhoneNumber.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat is a private or secret chat and the other user can be added to
/// the contact list using the method addContact
@immutable
final class ChatActionBarAddContact extends ChatActionBar {
  const ChatActionBarAddContact();

  static const String constructor = 'chatActionBarAddContact';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatActionBarAddContact? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionBarAddContact();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat is a recently created group chat to which new members can be
/// invited
@immutable
final class ChatActionBarInviteMembers extends ChatActionBar {
  const ChatActionBarInviteMembers();

  static const String constructor = 'chatActionBarInviteMembers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatActionBarInviteMembers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionBarInviteMembers();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat is a private chat with an administrator of a chat to which the
/// user sent join request
@immutable
final class ChatActionBarJoinRequest extends ChatActionBar {
  ChatActionBarJoinRequest({
    required this.title,
    required this.isChannel,
    required this.requestDate,
  });

  /// [title] Title of the chat to which the join request was sent
  final String title;

  /// [isChannel] True, if the join request was sent to a channel chat
  final bool isChannel;

  /// [requestDate] Point in time (Unix timestamp) when the join request was
  /// sent
  final int requestDate;

  static const String constructor = 'chatActionBarJoinRequest';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'title': title,
    'is_channel': isChannel,
    'request_date': requestDate,
    '@type': constructor,
  };

  static ChatActionBarJoinRequest? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActionBarJoinRequest(
      title: (json['title'] as String?) ?? '',
      isChannel: (json['is_channel'] as bool?) ?? false,
      requestDate: (json['request_date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat is a private or secret chat, which can be reported using the
/// method reportChat, or the other user can be blocked using the method
/// setMessageSenderBlockList, or the other user can be added to the contact
/// list using the method addContact. If the chat is a private chat with a
/// user with an emoji status, then a notice about emoji status usage must be
/// shown
@immutable
final class ChatActionBarReportAddBlock extends ChatActionBar {
  ChatActionBarReportAddBlock({required this.canUnarchive, this.accountInfo});

  /// [canUnarchive] If true, the chat was automatically archived and can be
  /// moved back to the main chat list using addChatToList simultaneously with
  /// setting chat notification settings to default using
  /// setChatNotificationSettings
  final bool canUnarchive;

  /// [accountInfo] Basic information about the other user in the chat; may be
  /// null if unknown
  final AccountInfo? accountInfo;

  static const String constructor = 'chatActionBarReportAddBlock';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'can_unarchive': canUnarchive,
    'account_info': accountInfo?.toJson(),
    '@type': constructor,
  };

  static ChatActionBarReportAddBlock? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActionBarReportAddBlock(
      canUnarchive: (json['can_unarchive'] as bool?) ?? false,
      accountInfo: AccountInfo.fromJson(tdMapFromJson(json['account_info'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat can be reported as spam using the method reportChat with an empty
/// option_id and message_ids. If the chat is a private chat with a user with
/// an emoji status, then a notice about emoji status usage must be shown
@immutable
final class ChatActionBarReportSpam extends ChatActionBar {
  ChatActionBarReportSpam({required this.canUnarchive});

  /// [canUnarchive] If true, the chat was automatically archived and can be
  /// moved back to the main chat list using addChatToList simultaneously with
  /// setting chat notification settings to default using
  /// setChatNotificationSettings
  final bool canUnarchive;

  static const String constructor = 'chatActionBarReportSpam';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'can_unarchive': canUnarchive,
    '@type': constructor,
  };

  static ChatActionBarReportSpam? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActionBarReportSpam(
      canUnarchive: (json['can_unarchive'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat is a private or secret chat with a mutual contact and the user's
/// phone number can be shared with the other user using the method
/// sharePhoneNumber
@immutable
final class ChatActionBarSharePhoneNumber extends ChatActionBar {
  const ChatActionBarSharePhoneNumber();

  static const String constructor = 'chatActionBarSharePhoneNumber';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatActionBarSharePhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionBarSharePhoneNumber();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
