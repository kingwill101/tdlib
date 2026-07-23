import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a proxy server
@immutable
final class Proxy extends TdObject {
  Proxy({required this.server, required this.port, this.type});

  /// [server] Proxy server domain or IP address
  final String server;

  /// [port] Proxy server port
  final int port;

  /// [type] Type of the proxy
  final ProxyType? type;

  static const String constructor = 'proxy';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'server': server,
    'port': port,
    'type': type?.toJson(),
    '@type': constructor,
  };

  static Proxy? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Proxy(
      server: (json['server'] as String?) ?? '',
      port: (json['port'] as int?) ?? 0,
      type: ProxyType.fromJson(tdMapFromJson(json['type'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
