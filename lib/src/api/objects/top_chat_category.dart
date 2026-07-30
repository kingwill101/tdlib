import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents the categories of chats for which a list of frequently used
/// chats can be retrieved
@immutable
sealed class TopChatCategory extends TdObject {
  const TopChatCategory();

  static const String constructor = 'topChatCategory';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [TopChatCategoryBots]
  /// [TopChatCategoryCalls]
  /// [TopChatCategoryChannels]
  /// [TopChatCategoryForwardChats]
  /// [TopChatCategoryGroups]
  /// [TopChatCategoryGuestBots]
  /// [TopChatCategoryInlineBots]
  /// [TopChatCategoryUsers]
  /// [TopChatCategoryWebAppBots]
  static TopChatCategory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case TopChatCategoryBots.constructor:
        return TopChatCategoryBots.fromJson(json);

      case TopChatCategoryCalls.constructor:
        return TopChatCategoryCalls.fromJson(json);

      case TopChatCategoryChannels.constructor:
        return TopChatCategoryChannels.fromJson(json);

      case TopChatCategoryForwardChats.constructor:
        return TopChatCategoryForwardChats.fromJson(json);

      case TopChatCategoryGroups.constructor:
        return TopChatCategoryGroups.fromJson(json);

      case TopChatCategoryGuestBots.constructor:
        return TopChatCategoryGuestBots.fromJson(json);

      case TopChatCategoryInlineBots.constructor:
        return TopChatCategoryInlineBots.fromJson(json);

      case TopChatCategoryUsers.constructor:
        return TopChatCategoryUsers.fromJson(json);

      case TopChatCategoryWebAppBots.constructor:
        return TopChatCategoryWebAppBots.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A category containing frequently used private chats with bot users
@immutable
final class TopChatCategoryBots extends TopChatCategory {
  const TopChatCategoryBots();

  static const String constructor = 'topChatCategoryBots';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TopChatCategoryBots? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryBots();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A category containing frequently used chats used for calls
@immutable
final class TopChatCategoryCalls extends TopChatCategory {
  const TopChatCategoryCalls();

  static const String constructor = 'topChatCategoryCalls';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TopChatCategoryCalls? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryCalls();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A category containing frequently used channels
@immutable
final class TopChatCategoryChannels extends TopChatCategory {
  const TopChatCategoryChannels();

  static const String constructor = 'topChatCategoryChannels';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TopChatCategoryChannels? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryChannels();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A category containing frequently used chats used to forward messages
@immutable
final class TopChatCategoryForwardChats extends TopChatCategory {
  const TopChatCategoryForwardChats();

  static const String constructor = 'topChatCategoryForwardChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TopChatCategoryForwardChats? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryForwardChats();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A category containing frequently used basic groups and supergroups
@immutable
final class TopChatCategoryGroups extends TopChatCategory {
  const TopChatCategoryGroups();

  static const String constructor = 'topChatCategoryGroups';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TopChatCategoryGroups? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryGroups();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A category containing frequently used chats with bots, which were used as
/// guest bots
@immutable
final class TopChatCategoryGuestBots extends TopChatCategory {
  const TopChatCategoryGuestBots();

  static const String constructor = 'topChatCategoryGuestBots';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TopChatCategoryGuestBots? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryGuestBots();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A category containing frequently used chats with inline bots sorted by
/// their usage in inline mode
@immutable
final class TopChatCategoryInlineBots extends TopChatCategory {
  const TopChatCategoryInlineBots();

  static const String constructor = 'topChatCategoryInlineBots';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TopChatCategoryInlineBots? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryInlineBots();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A category containing frequently used private chats with non-bot users
@immutable
final class TopChatCategoryUsers extends TopChatCategory {
  const TopChatCategoryUsers();

  static const String constructor = 'topChatCategoryUsers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TopChatCategoryUsers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryUsers();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A category containing frequently used chats with bots, which Web Apps were
/// opened
@immutable
final class TopChatCategoryWebAppBots extends TopChatCategory {
  const TopChatCategoryWebAppBots();

  static const String constructor = 'topChatCategoryWebAppBots';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static TopChatCategoryWebAppBots? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryWebAppBots();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
