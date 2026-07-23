import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of public chat
@immutable
sealed class PublicChatType extends TdObject {
  const PublicChatType();

  static const String constructor = 'publicChatType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [PublicChatTypeHasUsername]
  /// [PublicChatTypeIsLocationBased]
  static PublicChatType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PublicChatTypeHasUsername.constructor:
        return PublicChatTypeHasUsername.fromJson(json);

      case PublicChatTypeIsLocationBased.constructor:
        return PublicChatTypeIsLocationBased.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat is public, because it has an active username
@immutable
final class PublicChatTypeHasUsername extends PublicChatType {
  const PublicChatTypeHasUsername();

  static const String constructor = 'publicChatTypeHasUsername';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PublicChatTypeHasUsername? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PublicChatTypeHasUsername();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The chat is public, because it is a location-based supergroup
@immutable
final class PublicChatTypeIsLocationBased extends PublicChatType {
  const PublicChatTypeIsLocationBased();

  static const String constructor = 'publicChatTypeIsLocationBased';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PublicChatTypeIsLocationBased? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PublicChatTypeIsLocationBased();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
