import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a tg: deep link
@immutable
final class DeepLinkInfo extends TdObject {
  DeepLinkInfo({this.text, required this.needUpdateApplication});

  /// [text] Text to be shown to the user
  final FormattedText? text;

  /// [needUpdateApplication] True, if the user must be asked to update the
  /// application
  final bool needUpdateApplication;

  static const String constructor = 'deepLinkInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'need_update_application': needUpdateApplication,
    '@type': constructor,
  };

  static DeepLinkInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeepLinkInfo(
      text: FormattedText.fromJson(tdMapFromJson(json['text'])),
      needUpdateApplication:
          (json['need_update_application'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
