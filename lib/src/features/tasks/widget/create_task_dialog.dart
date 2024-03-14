import 'package:eatvio_todo_list/src/common/utils/date_utils.dart';
import 'package:eatvio_todo_list/src/features/tasks/model/create_edit_task_request.dart';
import 'package:eatvio_todo_list/src/features/tasks/model/task_model.dart';
import 'package:flutter/material.dart';

/// Dialog for create task
class CreateTaskDialog extends StatefulWidget {
  final TaskModel? taskItem;

  /// {@macro sample_page}
  const CreateTaskDialog({super.key, this.taskItem});

  @override
  State<CreateTaskDialog> createState() => _CreateTaskDialogState();
}

class _CreateTaskDialogState extends State<CreateTaskDialog> {
  /// TextField for task name
  final TextEditingController taskEditingController = TextEditingController();

  /// TextField for description name
  final TextEditingController descEditingController = TextEditingController();

  bool validText = false;
  bool isPriority = false;

  @override
  void initState() {
    taskEditingController.text = widget.taskItem?.fields.name ?? "";
    descEditingController.text = widget.taskItem?.fields.description ?? "";
    isPriority = widget.taskItem?.fields.priority ?? false;
    if (widget.taskItem != null){
      validText = true;
    }
    taskEditingController.addListener(() {
      if (taskEditingController.text.length > 1 || widget.taskItem != null) {
        setState(() {
          validText = true;
        });
      } else {
        setState(() {
          validText = false;
        });
      }
    });
    super.initState();
  }

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
  Widget build(BuildContext context) => AlertDialog(
        title: Text(widget.taskItem == null
            ? "Создать новую задачу"
            : "Редактирование", textAlign: TextAlign.center,),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: taskEditingController,
              maxLength: 21,
              decoration: const InputDecoration(
                hintText: "Какая задача",
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              controller: descEditingController,
              minLines: 1,
              maxLines: 50,
              decoration: const InputDecoration(
                hintText: "Описание",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "В приоритете ",
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w300,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
                Checkbox(
                  tristate: true,
                  value: isPriority,
                  fillColor: MaterialStateProperty.resolveWith(checkColor),
                  checkColor: Theme.of(context).colorScheme.secondary,
                  onChanged: (bool? value) {
                    setState(() {
                      isPriority = !isPriority;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
        actions: <Widget>[
          TextButton(
              onPressed: () {
                if (validText) {
                  Navigator.of(context).pop(CreateEditTaskFields(
                      name: taskEditingController.text,
                      description: descEditingController.text,
                      priority: isPriority,
                      date_of_creation: DateAppUtils.dateRequestWithoutTime(
                          date: DateTime.now(),),),);
                }
              },
              child: Text(
                "Готово",
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: validText
                          ? Theme.of(context).colorScheme.secondary
                          : Theme.of(context)
                              .colorScheme
                              .secondary
                              .withOpacity(0.5),
                    ),
              ),),
        ],
      );
}
