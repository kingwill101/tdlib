import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a task in a checklist to be sent
@immutable
final class InputChecklistTask extends TdObject {
  InputChecklistTask({required this.id, this.text});

  /// [id] Unique identifier of the task; must be positive
  final int id;

  /// [text] Text of the task; 1-getOption("checklist_task_text_length_max")
  /// characters without line feeds. May contain only Bold, Italic, Underline,
  /// Strikethrough, Spoiler, CustomEmoji, and DateTime entities
  final FormattedText? text;

  static const String constructor = 'inputChecklistTask';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'text': text?.toJson(),
    '@type': constructor,
  };

  static InputChecklistTask? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputChecklistTask(
      id: (json['id'] as int?) ?? 0,
      text: FormattedText.fromJson(tdMapFromJson(json['text'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
