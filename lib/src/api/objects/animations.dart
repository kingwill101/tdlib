import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of animations
@immutable
final class Animations extends TdObject {
  Animations({required this.animations});

  /// [animations] List of animations
  final List<Animation> animations;

  static const String constructor = 'animations';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'animations': animations.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static Animations? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Animations(
      animations: List<Animation>.from(
        tdListFromJson(json['animations'])
            .map((item) => Animation.fromJson(tdMapFromJson(item)))
            .whereType<Animation>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
