import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes source of a message
@immutable
sealed class MessageSource extends TdObject {
  const MessageSource();

  static const String constructor = 'messageSource';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [MessageSourceChatEventLog]
  /// [MessageSourceChatHistory]
  /// [MessageSourceChatList]
  /// [MessageSourceDirectMessagesChatTopicHistory]
  /// [MessageSourceForumTopicHistory]
  /// [MessageSourceHistoryPreview]
  /// [MessageSourceMessageThreadHistory]
  /// [MessageSourceNotification]
  /// [MessageSourceOther]
  /// [MessageSourceScreenshot]
  /// [MessageSourceSearch]
  static MessageSource? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageSourceChatEventLog.constructor:
        return MessageSourceChatEventLog.fromJson(json);

      case MessageSourceChatHistory.constructor:
        return MessageSourceChatHistory.fromJson(json);

      case MessageSourceChatList.constructor:
        return MessageSourceChatList.fromJson(json);

      case MessageSourceDirectMessagesChatTopicHistory.constructor:
        return MessageSourceDirectMessagesChatTopicHistory.fromJson(json);

      case MessageSourceForumTopicHistory.constructor:
        return MessageSourceForumTopicHistory.fromJson(json);

      case MessageSourceHistoryPreview.constructor:
        return MessageSourceHistoryPreview.fromJson(json);

      case MessageSourceMessageThreadHistory.constructor:
        return MessageSourceMessageThreadHistory.fromJson(json);

      case MessageSourceNotification.constructor:
        return MessageSourceNotification.fromJson(json);

      case MessageSourceOther.constructor:
        return MessageSourceOther.fromJson(json);

      case MessageSourceScreenshot.constructor:
        return MessageSourceScreenshot.fromJson(json);

      case MessageSourceSearch.constructor:
        return MessageSourceSearch.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message is from a chat event log
@immutable
final class MessageSourceChatEventLog extends MessageSource {
  const MessageSourceChatEventLog();

  static const String constructor = 'messageSourceChatEventLog';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageSourceChatEventLog? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageSourceChatEventLog();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message is from a chat history
@immutable
final class MessageSourceChatHistory extends MessageSource {
  const MessageSourceChatHistory();

  static const String constructor = 'messageSourceChatHistory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageSourceChatHistory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageSourceChatHistory();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message is from a chat list or a forum topic list
@immutable
final class MessageSourceChatList extends MessageSource {
  const MessageSourceChatList();

  static const String constructor = 'messageSourceChatList';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageSourceChatList? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageSourceChatList();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message is from history of a topic in a channel direct messages chat
/// administered by the current user
@immutable
final class MessageSourceDirectMessagesChatTopicHistory extends MessageSource {
  const MessageSourceDirectMessagesChatTopicHistory();

  static const String constructor =
      'messageSourceDirectMessagesChatTopicHistory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageSourceDirectMessagesChatTopicHistory? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const MessageSourceDirectMessagesChatTopicHistory();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message is from history of a forum topic
@immutable
final class MessageSourceForumTopicHistory extends MessageSource {
  const MessageSourceForumTopicHistory();

  static const String constructor = 'messageSourceForumTopicHistory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageSourceForumTopicHistory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageSourceForumTopicHistory();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message is from chat, message thread or forum topic history preview
@immutable
final class MessageSourceHistoryPreview extends MessageSource {
  const MessageSourceHistoryPreview();

  static const String constructor = 'messageSourceHistoryPreview';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageSourceHistoryPreview? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageSourceHistoryPreview();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message is from history of a message thread
@immutable
final class MessageSourceMessageThreadHistory extends MessageSource {
  const MessageSourceMessageThreadHistory();

  static const String constructor = 'messageSourceMessageThreadHistory';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageSourceMessageThreadHistory? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const MessageSourceMessageThreadHistory();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message is from a notification
@immutable
final class MessageSourceNotification extends MessageSource {
  const MessageSourceNotification();

  static const String constructor = 'messageSourceNotification';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageSourceNotification? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageSourceNotification();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message is from some other source
@immutable
final class MessageSourceOther extends MessageSource {
  const MessageSourceOther();

  static const String constructor = 'messageSourceOther';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageSourceOther? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageSourceOther();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message was screenshotted; the source must be used only if the message
/// content was visible during the screenshot
@immutable
final class MessageSourceScreenshot extends MessageSource {
  const MessageSourceScreenshot();

  static const String constructor = 'messageSourceScreenshot';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageSourceScreenshot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageSourceScreenshot();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message is from search results, including file downloads, local file
/// list, outgoing document messages, calendar
@immutable
final class MessageSourceSearch extends MessageSource {
  const MessageSourceSearch();

  static const String constructor = 'messageSourceSearch';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageSourceSearch? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageSourceSearch();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
