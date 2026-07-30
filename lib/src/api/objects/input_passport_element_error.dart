import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains the description of an error in a Telegram Passport element; for
/// bots only
@immutable
final class InputPassportElementError extends TdObject {
  InputPassportElementError({this.type, required this.message, this.source});

  /// [type] Type of Telegram Passport element that has the error
  final PassportElementType? type;

  /// [message] Error message
  final String message;

  /// [source] Error source
  final InputPassportElementErrorSource? source;

  static const String constructor = 'inputPassportElementError';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'type': type?.toJson(),
    'message': message,
    'source': source?.toJson(),
    '@type': constructor,
  };

  static InputPassportElementError? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementError(
      type: PassportElementType.fromJson(tdMapFromJson(json['type'])),
      message: (json['message'] as String?) ?? '',
      source: InputPassportElementErrorSource.fromJson(
        tdMapFromJson(json['source']),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
