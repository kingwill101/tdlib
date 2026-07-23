import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes settings for a business account start page
@immutable
final class BusinessStartPage extends TdObject {
  BusinessStartPage({required this.title, required this.message, this.sticker});

  /// [title] Title text of the start page
  final String title;

  /// [message] Message text of the start page
  final String message;

  /// [sticker] Greeting sticker of the start page; may be null if none
  final Sticker? sticker;

  static const String constructor = 'businessStartPage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'title': title,
    'message': message,
    'sticker': sticker?.toJson(),
    '@type': constructor,
  };

  static BusinessStartPage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessStartPage(
      title: (json['title'] as String?) ?? '',
      message: (json['message'] as String?) ?? '',
      sticker: Sticker.fromJson(tdMapFromJson(json['sticker'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
