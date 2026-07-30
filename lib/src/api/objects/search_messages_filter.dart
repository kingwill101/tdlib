import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a filter for message search results
@immutable
sealed class SearchMessagesFilter extends TdObject {
  const SearchMessagesFilter();

  static const String constructor = 'searchMessagesFilter';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [SearchMessagesFilterAnimation]
  /// [SearchMessagesFilterAudio]
  /// [SearchMessagesFilterChatPhoto]
  /// [SearchMessagesFilterDocument]
  /// [SearchMessagesFilterEmpty]
  /// [SearchMessagesFilterFailedToSend]
  /// [SearchMessagesFilterMention]
  /// [SearchMessagesFilterPhoto]
  /// [SearchMessagesFilterPhotoAndVideo]
  /// [SearchMessagesFilterPinned]
  /// [SearchMessagesFilterPoll]
  /// [SearchMessagesFilterUnreadMention]
  /// [SearchMessagesFilterUnreadPollVote]
  /// [SearchMessagesFilterUnreadReaction]
  /// [SearchMessagesFilterUrl]
  /// [SearchMessagesFilterVideo]
  /// [SearchMessagesFilterVideoNote]
  /// [SearchMessagesFilterVoiceAndVideoNote]
  /// [SearchMessagesFilterVoiceNote]
  static SearchMessagesFilter? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SearchMessagesFilterAnimation.constructor:
        return SearchMessagesFilterAnimation.fromJson(json);

      case SearchMessagesFilterAudio.constructor:
        return SearchMessagesFilterAudio.fromJson(json);

      case SearchMessagesFilterChatPhoto.constructor:
        return SearchMessagesFilterChatPhoto.fromJson(json);

      case SearchMessagesFilterDocument.constructor:
        return SearchMessagesFilterDocument.fromJson(json);

      case SearchMessagesFilterEmpty.constructor:
        return SearchMessagesFilterEmpty.fromJson(json);

      case SearchMessagesFilterFailedToSend.constructor:
        return SearchMessagesFilterFailedToSend.fromJson(json);

      case SearchMessagesFilterMention.constructor:
        return SearchMessagesFilterMention.fromJson(json);

      case SearchMessagesFilterPhoto.constructor:
        return SearchMessagesFilterPhoto.fromJson(json);

      case SearchMessagesFilterPhotoAndVideo.constructor:
        return SearchMessagesFilterPhotoAndVideo.fromJson(json);

      case SearchMessagesFilterPinned.constructor:
        return SearchMessagesFilterPinned.fromJson(json);

      case SearchMessagesFilterPoll.constructor:
        return SearchMessagesFilterPoll.fromJson(json);

      case SearchMessagesFilterUnreadMention.constructor:
        return SearchMessagesFilterUnreadMention.fromJson(json);

      case SearchMessagesFilterUnreadPollVote.constructor:
        return SearchMessagesFilterUnreadPollVote.fromJson(json);

      case SearchMessagesFilterUnreadReaction.constructor:
        return SearchMessagesFilterUnreadReaction.fromJson(json);

      case SearchMessagesFilterUrl.constructor:
        return SearchMessagesFilterUrl.fromJson(json);

      case SearchMessagesFilterVideo.constructor:
        return SearchMessagesFilterVideo.fromJson(json);

      case SearchMessagesFilterVideoNote.constructor:
        return SearchMessagesFilterVideoNote.fromJson(json);

      case SearchMessagesFilterVoiceAndVideoNote.constructor:
        return SearchMessagesFilterVoiceAndVideoNote.fromJson(json);

      case SearchMessagesFilterVoiceNote.constructor:
        return SearchMessagesFilterVoiceNote.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns only animation messages
@immutable
final class SearchMessagesFilterAnimation extends SearchMessagesFilter {
  const SearchMessagesFilterAnimation();

  static const String constructor = 'searchMessagesFilterAnimation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SearchMessagesFilterAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterAnimation();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns only audio messages
@immutable
final class SearchMessagesFilterAudio extends SearchMessagesFilter {
  const SearchMessagesFilterAudio();

  static const String constructor = 'searchMessagesFilterAudio';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SearchMessagesFilterAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterAudio();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns only messages containing chat photos
@immutable
final class SearchMessagesFilterChatPhoto extends SearchMessagesFilter {
  const SearchMessagesFilterChatPhoto();

  static const String constructor = 'searchMessagesFilterChatPhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SearchMessagesFilterChatPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterChatPhoto();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns only document messages
@immutable
final class SearchMessagesFilterDocument extends SearchMessagesFilter {
  const SearchMessagesFilterDocument();

  static const String constructor = 'searchMessagesFilterDocument';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SearchMessagesFilterDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterDocument();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns all found messages, no filter is applied
@immutable
final class SearchMessagesFilterEmpty extends SearchMessagesFilter {
  const SearchMessagesFilterEmpty();

  static const String constructor = 'searchMessagesFilterEmpty';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SearchMessagesFilterEmpty? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterEmpty();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns only failed to send messages. This filter can be used only if the
/// message database is used
@immutable
final class SearchMessagesFilterFailedToSend extends SearchMessagesFilter {
  const SearchMessagesFilterFailedToSend();

  static const String constructor = 'searchMessagesFilterFailedToSend';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SearchMessagesFilterFailedToSend? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterFailedToSend();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns only messages with mentions of the current user, or messages that
/// are replies to their messages
@immutable
final class SearchMessagesFilterMention extends SearchMessagesFilter {
  const SearchMessagesFilterMention();

  static const String constructor = 'searchMessagesFilterMention';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SearchMessagesFilterMention? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterMention();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns only photo messages
@immutable
final class SearchMessagesFilterPhoto extends SearchMessagesFilter {
  const SearchMessagesFilterPhoto();

  static const String constructor = 'searchMessagesFilterPhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SearchMessagesFilterPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterPhoto();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns only photo and video messages
@immutable
final class SearchMessagesFilterPhotoAndVideo extends SearchMessagesFilter {
  const SearchMessagesFilterPhotoAndVideo();

  static const String constructor = 'searchMessagesFilterPhotoAndVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SearchMessagesFilterPhotoAndVideo? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterPhotoAndVideo();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns only pinned messages
@immutable
final class SearchMessagesFilterPinned extends SearchMessagesFilter {
  const SearchMessagesFilterPinned();

  static const String constructor = 'searchMessagesFilterPinned';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SearchMessagesFilterPinned? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterPinned();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns only poll messages
@immutable
final class SearchMessagesFilterPoll extends SearchMessagesFilter {
  const SearchMessagesFilterPoll();

  static const String constructor = 'searchMessagesFilterPoll';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SearchMessagesFilterPoll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterPoll();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns only messages with unread mentions of the current user, or
/// messages that are replies to their messages. When using this filter the
/// results can't be additionally filtered by a query or by the sending user
@immutable
final class SearchMessagesFilterUnreadMention extends SearchMessagesFilter {
  const SearchMessagesFilterUnreadMention();

  static const String constructor = 'searchMessagesFilterUnreadMention';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SearchMessagesFilterUnreadMention? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterUnreadMention();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns only messages with unread poll votes for the current user. When
/// using this filter the results can't be additionally filtered by a query or
/// by the sending user
@immutable
final class SearchMessagesFilterUnreadPollVote extends SearchMessagesFilter {
  const SearchMessagesFilterUnreadPollVote();

  static const String constructor = 'searchMessagesFilterUnreadPollVote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SearchMessagesFilterUnreadPollVote? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterUnreadPollVote();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns only messages with unread reactions for the current user. When
/// using this filter the results can't be additionally filtered by a query or
/// by the sending user
@immutable
final class SearchMessagesFilterUnreadReaction extends SearchMessagesFilter {
  const SearchMessagesFilterUnreadReaction();

  static const String constructor = 'searchMessagesFilterUnreadReaction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SearchMessagesFilterUnreadReaction? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterUnreadReaction();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns only messages containing URLs
@immutable
final class SearchMessagesFilterUrl extends SearchMessagesFilter {
  const SearchMessagesFilterUrl();

  static const String constructor = 'searchMessagesFilterUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SearchMessagesFilterUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterUrl();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns only video messages
@immutable
final class SearchMessagesFilterVideo extends SearchMessagesFilter {
  const SearchMessagesFilterVideo();

  static const String constructor = 'searchMessagesFilterVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SearchMessagesFilterVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterVideo();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns only video note messages
@immutable
final class SearchMessagesFilterVideoNote extends SearchMessagesFilter {
  const SearchMessagesFilterVideoNote();

  static const String constructor = 'searchMessagesFilterVideoNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SearchMessagesFilterVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterVideoNote();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns only voice and video note messages
@immutable
final class SearchMessagesFilterVoiceAndVideoNote extends SearchMessagesFilter {
  const SearchMessagesFilterVoiceAndVideoNote();

  static const String constructor = 'searchMessagesFilterVoiceAndVideoNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SearchMessagesFilterVoiceAndVideoNote? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterVoiceAndVideoNote();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns only voice note messages
@immutable
final class SearchMessagesFilterVoiceNote extends SearchMessagesFilter {
  const SearchMessagesFilterVoiceNote();

  static const String constructor = 'searchMessagesFilterVoiceNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SearchMessagesFilterVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterVoiceNote();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
