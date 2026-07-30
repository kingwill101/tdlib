import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes result of a chat join request
@immutable
sealed class ChatJoinRequestResult extends TdObject {
  const ChatJoinRequestResult();

  static const String constructor = 'chatJoinRequestResult';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ChatJoinRequestResultApproved]
  /// [ChatJoinRequestResultDeclined]
  /// [ChatJoinRequestResultQueued]
  static ChatJoinRequestResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatJoinRequestResultApproved.constructor:
        return ChatJoinRequestResultApproved.fromJson(json);

      case ChatJoinRequestResultDeclined.constructor:
        return ChatJoinRequestResultDeclined.fromJson(json);

      case ChatJoinRequestResultQueued.constructor:
        return ChatJoinRequestResultQueued.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The request was approved
@immutable
final class ChatJoinRequestResultApproved extends ChatJoinRequestResult {
  const ChatJoinRequestResultApproved();

  static const String constructor = 'chatJoinRequestResultApproved';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatJoinRequestResultApproved? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatJoinRequestResultApproved();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The request was declined
@immutable
final class ChatJoinRequestResultDeclined extends ChatJoinRequestResult {
  const ChatJoinRequestResultDeclined();

  static const String constructor = 'chatJoinRequestResultDeclined';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatJoinRequestResultDeclined? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatJoinRequestResultDeclined();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The request was postponed without a decision
@immutable
final class ChatJoinRequestResultQueued extends ChatJoinRequestResult {
  const ChatJoinRequestResultQueued();

  static const String constructor = 'chatJoinRequestResultQueued';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ChatJoinRequestResultQueued? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatJoinRequestResultQueued();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
