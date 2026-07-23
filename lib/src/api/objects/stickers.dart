import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of stickers
@immutable
final class Stickers extends TdObject {
  Stickers({required this.stickers});

  /// [stickers] List of stickers
  final List<Sticker> stickers;

  static const String constructor = 'stickers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'stickers': stickers.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static Stickers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Stickers(
      stickers: List<Sticker>.from(
        tdListFromJson(json['stickers'])
            .map((item) => Sticker.fromJson(tdMapFromJson(item)))
            .whereType<Sticker>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
