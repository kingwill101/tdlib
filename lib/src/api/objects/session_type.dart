import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of user session
@immutable
sealed class SessionType extends TdObject {
  const SessionType();

  static const String constructor = 'sessionType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [SessionTypeConnectedBot]
  /// [SessionTypeDevice]
  static SessionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SessionTypeConnectedBot.constructor:
        return SessionTypeConnectedBot.fromJson(json);

      case SessionTypeDevice.constructor:
        return SessionTypeDevice.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A business bot connected to the current user's account
@immutable
final class SessionTypeConnectedBot extends SessionType {
  SessionTypeConnectedBot({required this.botUserId});

  /// [botUserId] User identifier of the bot. Use deleteBusinessConnectedBot to
  /// remove it or confirmBusinessConnectedBot to confirm it if it isn't
  /// confirmed yet
  final int botUserId;

  static const String constructor = 'sessionTypeConnectedBot';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bot_user_id': botUserId,
    '@type': constructor,
  };

  static SessionTypeConnectedBot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SessionTypeConnectedBot(
      botUserId: (json['bot_user_id'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A regular session from a device
@immutable
final class SessionTypeDevice extends SessionType {
  SessionTypeDevice({required this.sessionId});

  /// [sessionId] Unique identifier of the session. Use terminateSession to
  /// terminate it or confirmSession to confirm it if it isn't confirmed yet
  final int sessionId;

  static const String constructor = 'sessionTypeDevice';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'session_id': sessionId.toString(),
    '@type': constructor,
  };

  static SessionTypeDevice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SessionTypeDevice(
      sessionId:
          int.tryParse((json['session_id'] as dynamic)?.toString() ?? '') ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
