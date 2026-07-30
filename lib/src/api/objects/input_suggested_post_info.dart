import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a post to suggest
@immutable
final class InputSuggestedPostInfo extends TdObject {
  InputSuggestedPostInfo({this.price, required this.sendDate});

  /// [price] Price of the suggested post; pass null to suggest a post without
  /// payment. If the current user isn't an administrator of the channel direct
  /// messages chat and doesn't have enough funds to pay for the post, then the
  /// error "BALANCE_TOO_LOW" will be returned immediately
  final SuggestedPostPrice? price;

  /// [sendDate] Point in time (Unix timestamp) when the post is expected to be
  /// published; pass 0 if the date isn't restricted. If specified, then the
  /// date must be
  /// getOption("suggested_post_send_delay_min")-getOption("suggested_post_send_delay_max")
  /// seconds in the future
  final int sendDate;

  static const String constructor = 'inputSuggestedPostInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'price': price?.toJson(),
    'send_date': sendDate,
    '@type': constructor,
  };

  static InputSuggestedPostInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputSuggestedPostInfo(
      price: SuggestedPostPrice.fromJson(tdMapFromJson(json['price'])),
      sendDate: (json['send_date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
