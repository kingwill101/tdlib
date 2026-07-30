import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes when a message will be self-destructed
@immutable
sealed class MessageSelfDestructType extends TdObject {
  const MessageSelfDestructType();

  static const String constructor = 'messageSelfDestructType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [MessageSelfDestructTypeImmediately]
  /// [MessageSelfDestructTypeTimer]
  static MessageSelfDestructType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageSelfDestructTypeImmediately.constructor:
        return MessageSelfDestructTypeImmediately.fromJson(json);

      case MessageSelfDestructTypeTimer.constructor:
        return MessageSelfDestructTypeTimer.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message can be opened only once and will be self-destructed once
/// closed
@immutable
final class MessageSelfDestructTypeImmediately extends MessageSelfDestructType {
  const MessageSelfDestructTypeImmediately();

  static const String constructor = 'messageSelfDestructTypeImmediately';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static MessageSelfDestructTypeImmediately? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const MessageSelfDestructTypeImmediately();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The message will be self-destructed in the specified time after its
/// content was opened
@immutable
final class MessageSelfDestructTypeTimer extends MessageSelfDestructType {
  MessageSelfDestructTypeTimer({required this.selfDestructTime});

  /// [selfDestructTime] The message's self-destruct time, in seconds; must be
  /// between 0 and 60 in private chats
  final int selfDestructTime;

  static const String constructor = 'messageSelfDestructTypeTimer';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'self_destruct_time': selfDestructTime,
    '@type': constructor,
  };

  static MessageSelfDestructTypeTimer? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSelfDestructTypeTimer(
      selfDestructTime: (json['self_destruct_time'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
