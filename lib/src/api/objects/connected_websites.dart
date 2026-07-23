import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of websites the current user is logged in with Telegram
@immutable
final class ConnectedWebsites extends TdObject {
  ConnectedWebsites({required this.websites});

  /// [websites] List of connected websites
  final List<ConnectedWebsite> websites;

  static const String constructor = 'connectedWebsites';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'websites': websites.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static ConnectedWebsites? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ConnectedWebsites(
      websites: List<ConnectedWebsite>.from(
        tdListFromJson(json['websites'])
            .map((item) => ConnectedWebsite.fromJson(tdMapFromJson(item)))
            .whereType<ConnectedWebsite>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
