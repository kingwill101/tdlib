import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a payload of a callback query
@immutable
sealed class CallbackQueryPayload extends TdObject {
  const CallbackQueryPayload();

  static const String constructor = 'callbackQueryPayload';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [CallbackQueryPayloadData]
  /// [CallbackQueryPayloadDataWithPassword]
  /// [CallbackQueryPayloadGame]
  static CallbackQueryPayload? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CallbackQueryPayloadData.constructor:
        return CallbackQueryPayloadData.fromJson(json);

      case CallbackQueryPayloadDataWithPassword.constructor:
        return CallbackQueryPayloadDataWithPassword.fromJson(json);

      case CallbackQueryPayloadGame.constructor:
        return CallbackQueryPayloadGame.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The payload for a general callback button
@immutable
final class CallbackQueryPayloadData extends CallbackQueryPayload {
  CallbackQueryPayloadData({required this.data});

  /// [data] Data that was attached to the callback button
  final String data;

  static const String constructor = 'callbackQueryPayloadData';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'data': data,
    '@type': constructor,
  };

  static CallbackQueryPayloadData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallbackQueryPayloadData(data: (json['data'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The payload for a callback button requiring password
@immutable
final class CallbackQueryPayloadDataWithPassword extends CallbackQueryPayload {
  CallbackQueryPayloadDataWithPassword({
    required this.password,
    required this.data,
  });

  /// [password] The 2-step verification password for the current user
  final String password;

  /// [data] Data that was attached to the callback button
  final String data;

  static const String constructor = 'callbackQueryPayloadDataWithPassword';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'password': password,
    'data': data,
    '@type': constructor,
  };

  static CallbackQueryPayloadDataWithPassword? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return CallbackQueryPayloadDataWithPassword(
      password: (json['password'] as String?) ?? '',
      data: (json['data'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The payload for a game callback button
@immutable
final class CallbackQueryPayloadGame extends CallbackQueryPayload {
  CallbackQueryPayloadGame({required this.gameShortName});

  /// [gameShortName] A short name of the game that was attached to the callback
  /// button
  final String gameShortName;

  static const String constructor = 'callbackQueryPayloadGame';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'game_short_name': gameShortName,
    '@type': constructor,
  };

  static CallbackQueryPayloadGame? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallbackQueryPayloadGame(
      gameShortName: (json['game_short_name'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
