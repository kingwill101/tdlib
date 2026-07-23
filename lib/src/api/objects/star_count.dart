import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a number of Telegram Stars
@immutable
final class StarCount extends TdObject {
  StarCount({required this.starCount});

  /// [starCount] Number of Telegram Stars
  final int starCount;

  static const String constructor = 'starCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'star_count': starCount,
    '@type': constructor,
  };

  static StarCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarCount(starCount: (json['star_count'] as int?) ?? 0);
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
