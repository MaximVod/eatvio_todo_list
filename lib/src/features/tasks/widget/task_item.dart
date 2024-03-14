import 'package:eatvio_todo_list/src/common/utils/date_utils.dart';
import 'package:eatvio_todo_list/src/features/tasks/model/task_model.dart';
import 'package:eatvio_todo_list/src/features/tasks/widget/tasks_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum TaskActions { edit, delete }

class TaskItem extends StatefulWidget {
  final TaskModel taskItem;
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  final MarkItem<bool> markItem;

  const TaskItem({
    required this.taskItem, required this.onEdit, required this.onDelete, required this.markItem, super.key,
  });

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool isDone = false;
  String? changedTime;

  Color checkColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Theme.of(context).colorScheme.primary;
    }
    return Theme.of(context).colorScheme.primary;
  }

  @override
  void initState() {
    isDone = widget.taskItem.fields.done;
    changedTime = widget.taskItem.fields.dateOfChange;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.primary,
      child: Center(
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      widget.taskItem.fields.dateOfCreation,
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                    const Spacer(),
                    if (changedTime != null)
                      Text(
                        "изм: ${DateAppUtils.dateForUpdate(date: changedTime ?? "")}",
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w300,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                      ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      widget.taskItem.fields.name,
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                            decoration:
                                isDone ? TextDecoration.lineThrough : null,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                    const Spacer(),
                    PopupMenuButton<TaskActions>(
                      onSelected: (TaskActions item) {},
                      itemBuilder: (BuildContext context) =>
                          <PopupMenuEntry<TaskActions>>[
                        PopupMenuItem<TaskActions>(
                          value: TaskActions.edit,
                          onTap: widget.onEdit,
                          child: const Text('Редактировать'),
                        ),
                        PopupMenuItem<TaskActions>(
                          value: TaskActions.delete,
                          onTap: widget.onDelete,
                          child: const Text('Удалить'),
                        ),
                      ],
                    ),
                    Checkbox(
                      tristate: true,
                      checkColor: Theme.of(context).colorScheme.secondary,
                      fillColor: MaterialStateProperty.resolveWith(checkColor),
                      value: isDone,
                      onChanged: (bool? value) {
                        setState(() {
                          isDone = !isDone;
                          widget.markItem(isDone);
                          final format = DateFormat('yyyy-MM-dd hh:mm');
                          final clockString =
                              format.format(DateTime.timestamp());
                          changedTime = clockString;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  widget.taskItem.fields.description,
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w400,
                        decoration: isDone ? TextDecoration.lineThrough : null,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Приоритет: ",
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                    Text(
                      widget.taskItem.fields.priority ? "Важный" : "Низкий",
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: widget.taskItem.fields.priority
                                ? Theme.of(context).colorScheme.error
                                : Theme.of(context).colorScheme.outline,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
}
