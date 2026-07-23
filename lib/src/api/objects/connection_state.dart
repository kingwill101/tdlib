import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the current state of the connection to Telegram servers
@immutable
sealed class ConnectionState extends TdObject {
  const ConnectionState();

  static const String constructor = 'connectionState';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ConnectionStateConnecting]
  /// [ConnectionStateConnectingToProxy]
  /// [ConnectionStateReady]
  /// [ConnectionStateUpdating]
  /// [ConnectionStateWaitingForNetwork]
  static ConnectionState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ConnectionStateConnecting.constructor:
        return ConnectionStateConnecting.fromJson(json);

      case ConnectionStateConnectingToProxy.constructor:
        return ConnectionStateConnectingToProxy.fromJson(json);

      case ConnectionStateReady.constructor:
        return ConnectionStateReady.fromJson(json);

      case ConnectionStateUpdating.constructor:
        return ConnectionStateUpdating.fromJson(json);

      case ConnectionStateWaitingForNetwork.constructor:
        return ConnectionStateWaitingForNetwork.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Establishing a connection to the Telegram servers
@immutable
final class ConnectionStateConnecting extends ConnectionState {
  const ConnectionStateConnecting();

  static const String constructor = 'connectionStateConnecting';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ConnectionStateConnecting? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ConnectionStateConnecting();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Establishing a connection with a proxy server
@immutable
final class ConnectionStateConnectingToProxy extends ConnectionState {
  const ConnectionStateConnectingToProxy();

  static const String constructor = 'connectionStateConnectingToProxy';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ConnectionStateConnectingToProxy? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const ConnectionStateConnectingToProxy();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// There is a working connection to the Telegram servers
@immutable
final class ConnectionStateReady extends ConnectionState {
  const ConnectionStateReady();

  static const String constructor = 'connectionStateReady';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ConnectionStateReady? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ConnectionStateReady();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Downloading data expected to be received while the application was offline
@immutable
final class ConnectionStateUpdating extends ConnectionState {
  const ConnectionStateUpdating();

  static const String constructor = 'connectionStateUpdating';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ConnectionStateUpdating? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ConnectionStateUpdating();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Waiting for the network to become available. Use setNetworkType to change
/// the available network type
@immutable
final class ConnectionStateWaitingForNetwork extends ConnectionState {
  const ConnectionStateWaitingForNetwork();

  static const String constructor = 'connectionStateWaitingForNetwork';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static ConnectionStateWaitingForNetwork? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const ConnectionStateWaitingForNetwork();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
