import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents outline of an image
@immutable
final class Outline extends TdObject {
  Outline({required this.paths});

  /// [paths] The list of closed vector paths
  final List<ClosedVectorPath> paths;

  static const String constructor = 'outline';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'paths': paths.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static Outline? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Outline(
      paths: List<ClosedVectorPath>.from(
        tdListFromJson(json['paths'])
            .map((item) => ClosedVectorPath.fromJson(tdMapFromJson(item)))
            .whereType<ClosedVectorPath>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
