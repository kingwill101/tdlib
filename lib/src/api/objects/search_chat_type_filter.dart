import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a filter for type of the chats to search for
@immutable
sealed class SearchChatTypeFilter extends TdObject {
  const SearchChatTypeFilter();

  static const String constructor = 'searchChatTypeFilter';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [SearchChatTypeFilterBot]
  /// [SearchChatTypeFilterChannel]
  static SearchChatTypeFilter? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SearchChatTypeFilterBot.constructor:
        return SearchChatTypeFilterBot.fromJson(json);

      case SearchChatTypeFilterChannel.constructor:
        return SearchChatTypeFilterChannel.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns only private chats with bots
@immutable
final class SearchChatTypeFilterBot extends SearchChatTypeFilter {
  const SearchChatTypeFilterBot();

  static const String constructor = 'searchChatTypeFilterBot';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SearchChatTypeFilterBot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchChatTypeFilterBot();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns only channel chats
@immutable
final class SearchChatTypeFilterChannel extends SearchChatTypeFilter {
  const SearchChatTypeFilterChannel();

  static const String constructor = 'searchChatTypeFilterChannel';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SearchChatTypeFilterChannel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchChatTypeFilterChannel();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
