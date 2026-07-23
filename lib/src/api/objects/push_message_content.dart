import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains content of a push message notification
@immutable
sealed class PushMessageContent extends TdObject {
  const PushMessageContent();

  static const String constructor = 'pushMessageContent';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [PushMessageContentAnimation]
  /// [PushMessageContentAudio]
  /// [PushMessageContentBasicGroupChatCreate]
  /// [PushMessageContentChatAddMembers]
  /// [PushMessageContentChatChangePhoto]
  /// [PushMessageContentChatChangeTitle]
  /// [PushMessageContentChatDeleteMember]
  /// [PushMessageContentChatJoinByLink]
  /// [PushMessageContentChatJoinByRequest]
  /// [PushMessageContentChatSetBackground]
  /// [PushMessageContentChatSetTheme]
  /// [PushMessageContentChecklist]
  /// [PushMessageContentChecklistTasksAdded]
  /// [PushMessageContentChecklistTasksDone]
  /// [PushMessageContentContact]
  /// [PushMessageContentContactRegistered]
  /// [PushMessageContentDocument]
  /// [PushMessageContentGame]
  /// [PushMessageContentGameScore]
  /// [PushMessageContentGift]
  /// [PushMessageContentGiveaway]
  /// [PushMessageContentHidden]
  /// [PushMessageContentInviteVideoChatParticipants]
  /// [PushMessageContentInvoice]
  /// [PushMessageContentLocation]
  /// [PushMessageContentMediaAlbum]
  /// [PushMessageContentMessageForwards]
  /// [PushMessageContentPaidMedia]
  /// [PushMessageContentPhoto]
  /// [PushMessageContentPoll]
  /// [PushMessageContentPollOptionAdded]
  /// [PushMessageContentPremiumGiftCode]
  /// [PushMessageContentProximityAlertTriggered]
  /// [PushMessageContentRecurringPayment]
  /// [PushMessageContentScreenshotTaken]
  /// [PushMessageContentSticker]
  /// [PushMessageContentStory]
  /// [PushMessageContentSuggestBirthdate]
  /// [PushMessageContentSuggestProfilePhoto]
  /// [PushMessageContentText]
  /// [PushMessageContentUpgradedGift]
  /// [PushMessageContentVideo]
  /// [PushMessageContentVideoChatEnded]
  /// [PushMessageContentVideoChatStarted]
  /// [PushMessageContentVideoNote]
  /// [PushMessageContentVoiceNote]
  static PushMessageContent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PushMessageContentAnimation.constructor:
        return PushMessageContentAnimation.fromJson(json);

      case PushMessageContentAudio.constructor:
        return PushMessageContentAudio.fromJson(json);

      case PushMessageContentBasicGroupChatCreate.constructor:
        return PushMessageContentBasicGroupChatCreate.fromJson(json);

      case PushMessageContentChatAddMembers.constructor:
        return PushMessageContentChatAddMembers.fromJson(json);

      case PushMessageContentChatChangePhoto.constructor:
        return PushMessageContentChatChangePhoto.fromJson(json);

      case PushMessageContentChatChangeTitle.constructor:
        return PushMessageContentChatChangeTitle.fromJson(json);

      case PushMessageContentChatDeleteMember.constructor:
        return PushMessageContentChatDeleteMember.fromJson(json);

      case PushMessageContentChatJoinByLink.constructor:
        return PushMessageContentChatJoinByLink.fromJson(json);

      case PushMessageContentChatJoinByRequest.constructor:
        return PushMessageContentChatJoinByRequest.fromJson(json);

      case PushMessageContentChatSetBackground.constructor:
        return PushMessageContentChatSetBackground.fromJson(json);

      case PushMessageContentChatSetTheme.constructor:
        return PushMessageContentChatSetTheme.fromJson(json);

      case PushMessageContentChecklist.constructor:
        return PushMessageContentChecklist.fromJson(json);

      case PushMessageContentChecklistTasksAdded.constructor:
        return PushMessageContentChecklistTasksAdded.fromJson(json);

      case PushMessageContentChecklistTasksDone.constructor:
        return PushMessageContentChecklistTasksDone.fromJson(json);

      case PushMessageContentContact.constructor:
        return PushMessageContentContact.fromJson(json);

      case PushMessageContentContactRegistered.constructor:
        return PushMessageContentContactRegistered.fromJson(json);

      case PushMessageContentDocument.constructor:
        return PushMessageContentDocument.fromJson(json);

      case PushMessageContentGame.constructor:
        return PushMessageContentGame.fromJson(json);

      case PushMessageContentGameScore.constructor:
        return PushMessageContentGameScore.fromJson(json);

      case PushMessageContentGift.constructor:
        return PushMessageContentGift.fromJson(json);

      case PushMessageContentGiveaway.constructor:
        return PushMessageContentGiveaway.fromJson(json);

      case PushMessageContentHidden.constructor:
        return PushMessageContentHidden.fromJson(json);

      case PushMessageContentInviteVideoChatParticipants.constructor:
        return PushMessageContentInviteVideoChatParticipants.fromJson(json);

      case PushMessageContentInvoice.constructor:
        return PushMessageContentInvoice.fromJson(json);

      case PushMessageContentLocation.constructor:
        return PushMessageContentLocation.fromJson(json);

      case PushMessageContentMediaAlbum.constructor:
        return PushMessageContentMediaAlbum.fromJson(json);

      case PushMessageContentMessageForwards.constructor:
        return PushMessageContentMessageForwards.fromJson(json);

      case PushMessageContentPaidMedia.constructor:
        return PushMessageContentPaidMedia.fromJson(json);

      case PushMessageContentPhoto.constructor:
        return PushMessageContentPhoto.fromJson(json);

      case PushMessageContentPoll.constructor:
        return PushMessageContentPoll.fromJson(json);

      case PushMessageContentPollOptionAdded.constructor:
        return PushMessageContentPollOptionAdded.fromJson(json);

      case PushMessageContentPremiumGiftCode.constructor:
        return PushMessageContentPremiumGiftCode.fromJson(json);

      case PushMessageContentProximityAlertTriggered.constructor:
        return PushMessageContentProximityAlertTriggered.fromJson(json);

      case PushMessageContentRecurringPayment.constructor:
        return PushMessageContentRecurringPayment.fromJson(json);

      case PushMessageContentScreenshotTaken.constructor:
        return PushMessageContentScreenshotTaken.fromJson(json);

      case PushMessageContentSticker.constructor:
        return PushMessageContentSticker.fromJson(json);

      case PushMessageContentStory.constructor:
        return PushMessageContentStory.fromJson(json);

      case PushMessageContentSuggestBirthdate.constructor:
        return PushMessageContentSuggestBirthdate.fromJson(json);

      case PushMessageContentSuggestProfilePhoto.constructor:
        return PushMessageContentSuggestProfilePhoto.fromJson(json);

      case PushMessageContentText.constructor:
        return PushMessageContentText.fromJson(json);

      case PushMessageContentUpgradedGift.constructor:
        return PushMessageContentUpgradedGift.fromJson(json);

      case PushMessageContentVideo.constructor:
        return PushMessageContentVideo.fromJson(json);

      case PushMessageContentVideoChatEnded.constructor:
        return PushMessageContentVideoChatEnded.fromJson(json);

      case PushMessageContentVideoChatStarted.constructor:
        return PushMessageContentVideoChatStarted.fromJson(json);

      case PushMessageContentVideoNote.constructor:
        return PushMessageContentVideoNote.fromJson(json);

      case PushMessageContentVoiceNote.constructor:
        return PushMessageContentVoiceNote.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An animation message (GIF-style).
@immutable
final class PushMessageContentAnimation extends PushMessageContent {
  PushMessageContentAnimation({
    this.animation,
    required this.caption,
    required this.isPinned,
  });

  /// [animation] Message content; may be null
  final Animation? animation;

  /// [caption] Animation caption
  final String caption;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentAnimation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'animation': animation?.toJson(),
    'caption': caption,
    'is_pinned': isPinned,
    '@type': constructor,
  };

  static PushMessageContentAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentAnimation(
      animation: Animation.fromJson(tdMapFromJson(json['animation'])),
      caption: (json['caption'] as String?) ?? '',
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An audio message
@immutable
final class PushMessageContentAudio extends PushMessageContent {
  PushMessageContentAudio({this.audio, required this.isPinned});

  /// [audio] Message content; may be null
  final Audio? audio;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentAudio';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'audio': audio?.toJson(),
    'is_pinned': isPinned,
    '@type': constructor,
  };

  static PushMessageContentAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentAudio(
      audio: Audio.fromJson(tdMapFromJson(json['audio'])),
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A newly created basic group
@immutable
final class PushMessageContentBasicGroupChatCreate extends PushMessageContent {
  const PushMessageContentBasicGroupChatCreate();

  static const String constructor = 'pushMessageContentBasicGroupChatCreate';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PushMessageContentBasicGroupChatCreate? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentBasicGroupChatCreate();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// New chat members were invited to a group
@immutable
final class PushMessageContentChatAddMembers extends PushMessageContent {
  PushMessageContentChatAddMembers({
    required this.memberName,
    required this.isCurrentUser,
    required this.isReturned,
  });

  /// [memberName] Name of the added member
  final String memberName;

  /// [isCurrentUser] True, if the current user was added to the group
  final bool isCurrentUser;

  /// [isReturned] True, if the user has returned to the group themselves
  final bool isReturned;

  static const String constructor = 'pushMessageContentChatAddMembers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'member_name': memberName,
    'is_current_user': isCurrentUser,
    'is_returned': isReturned,
    '@type': constructor,
  };

  static PushMessageContentChatAddMembers? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PushMessageContentChatAddMembers(
      memberName: (json['member_name'] as String?) ?? '',
      isCurrentUser: (json['is_current_user'] as bool?) ?? false,
      isReturned: (json['is_returned'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A chat photo was edited
@immutable
final class PushMessageContentChatChangePhoto extends PushMessageContent {
  const PushMessageContentChatChangePhoto();

  static const String constructor = 'pushMessageContentChatChangePhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PushMessageContentChatChangePhoto? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentChatChangePhoto();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A chat title was edited
@immutable
final class PushMessageContentChatChangeTitle extends PushMessageContent {
  PushMessageContentChatChangeTitle({required this.title});

  /// [title] New chat title
  final String title;

  static const String constructor = 'pushMessageContentChatChangeTitle';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'title': title,
    '@type': constructor,
  };

  static PushMessageContentChatChangeTitle? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PushMessageContentChatChangeTitle(
      title: (json['title'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A chat member was deleted
@immutable
final class PushMessageContentChatDeleteMember extends PushMessageContent {
  PushMessageContentChatDeleteMember({
    required this.memberName,
    required this.isCurrentUser,
    required this.isLeft,
  });

  /// [memberName] Name of the deleted member
  final String memberName;

  /// [isCurrentUser] True, if the current user was deleted from the group
  final bool isCurrentUser;

  /// [isLeft] True, if the user has left the group themselves
  final bool isLeft;

  static const String constructor = 'pushMessageContentChatDeleteMember';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'member_name': memberName,
    'is_current_user': isCurrentUser,
    'is_left': isLeft,
    '@type': constructor,
  };

  static PushMessageContentChatDeleteMember? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PushMessageContentChatDeleteMember(
      memberName: (json['member_name'] as String?) ?? '',
      isCurrentUser: (json['is_current_user'] as bool?) ?? false,
      isLeft: (json['is_left'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new member joined the chat via an invite link
@immutable
final class PushMessageContentChatJoinByLink extends PushMessageContent {
  const PushMessageContentChatJoinByLink();

  static const String constructor = 'pushMessageContentChatJoinByLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PushMessageContentChatJoinByLink? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentChatJoinByLink();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new member was accepted to the chat by an administrator
@immutable
final class PushMessageContentChatJoinByRequest extends PushMessageContent {
  const PushMessageContentChatJoinByRequest();

  static const String constructor = 'pushMessageContentChatJoinByRequest';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PushMessageContentChatJoinByRequest? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentChatJoinByRequest();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A chat background was edited
@immutable
final class PushMessageContentChatSetBackground extends PushMessageContent {
  PushMessageContentChatSetBackground({required this.isSame});

  /// [isSame] True, if the set background is the same as the background of the
  /// current user
  final bool isSame;

  static const String constructor = 'pushMessageContentChatSetBackground';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_same': isSame,
    '@type': constructor,
  };

  static PushMessageContentChatSetBackground? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PushMessageContentChatSetBackground(
      isSame: (json['is_same'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A chat theme was edited
@immutable
final class PushMessageContentChatSetTheme extends PushMessageContent {
  PushMessageContentChatSetTheme({required this.name});

  /// [name] If non-empty, human-readable name of the new theme. Otherwise, the
  /// chat theme was reset to the default one
  final String name;

  static const String constructor = 'pushMessageContentChatSetTheme';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'name': name,
    '@type': constructor,
  };

  static PushMessageContentChatSetTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentChatSetTheme(
      name: (json['name'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with a checklist
@immutable
final class PushMessageContentChecklist extends PushMessageContent {
  PushMessageContentChecklist({required this.title, required this.isPinned});

  /// [title] Checklist title
  final String title;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentChecklist';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'title': title,
    'is_pinned': isPinned,
    '@type': constructor,
  };

  static PushMessageContentChecklist? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentChecklist(
      title: (json['title'] as String?) ?? '',
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Some tasks were added to a checklist
@immutable
final class PushMessageContentChecklistTasksAdded extends PushMessageContent {
  PushMessageContentChecklistTasksAdded({required this.taskCount});

  /// [taskCount] Number of added tasks
  final int taskCount;

  static const String constructor = 'pushMessageContentChecklistTasksAdded';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'task_count': taskCount,
    '@type': constructor,
  };

  static PushMessageContentChecklistTasksAdded? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PushMessageContentChecklistTasksAdded(
      taskCount: (json['task_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Some tasks from a checklist were marked as done or not done
@immutable
final class PushMessageContentChecklistTasksDone extends PushMessageContent {
  PushMessageContentChecklistTasksDone({required this.taskCount});

  /// [taskCount] Number of changed tasks
  final int taskCount;

  static const String constructor = 'pushMessageContentChecklistTasksDone';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'task_count': taskCount,
    '@type': constructor,
  };

  static PushMessageContentChecklistTasksDone? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PushMessageContentChecklistTasksDone(
      taskCount: (json['task_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with a user contact
@immutable
final class PushMessageContentContact extends PushMessageContent {
  PushMessageContentContact({required this.name, required this.isPinned});

  /// [name] Contact's name
  final String name;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentContact';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'name': name,
    'is_pinned': isPinned,
    '@type': constructor,
  };

  static PushMessageContentContact? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentContact(
      name: (json['name'] as String?) ?? '',
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A contact has registered with Telegram
@immutable
final class PushMessageContentContactRegistered extends PushMessageContent {
  PushMessageContentContactRegistered({required this.asPremiumAccount});

  /// [asPremiumAccount] True, if the user joined Telegram as a Telegram Premium
  /// account
  final bool asPremiumAccount;

  static const String constructor = 'pushMessageContentContactRegistered';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'as_premium_account': asPremiumAccount,
    '@type': constructor,
  };

  static PushMessageContentContactRegistered? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PushMessageContentContactRegistered(
      asPremiumAccount: (json['as_premium_account'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A document message (a general file)
@immutable
final class PushMessageContentDocument extends PushMessageContent {
  PushMessageContentDocument({this.document, required this.isPinned});

  /// [document] Message content; may be null
  final Document? document;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentDocument';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'document': document?.toJson(),
    'is_pinned': isPinned,
    '@type': constructor,
  };

  static PushMessageContentDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentDocument(
      document: Document.fromJson(tdMapFromJson(json['document'])),
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with a game
@immutable
final class PushMessageContentGame extends PushMessageContent {
  PushMessageContentGame({required this.title, required this.isPinned});

  /// [title] Game title, empty for pinned game message
  final String title;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentGame';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'title': title,
    'is_pinned': isPinned,
    '@type': constructor,
  };

  static PushMessageContentGame? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentGame(
      title: (json['title'] as String?) ?? '',
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new high score was achieved in a game
@immutable
final class PushMessageContentGameScore extends PushMessageContent {
  PushMessageContentGameScore({
    required this.title,
    required this.score,
    required this.isPinned,
  });

  /// [title] Game title, empty for pinned message
  final String title;

  /// [score] New score, 0 for pinned message
  final int score;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentGameScore';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'title': title,
    'score': score,
    'is_pinned': isPinned,
    '@type': constructor,
  };

  static PushMessageContentGameScore? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentGameScore(
      title: (json['title'] as String?) ?? '',
      score: (json['score'] as int?) ?? 0,
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with a gift
@immutable
final class PushMessageContentGift extends PushMessageContent {
  PushMessageContentGift({
    required this.starCount,
    required this.isPrepaidUpgrade,
  });

  /// [starCount] Number of Telegram Stars that sender paid for the gift
  final int starCount;

  /// [isPrepaidUpgrade] True, if the message is about prepaid upgrade of the
  /// gift by another user instead of actual receiving of a new gift
  final bool isPrepaidUpgrade;

  static const String constructor = 'pushMessageContentGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'star_count': starCount,
    'is_prepaid_upgrade': isPrepaidUpgrade,
    '@type': constructor,
  };

  static PushMessageContentGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentGift(
      starCount: (json['star_count'] as int?) ?? 0,
      isPrepaidUpgrade: (json['is_prepaid_upgrade'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with a giveaway
@immutable
final class PushMessageContentGiveaway extends PushMessageContent {
  PushMessageContentGiveaway({
    required this.winnerCount,
    this.prize,
    required this.isPinned,
  });

  /// [winnerCount] Number of users which will receive giveaway prizes; 0 for
  /// pinned message
  final int winnerCount;

  /// [prize] Prize of the giveaway; may be null for pinned message
  final GiveawayPrize? prize;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentGiveaway';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'winner_count': winnerCount,
    'prize': prize?.toJson(),
    'is_pinned': isPinned,
    '@type': constructor,
  };

  static PushMessageContentGiveaway? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentGiveaway(
      winnerCount: (json['winner_count'] as int?) ?? 0,
      prize: GiveawayPrize.fromJson(tdMapFromJson(json['prize'])),
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A general message with hidden content
@immutable
final class PushMessageContentHidden extends PushMessageContent {
  PushMessageContentHidden({required this.isPinned});

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentHidden';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_pinned': isPinned,
    '@type': constructor,
  };

  static PushMessageContentHidden? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentHidden(
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An invitation of participants to a video chat or live stream
@immutable
final class PushMessageContentInviteVideoChatParticipants
    extends PushMessageContent {
  PushMessageContentInviteVideoChatParticipants({required this.isCurrentUser});

  /// [isCurrentUser] True, if the current user was invited to the video chat or
  /// the live stream
  final bool isCurrentUser;

  static const String constructor =
      'pushMessageContentInviteVideoChatParticipants';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_current_user': isCurrentUser,
    '@type': constructor,
  };

  static PushMessageContentInviteVideoChatParticipants? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PushMessageContentInviteVideoChatParticipants(
      isCurrentUser: (json['is_current_user'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with an invoice from a bot
@immutable
final class PushMessageContentInvoice extends PushMessageContent {
  PushMessageContentInvoice({required this.price, required this.isPinned});

  /// [price] Product price
  final String price;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentInvoice';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'price': price,
    'is_pinned': isPinned,
    '@type': constructor,
  };

  static PushMessageContentInvoice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentInvoice(
      price: (json['price'] as String?) ?? '',
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with a location
@immutable
final class PushMessageContentLocation extends PushMessageContent {
  PushMessageContentLocation({required this.isLive, required this.isPinned});

  /// [isLive] True, if the location is live
  final bool isLive;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentLocation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_live': isLive,
    'is_pinned': isPinned,
    '@type': constructor,
  };

  static PushMessageContentLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentLocation(
      isLive: (json['is_live'] as bool?) ?? false,
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A media album
@immutable
final class PushMessageContentMediaAlbum extends PushMessageContent {
  PushMessageContentMediaAlbum({
    required this.totalCount,
    required this.hasPhotos,
    required this.hasVideos,
    required this.hasAudios,
    required this.hasDocuments,
  });

  /// [totalCount] Number of messages in the album
  final int totalCount;

  /// [hasPhotos] True, if the album has at least one photo
  final bool hasPhotos;

  /// [hasVideos] True, if the album has at least one video file
  final bool hasVideos;

  /// [hasAudios] True, if the album has at least one audio file
  final bool hasAudios;

  /// [hasDocuments] True, if the album has at least one document
  final bool hasDocuments;

  static const String constructor = 'pushMessageContentMediaAlbum';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'has_photos': hasPhotos,
    'has_videos': hasVideos,
    'has_audios': hasAudios,
    'has_documents': hasDocuments,
    '@type': constructor,
  };

  static PushMessageContentMediaAlbum? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentMediaAlbum(
      totalCount: (json['total_count'] as int?) ?? 0,
      hasPhotos: (json['has_photos'] as bool?) ?? false,
      hasVideos: (json['has_videos'] as bool?) ?? false,
      hasAudios: (json['has_audios'] as bool?) ?? false,
      hasDocuments: (json['has_documents'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A forwarded messages
@immutable
final class PushMessageContentMessageForwards extends PushMessageContent {
  PushMessageContentMessageForwards({required this.totalCount});

  /// [totalCount] Number of forwarded messages
  final int totalCount;

  static const String constructor = 'pushMessageContentMessageForwards';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    '@type': constructor,
  };

  static PushMessageContentMessageForwards? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PushMessageContentMessageForwards(
      totalCount: (json['total_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with paid media
@immutable
final class PushMessageContentPaidMedia extends PushMessageContent {
  PushMessageContentPaidMedia({
    required this.starCount,
    required this.isPinned,
  });

  /// [starCount] Number of Telegram Stars needed to buy access to the media in
  /// the message; 0 for pinned message
  final int starCount;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentPaidMedia';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'star_count': starCount,
    'is_pinned': isPinned,
    '@type': constructor,
  };

  static PushMessageContentPaidMedia? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentPaidMedia(
      starCount: (json['star_count'] as int?) ?? 0,
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A photo message
@immutable
final class PushMessageContentPhoto extends PushMessageContent {
  PushMessageContentPhoto({
    this.photo,
    required this.caption,
    required this.isSecret,
    required this.isPinned,
  });

  /// [photo] Message content; may be null
  final Photo? photo;

  /// [caption] Photo caption
  final String caption;

  /// [isSecret] True, if the photo is secret
  final bool isSecret;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentPhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'photo': photo?.toJson(),
    'caption': caption,
    'is_secret': isSecret,
    'is_pinned': isPinned,
    '@type': constructor,
  };

  static PushMessageContentPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentPhoto(
      photo: Photo.fromJson(tdMapFromJson(json['photo'])),
      caption: (json['caption'] as String?) ?? '',
      isSecret: (json['is_secret'] as bool?) ?? false,
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with a poll
@immutable
final class PushMessageContentPoll extends PushMessageContent {
  PushMessageContentPoll({
    required this.question,
    required this.isRegular,
    required this.isPinned,
  });

  /// [question] Poll question
  final String question;

  /// [isRegular] True, if the poll is regular and not in quiz mode
  final bool isRegular;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentPoll';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'question': question,
    'is_regular': isRegular,
    'is_pinned': isPinned,
    '@type': constructor,
  };

  static PushMessageContentPoll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentPoll(
      question: (json['question'] as String?) ?? '',
      isRegular: (json['is_regular'] as bool?) ?? false,
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An option was added to a poll
@immutable
final class PushMessageContentPollOptionAdded extends PushMessageContent {
  PushMessageContentPollOptionAdded({required this.text});

  /// [text] Text of the option
  final String text;

  static const String constructor = 'pushMessageContentPollOptionAdded';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text,
    '@type': constructor,
  };

  static PushMessageContentPollOptionAdded? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PushMessageContentPollOptionAdded(
      text: (json['text'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with a Telegram Premium gift code created for the user
@immutable
final class PushMessageContentPremiumGiftCode extends PushMessageContent {
  PushMessageContentPremiumGiftCode({required this.monthCount});

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active after code activation
  final int monthCount;

  static const String constructor = 'pushMessageContentPremiumGiftCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'month_count': monthCount,
    '@type': constructor,
  };

  static PushMessageContentPremiumGiftCode? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PushMessageContentPremiumGiftCode(
      monthCount: (json['month_count'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A user in the chat came within proximity alert range from the current user
@immutable
final class PushMessageContentProximityAlertTriggered
    extends PushMessageContent {
  PushMessageContentProximityAlertTriggered({required this.distance});

  /// [distance] The distance to the user
  final int distance;

  static const String constructor = 'pushMessageContentProximityAlertTriggered';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'distance': distance,
    '@type': constructor,
  };

  static PushMessageContentProximityAlertTriggered? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PushMessageContentProximityAlertTriggered(
      distance: (json['distance'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A new recurring payment was made by the current user
@immutable
final class PushMessageContentRecurringPayment extends PushMessageContent {
  PushMessageContentRecurringPayment({required this.amount});

  /// [amount] The paid amount
  final String amount;

  static const String constructor = 'pushMessageContentRecurringPayment';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'amount': amount,
    '@type': constructor,
  };

  static PushMessageContentRecurringPayment? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PushMessageContentRecurringPayment(
      amount: (json['amount'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A screenshot of a message in the chat has been taken
@immutable
final class PushMessageContentScreenshotTaken extends PushMessageContent {
  const PushMessageContentScreenshotTaken();

  static const String constructor = 'pushMessageContentScreenshotTaken';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PushMessageContentScreenshotTaken? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentScreenshotTaken();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with a sticker
@immutable
final class PushMessageContentSticker extends PushMessageContent {
  PushMessageContentSticker({
    this.sticker,
    required this.emoji,
    required this.isPinned,
  });

  /// [sticker] Message content; may be null
  final Sticker? sticker;

  /// [emoji] Emoji corresponding to the sticker; may be empty
  final String emoji;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentSticker';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sticker': sticker?.toJson(),
    'emoji': emoji,
    'is_pinned': isPinned,
    '@type': constructor,
  };

  static PushMessageContentSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentSticker(
      sticker: Sticker.fromJson(tdMapFromJson(json['sticker'])),
      emoji: (json['emoji'] as String?) ?? '',
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with a story
@immutable
final class PushMessageContentStory extends PushMessageContent {
  PushMessageContentStory({required this.isMention, required this.isPinned});

  /// [isMention] True, if the user was mentioned in the story
  final bool isMention;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentStory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_mention': isMention,
    'is_pinned': isPinned,
    '@type': constructor,
  };

  static PushMessageContentStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentStory(
      isMention: (json['is_mention'] as bool?) ?? false,
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A birthdate was suggested to be set
@immutable
final class PushMessageContentSuggestBirthdate extends PushMessageContent {
  const PushMessageContentSuggestBirthdate();

  static const String constructor = 'pushMessageContentSuggestBirthdate';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PushMessageContentSuggestBirthdate? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentSuggestBirthdate();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A profile photo was suggested to the user
@immutable
final class PushMessageContentSuggestProfilePhoto extends PushMessageContent {
  const PushMessageContentSuggestProfilePhoto();

  static const String constructor = 'pushMessageContentSuggestProfilePhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PushMessageContentSuggestProfilePhoto? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentSuggestProfilePhoto();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A text message
@immutable
final class PushMessageContentText extends PushMessageContent {
  PushMessageContentText({required this.text, required this.isPinned});

  /// [text] Message text
  final String text;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentText';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text,
    'is_pinned': isPinned,
    '@type': constructor,
  };

  static PushMessageContentText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentText(
      text: (json['text'] as String?) ?? '',
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A message with an upgraded gift
@immutable
final class PushMessageContentUpgradedGift extends PushMessageContent {
  PushMessageContentUpgradedGift({
    required this.isUpgrade,
    required this.isPrepaidUpgrade,
  });

  /// [isUpgrade] True, if the gift was obtained by upgrading of a previously
  /// received gift; otherwise, if is_prepaid_upgrade == false, then this is a
  /// transferred or resold gift
  final bool isUpgrade;

  /// [isPrepaidUpgrade] True, if the message is about completion of prepaid
  /// upgrade of the gift instead of actual receiving of a new gift
  final bool isPrepaidUpgrade;

  static const String constructor = 'pushMessageContentUpgradedGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_upgrade': isUpgrade,
    'is_prepaid_upgrade': isPrepaidUpgrade,
    '@type': constructor,
  };

  static PushMessageContentUpgradedGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentUpgradedGift(
      isUpgrade: (json['is_upgrade'] as bool?) ?? false,
      isPrepaidUpgrade: (json['is_prepaid_upgrade'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A video message
@immutable
final class PushMessageContentVideo extends PushMessageContent {
  PushMessageContentVideo({
    this.video,
    required this.caption,
    required this.isSecret,
    required this.isPinned,
  });

  /// [video] Message content; may be null
  final Video? video;

  /// [caption] Video caption
  final String caption;

  /// [isSecret] True, if the video is secret
  final bool isSecret;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'video': video?.toJson(),
    'caption': caption,
    'is_secret': isSecret,
    'is_pinned': isPinned,
    '@type': constructor,
  };

  static PushMessageContentVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentVideo(
      video: Video.fromJson(tdMapFromJson(json['video'])),
      caption: (json['caption'] as String?) ?? '',
      isSecret: (json['is_secret'] as bool?) ?? false,
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A video chat or live stream has ended
@immutable
final class PushMessageContentVideoChatEnded extends PushMessageContent {
  const PushMessageContentVideoChatEnded();

  static const String constructor = 'pushMessageContentVideoChatEnded';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PushMessageContentVideoChatEnded? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentVideoChatEnded();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A video chat or live stream was started
@immutable
final class PushMessageContentVideoChatStarted extends PushMessageContent {
  const PushMessageContentVideoChatStarted();

  static const String constructor = 'pushMessageContentVideoChatStarted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PushMessageContentVideoChatStarted? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PushMessageContentVideoChatStarted();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A video note message
@immutable
final class PushMessageContentVideoNote extends PushMessageContent {
  PushMessageContentVideoNote({this.videoNote, required this.isPinned});

  /// [videoNote] Message content; may be null
  final VideoNote? videoNote;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentVideoNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'video_note': videoNote?.toJson(),
    'is_pinned': isPinned,
    '@type': constructor,
  };

  static PushMessageContentVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentVideoNote(
      videoNote: VideoNote.fromJson(tdMapFromJson(json['video_note'])),
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A voice note message
@immutable
final class PushMessageContentVoiceNote extends PushMessageContent {
  PushMessageContentVoiceNote({this.voiceNote, required this.isPinned});

  /// [voiceNote] Message content; may be null
  final VoiceNote? voiceNote;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentVoiceNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'voice_note': voiceNote?.toJson(),
    'is_pinned': isPinned,
    '@type': constructor,
  };

  static PushMessageContentVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentVoiceNote(
      voiceNote: VoiceNote.fromJson(tdMapFromJson(json['voice_note'])),
      isPinned: (json['is_pinned'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
