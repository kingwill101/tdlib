import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the type of call server
@immutable
sealed class CallServerType extends TdObject {
  const CallServerType();

  static const String constructor = 'callServerType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [CallServerTypeTelegramReflector]
  /// [CallServerTypeWebrtc]
  static CallServerType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CallServerTypeTelegramReflector.constructor:
        return CallServerTypeTelegramReflector.fromJson(json);

      case CallServerTypeWebrtc.constructor:
        return CallServerTypeWebrtc.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Telegram call reflector
@immutable
final class CallServerTypeTelegramReflector extends CallServerType {
  CallServerTypeTelegramReflector({required this.peerTag, required this.isTcp});

  /// [peerTag] A peer tag to be used with the reflector
  final String peerTag;

  /// [isTcp] True, if the server uses TCP instead of UDP
  final bool isTcp;

  static const String constructor = 'callServerTypeTelegramReflector';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'peer_tag': peerTag,
    'is_tcp': isTcp,
    '@type': constructor,
  };

  static CallServerTypeTelegramReflector? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallServerTypeTelegramReflector(
      peerTag: (json['peer_tag'] as String?) ?? '',
      isTcp: (json['is_tcp'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A WebRTC server
@immutable
final class CallServerTypeWebrtc extends CallServerType {
  CallServerTypeWebrtc({
    required this.username,
    required this.password,
    required this.supportsTurn,
    required this.supportsStun,
  });

  /// [username] Username to be used for authentication
  final String username;

  /// [password] Authentication password
  final String password;

  /// [supportsTurn] True, if the server supports TURN
  final bool supportsTurn;

  /// [supportsStun] True, if the server supports STUN
  final bool supportsStun;

  static const String constructor = 'callServerTypeWebrtc';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'username': username,
    'password': password,
    'supports_turn': supportsTurn,
    'supports_stun': supportsStun,
    '@type': constructor,
  };

  static CallServerTypeWebrtc? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallServerTypeWebrtc(
      username: (json['username'] as String?) ?? '',
      password: (json['password'] as String?) ?? '',
      supportsTurn: (json['supports_turn'] as bool?) ?? false,
      supportsStun: (json['supports_stun'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
