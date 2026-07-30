import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents the type of network
@immutable
sealed class NetworkType extends TdObject {
  const NetworkType();

  static const String constructor = 'networkType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [NetworkTypeMobile]
  /// [NetworkTypeMobileRoaming]
  /// [NetworkTypeNone]
  /// [NetworkTypeOther]
  /// [NetworkTypeWiFi]
  static NetworkType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case NetworkTypeMobile.constructor:
        return NetworkTypeMobile.fromJson(json);

      case NetworkTypeMobileRoaming.constructor:
        return NetworkTypeMobileRoaming.fromJson(json);

      case NetworkTypeNone.constructor:
        return NetworkTypeNone.fromJson(json);

      case NetworkTypeOther.constructor:
        return NetworkTypeOther.fromJson(json);

      case NetworkTypeWiFi.constructor:
        return NetworkTypeWiFi.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A mobile network
@immutable
final class NetworkTypeMobile extends NetworkType {
  const NetworkTypeMobile();

  static const String constructor = 'networkTypeMobile';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static NetworkTypeMobile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NetworkTypeMobile();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A mobile roaming network
@immutable
final class NetworkTypeMobileRoaming extends NetworkType {
  const NetworkTypeMobileRoaming();

  static const String constructor = 'networkTypeMobileRoaming';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static NetworkTypeMobileRoaming? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NetworkTypeMobileRoaming();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The network is not available
@immutable
final class NetworkTypeNone extends NetworkType {
  const NetworkTypeNone();

  static const String constructor = 'networkTypeNone';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static NetworkTypeNone? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NetworkTypeNone();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A different network type (e.g., Ethernet network)
@immutable
final class NetworkTypeOther extends NetworkType {
  const NetworkTypeOther();

  static const String constructor = 'networkTypeOther';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static NetworkTypeOther? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NetworkTypeOther();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A Wi-Fi network
@immutable
final class NetworkTypeWiFi extends NetworkType {
  const NetworkTypeWiFi();

  static const String constructor = 'networkTypeWiFi';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static NetworkTypeWiFi? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NetworkTypeWiFi();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
