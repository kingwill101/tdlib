import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a checklist
@immutable
final class Checklist extends TdObject {
  Checklist({
    this.title,
    required this.tasks,
    required this.othersCanAddTasks,
    required this.canAddTasks,
    required this.othersCanMarkTasksAsDone,
    required this.canMarkTasksAsDone,
  });

  /// [title] Title of the checklist; may contain only Bold, Italic, Underline,
  /// Strikethrough, Spoiler, CustomEmoji, and DateTime entities
  final FormattedText? title;

  /// [tasks] List of tasks in the checklist
  final List<ChecklistTask> tasks;

  /// [othersCanAddTasks] True, if users other than creator of the list can add
  /// tasks to the list
  final bool othersCanAddTasks;

  /// [canAddTasks] True, if the current user can add tasks to the list if they
  /// have Telegram Premium subscription
  final bool canAddTasks;

  /// [othersCanMarkTasksAsDone] True, if users other than creator of the list
  /// can mark tasks as done or not done. If true, then the checklist is called
  /// "group checklist"
  final bool othersCanMarkTasksAsDone;

  /// [canMarkTasksAsDone] True, if the current user can mark tasks as done or
  /// not done if they have Telegram Premium subscription
  final bool canMarkTasksAsDone;

  static const String constructor = 'checklist';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'title': title?.toJson(),
    'tasks': tasks.map((item) => item.toJson()).toList(),
    'others_can_add_tasks': othersCanAddTasks,
    'can_add_tasks': canAddTasks,
    'others_can_mark_tasks_as_done': othersCanMarkTasksAsDone,
    'can_mark_tasks_as_done': canMarkTasksAsDone,
    '@type': constructor,
  };

  static Checklist? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Checklist(
      title: FormattedText.fromJson(tdMapFromJson(json['title'])),
      tasks: List<ChecklistTask>.from(
        tdListFromJson(json['tasks'])
            .map((item) => ChecklistTask.fromJson(tdMapFromJson(item)))
            .whereType<ChecklistTask>(),
      ),
      othersCanAddTasks: (json['others_can_add_tasks'] as bool?) ?? false,
      canAddTasks: (json['can_add_tasks'] as bool?) ?? false,
      othersCanMarkTasksAsDone:
          (json['others_can_mark_tasks_as_done'] as bool?) ?? false,
      canMarkTasksAsDone: (json['can_mark_tasks_as_done'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
