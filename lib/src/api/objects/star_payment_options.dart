import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of options for buying Telegram Stars
@immutable
final class StarPaymentOptions extends TdObject {
  StarPaymentOptions({required this.options});

  /// [options] The list of options
  final List<StarPaymentOption> options;

  static const String constructor = 'starPaymentOptions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'options': options.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static StarPaymentOptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarPaymentOptions(
      options: List<StarPaymentOption>.from(
        tdListFromJson(json['options'])
            .map((item) => StarPaymentOption.fromJson(tdMapFromJson(item)))
            .whereType<StarPaymentOption>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
