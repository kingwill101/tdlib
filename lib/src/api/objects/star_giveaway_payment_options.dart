import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of options for creating of Telegram Star giveaway
@immutable
final class StarGiveawayPaymentOptions extends TdObject {
  StarGiveawayPaymentOptions({required this.options});

  /// [options] The list of options
  final List<StarGiveawayPaymentOption> options;

  static const String constructor = 'starGiveawayPaymentOptions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'options': options.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static StarGiveawayPaymentOptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarGiveawayPaymentOptions(
      options: List<StarGiveawayPaymentOption>.from(
        tdListFromJson(json['options'])
            .map(
              (item) => StarGiveawayPaymentOption.fromJson(tdMapFromJson(item)),
            )
            .whereType<StarGiveawayPaymentOption>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
