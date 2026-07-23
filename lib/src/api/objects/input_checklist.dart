import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a checklist to be sent
@immutable
final class InputChecklist extends TdObject {
  InputChecklist({
    this.title,
    required this.tasks,
    required this.othersCanAddTasks,
    required this.othersCanMarkTasksAsDone,
  });

  /// [title] Title of the checklist; 1-getOption("checklist_title_length_max")
  /// characters. May contain only Bold, Italic, Underline, Strikethrough,
  /// Spoiler, CustomEmoji, and DateTime entities
  final FormattedText? title;

  /// [tasks] List of tasks in the checklist;
  /// 1-getOption("checklist_task_count_max") tasks
  final List<InputChecklistTask> tasks;

  /// [othersCanAddTasks] True, if other users can add tasks to the list
  final bool othersCanAddTasks;

  /// [othersCanMarkTasksAsDone] True, if other users can mark tasks as done or
  /// not done
  final bool othersCanMarkTasksAsDone;

  static const String constructor = 'inputChecklist';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'title': title?.toJson(),
    'tasks': tasks.map((item) => item.toJson()).toList(),
    'others_can_add_tasks': othersCanAddTasks,
    'others_can_mark_tasks_as_done': othersCanMarkTasksAsDone,
    '@type': constructor,
  };

  static InputChecklist? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputChecklist(
      title: FormattedText.fromJson(tdMapFromJson(json['title'])),
      tasks: List<InputChecklistTask>.from(
        tdListFromJson(json['tasks'])
            .map((item) => InputChecklistTask.fromJson(tdMapFromJson(item)))
            .whereType<InputChecklistTask>(),
      ),
      othersCanAddTasks: (json['others_can_add_tasks'] as bool?) ?? false,
      othersCanMarkTasksAsDone:
          (json['others_can_mark_tasks_as_done'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
