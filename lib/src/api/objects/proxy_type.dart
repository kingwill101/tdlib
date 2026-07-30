import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the type of proxy server
@immutable
sealed class ProxyType extends TdObject {
  const ProxyType();

  static const String constructor = 'proxyType';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [ProxyTypeHttp]
  /// [ProxyTypeMtproto]
  /// [ProxyTypeSocks5]
  static ProxyType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ProxyTypeHttp.constructor:
        return ProxyTypeHttp.fromJson(json);

      case ProxyTypeMtproto.constructor:
        return ProxyTypeMtproto.fromJson(json);

      case ProxyTypeSocks5.constructor:
        return ProxyTypeSocks5.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A HTTP transparent proxy server
@immutable
final class ProxyTypeHttp extends ProxyType {
  ProxyTypeHttp({
    required this.username,
    required this.password,
    required this.httpOnly,
  });

  /// [username] Username for logging in; may be empty
  final String username;

  /// [password] Password for logging in; may be empty
  final String password;

  /// [httpOnly] Pass true if the proxy supports only HTTP requests and doesn't
  /// support transparent TCP connections via HTTP CONNECT method
  final bool httpOnly;

  static const String constructor = 'proxyTypeHttp';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'username': username,
    'password': password,
    'http_only': httpOnly,
    '@type': constructor,
  };

  static ProxyTypeHttp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProxyTypeHttp(
      username: (json['username'] as String?) ?? '',
      password: (json['password'] as String?) ?? '',
      httpOnly: (json['http_only'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An MTProto proxy server
@immutable
final class ProxyTypeMtproto extends ProxyType {
  ProxyTypeMtproto({required this.secret});

  /// [secret] The proxy's secret in hexadecimal encoding
  final String secret;

  static const String constructor = 'proxyTypeMtproto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'secret': secret,
    '@type': constructor,
  };

  static ProxyTypeMtproto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProxyTypeMtproto(secret: (json['secret'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A SOCKS5 proxy server
@immutable
final class ProxyTypeSocks5 extends ProxyType {
  ProxyTypeSocks5({required this.username, required this.password});

  /// [username] Username for logging in; may be empty
  final String username;

  /// [password] Password for logging in; may be empty
  final String password;

  static const String constructor = 'proxyTypeSocks5';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'username': username,
    'password': password,
    '@type': constructor,
  };

  static ProxyTypeSocks5? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProxyTypeSocks5(
      username: (json['username'] as String?) ?? '',
      password: (json['password'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
