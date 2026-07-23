import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains Telegram terms of service
@immutable
final class TermsOfService extends TdObject {
  TermsOfService({
    this.text,
    required this.minUserAge,
    required this.showPopup,
  });

  /// [text] Text of the terms of service
  final FormattedText? text;

  /// [minUserAge] The minimum age of a user to be able to accept the terms; 0
  /// if age isn't restricted
  final int minUserAge;

  /// [showPopup] True, if a blocking popup with terms of service must be shown
  /// to the user
  final bool showPopup;

  static const String constructor = 'termsOfService';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'min_user_age': minUserAge,
    'show_popup': showPopup,
    '@type': constructor,
  };

  static TermsOfService? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TermsOfService(
      text: FormattedText.fromJson(tdMapFromJson(json['text'])),
      minUserAge: (json['min_user_age'] as int?) ?? 0,
      showPopup: (json['show_popup'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
