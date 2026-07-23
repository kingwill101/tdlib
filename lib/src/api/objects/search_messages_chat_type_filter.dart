import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a filter for type of the chats in which to search messages
@immutable
sealed class SearchMessagesChatTypeFilter extends TdObject {
  const SearchMessagesChatTypeFilter();

  static const String constructor = 'searchMessagesChatTypeFilter';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [SearchMessagesChatTypeFilterChannel]
  /// [SearchMessagesChatTypeFilterGroup]
  /// [SearchMessagesChatTypeFilterPrivate]
  static SearchMessagesChatTypeFilter? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SearchMessagesChatTypeFilterChannel.constructor:
        return SearchMessagesChatTypeFilterChannel.fromJson(json);

      case SearchMessagesChatTypeFilterGroup.constructor:
        return SearchMessagesChatTypeFilterGroup.fromJson(json);

      case SearchMessagesChatTypeFilterPrivate.constructor:
        return SearchMessagesChatTypeFilterPrivate.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns only messages in channel chats
@immutable
final class SearchMessagesChatTypeFilterChannel
    extends SearchMessagesChatTypeFilter {
  const SearchMessagesChatTypeFilterChannel();

  static const String constructor = 'searchMessagesChatTypeFilterChannel';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SearchMessagesChatTypeFilterChannel? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesChatTypeFilterChannel();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns only messages in basic group and supergroup chats
@immutable
final class SearchMessagesChatTypeFilterGroup
    extends SearchMessagesChatTypeFilter {
  const SearchMessagesChatTypeFilterGroup();

  static const String constructor = 'searchMessagesChatTypeFilterGroup';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SearchMessagesChatTypeFilterGroup? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesChatTypeFilterGroup();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Returns only messages in private chats
@immutable
final class SearchMessagesChatTypeFilterPrivate
    extends SearchMessagesChatTypeFilter {
  const SearchMessagesChatTypeFilterPrivate();

  static const String constructor = 'searchMessagesChatTypeFilterPrivate';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static SearchMessagesChatTypeFilterPrivate? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesChatTypeFilterPrivate();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
