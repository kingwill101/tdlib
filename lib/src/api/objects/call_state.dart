import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the current call state
@immutable
sealed class CallState extends TdObject {
  const CallState();

  static const String constructor = 'callState';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [CallStateDiscarded]
  /// [CallStateError]
  /// [CallStateExchangingKeys]
  /// [CallStateHangingUp]
  /// [CallStatePending]
  /// [CallStateReady]
  static CallState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CallStateDiscarded.constructor:
        return CallStateDiscarded.fromJson(json);

      case CallStateError.constructor:
        return CallStateError.fromJson(json);

      case CallStateExchangingKeys.constructor:
        return CallStateExchangingKeys.fromJson(json);

      case CallStateHangingUp.constructor:
        return CallStateHangingUp.fromJson(json);

      case CallStatePending.constructor:
        return CallStatePending.fromJson(json);

      case CallStateReady.constructor:
        return CallStateReady.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The call has ended successfully
@immutable
final class CallStateDiscarded extends CallState {
  CallStateDiscarded({
    this.reason,
    required this.needRating,
    required this.needDebugInformation,
    required this.needLog,
  });

  /// [reason] The reason why the call has ended
  final CallDiscardReason? reason;

  /// [needRating] True, if the call rating must be sent to the server
  final bool needRating;

  /// [needDebugInformation] True, if the call debug information must be sent to
  /// the server
  final bool needDebugInformation;

  /// [needLog] True, if the call log must be sent to the server
  final bool needLog;

  static const String constructor = 'callStateDiscarded';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'reason': reason?.toJson(),
    'need_rating': needRating,
    'need_debug_information': needDebugInformation,
    'need_log': needLog,
    '@type': constructor,
  };

  static CallStateDiscarded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallStateDiscarded(
      reason: CallDiscardReason.fromJson(tdMapFromJson(json['reason'])),
      needRating: (json['need_rating'] as bool?) ?? false,
      needDebugInformation: (json['need_debug_information'] as bool?) ?? false,
      needLog: (json['need_log'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The call has ended with an error
@immutable
final class CallStateError extends CallState {
  CallStateError({this.error});

  /// [error] Error. An error with the code 4005000 will be returned if an
  /// outgoing call is missed because of an expired timeout
  final TdError? error;

  static const String constructor = 'callStateError';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'error': error?.toJson(),
    '@type': constructor,
  };

  static CallStateError? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallStateError(
      error: TdError.fromJson(tdMapFromJson(json['error'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The call has been answered and encryption keys are being exchanged
@immutable
final class CallStateExchangingKeys extends CallState {
  const CallStateExchangingKeys();

  static const String constructor = 'callStateExchangingKeys';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CallStateExchangingKeys? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallStateExchangingKeys();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The call is hanging up after discardCall has been called
@immutable
final class CallStateHangingUp extends CallState {
  const CallStateHangingUp();

  static const String constructor = 'callStateHangingUp';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static CallStateHangingUp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallStateHangingUp();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The call is pending, waiting to be accepted by a user
@immutable
final class CallStatePending extends CallState {
  CallStatePending({required this.isCreated, required this.isReceived});

  /// [isCreated] True, if the call has already been created by the server
  final bool isCreated;

  /// [isReceived] True, if the call has already been received by the other
  /// party
  final bool isReceived;

  static const String constructor = 'callStatePending';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_created': isCreated,
    'is_received': isReceived,
    '@type': constructor,
  };

  static CallStatePending? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallStatePending(
      isCreated: (json['is_created'] as bool?) ?? false,
      isReceived: (json['is_received'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The call is ready to use
@immutable
final class CallStateReady extends CallState {
  CallStateReady({
    this.protocol,
    required this.servers,
    required this.config,
    required this.encryptionKey,
    required this.emojis,
    required this.allowP2p,
    required this.isGroupCallSupported,
    required this.customParameters,
  });

  /// [protocol] Call protocols supported by the other call participant
  final CallProtocol? protocol;

  /// [servers] List of available call servers
  final List<CallServer> servers;

  /// [config] A JSON-encoded call config
  final String config;

  /// [encryptionKey] Call encryption key
  final String encryptionKey;

  /// [emojis] Encryption key fingerprint represented as 4 emoji
  final List<String> emojis;

  /// [allowP2p] True, if peer-to-peer connection is allowed by users privacy
  /// settings
  final bool allowP2p;

  /// [isGroupCallSupported] True, if the other party supports upgrading of the
  /// call to a group call
  final bool isGroupCallSupported;

  /// [customParameters] Custom JSON-encoded call parameters to be passed to
  /// tgcalls
  final String customParameters;

  static const String constructor = 'callStateReady';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'protocol': protocol?.toJson(),
    'servers': servers.map((item) => item.toJson()).toList(),
    'config': config,
    'encryption_key': encryptionKey,
    'emojis': emojis.map((item) => item).toList(),
    'allow_p2p': allowP2p,
    'is_group_call_supported': isGroupCallSupported,
    'custom_parameters': customParameters,
    '@type': constructor,
  };

  static CallStateReady? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallStateReady(
      protocol: CallProtocol.fromJson(tdMapFromJson(json['protocol'])),
      servers: List<CallServer>.from(
        tdListFromJson(json['servers'])
            .map((item) => CallServer.fromJson(tdMapFromJson(item)))
            .whereType<CallServer>(),
      ),
      config: (json['config'] as String?) ?? '',
      encryptionKey: (json['encryption_key'] as String?) ?? '',
      emojis: List<String>.from(
        tdListFromJson(
          json['emojis'],
        ).map((item) => (item as dynamic)?.toString() ?? ''),
      ),
      allowP2p: (json['allow_p2p'] as bool?) ?? false,
      isGroupCallSupported: (json['is_group_call_supported'] as bool?) ?? false,
      customParameters: (json['custom_parameters'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
