import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of added proxy servers
@immutable
final class AddedProxies extends TdObject {
  AddedProxies({required this.proxies});

  /// [proxies] List of proxy servers
  final List<AddedProxy> proxies;

  static const String constructor = 'addedProxies';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'proxies': proxies.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static AddedProxies? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AddedProxies(
      proxies: List<AddedProxy>.from(
        tdListFromJson(json['proxies'])
            .map((item) => AddedProxy.fromJson(tdMapFromJson(item)))
            .whereType<AddedProxy>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
