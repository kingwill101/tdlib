import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of emojis
@immutable
final class Emojis extends TdObject {
  Emojis({required this.emojis});

  /// [emojis] List of emojis
  final List<String> emojis;

  static const String constructor = 'emojis';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'emojis': emojis.map((item) => item).toList(),
    '@type': constructor,
  };

  static Emojis? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Emojis(
      emojis: List<String>.from(
        tdListFromJson(
          json['emojis'],
        ).map((item) => (item as dynamic)?.toString() ?? ''),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
