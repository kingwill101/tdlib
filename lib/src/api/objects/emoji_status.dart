import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an emoji to be shown instead of the Telegram Premium badge
@immutable
final class EmojiStatus extends TdObject {
  EmojiStatus({this.type, required this.expirationDate});

  /// [type] Type of the emoji status
  final EmojiStatusType? type;

  /// [expirationDate] Point in time (Unix timestamp) when the status will
  /// expire; 0 if never
  final int expirationDate;

  static const String constructor = 'emojiStatus';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'type': type?.toJson(),
    'expiration_date': expirationDate,
    '@type': constructor,
  };

  static EmojiStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiStatus(
      type: EmojiStatusType.fromJson(tdMapFromJson(json['type'])),
      expirationDate: (json['expiration_date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
