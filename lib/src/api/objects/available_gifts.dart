import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of gifts that can be sent to another user or channel chat
@immutable
final class AvailableGifts extends TdObject {
  AvailableGifts({required this.gifts});

  /// [gifts] The list of gifts
  final List<AvailableGift> gifts;

  static const String constructor = 'availableGifts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gifts': gifts.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static AvailableGifts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AvailableGifts(
      gifts: List<AvailableGift>.from(
        tdListFromJson(json['gifts'])
            .map((item) => AvailableGift.fromJson(tdMapFromJson(item)))
            .whereType<AvailableGift>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
