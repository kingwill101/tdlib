import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of backgrounds
@immutable
final class Backgrounds extends TdObject {
  Backgrounds({required this.backgrounds});

  /// [backgrounds] A list of backgrounds
  final List<Background> backgrounds;

  static const String constructor = 'backgrounds';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'backgrounds': backgrounds.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static Backgrounds? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Backgrounds(
      backgrounds: List<Background>.from(
        tdListFromJson(json['backgrounds'])
            .map((item) => Background.fromJson(tdMapFromJson(item)))
            .whereType<Background>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
