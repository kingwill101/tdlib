import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a chat background
@immutable
final class Background extends TdObject {
  Background({
    required this.id,
    required this.isDefault,
    required this.isDark,
    required this.name,
    this.document,
    this.type,
  });

  /// [id] Unique background identifier
  final int id;

  /// [isDefault] True, if this is one of default backgrounds
  final bool isDefault;

  /// [isDark] True, if the background is dark and is recommended to be used
  /// with dark theme
  final bool isDark;

  /// [name] Unique background name
  final String name;

  /// [document] Document with the background; may be null. Null only for filled
  /// and chat theme backgrounds
  final Document? document;

  /// [type] Type of the background
  final BackgroundType? type;

  static const String constructor = 'background';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id.toString(),
    'is_default': isDefault,
    'is_dark': isDark,
    'name': name,
    'document': document?.toJson(),
    'type': type?.toJson(),
    '@type': constructor,
  };

  static Background? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Background(
      id: int.tryParse((json['id'] as dynamic)?.toString() ?? '') ?? 0,
      isDefault: (json['is_default'] as bool?) ?? false,
      isDark: (json['is_dark'] as bool?) ?? false,
      name: (json['name'] as String?) ?? '',
      document: Document.fromJson(tdMapFromJson(json['document'])),
      type: BackgroundType.fromJson(tdMapFromJson(json['type'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
