import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes a note of a contact user
/// Returns [Ok]
@immutable
final class SetUserNote extends TdFunction {
  SetUserNote({required this.userId, this.note});

  /// [userId] User identifier
  final int userId;

  /// [note] Note to set for the user; 0-getOption("user_note_text_length_max")
  /// characters. Only Bold, Italic, Underline, Strikethrough, Spoiler,
  /// CustomEmoji, and DateTime entities are allowed
  final FormattedText? note;

  static const String constructor = 'setUserNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'note': note?.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
