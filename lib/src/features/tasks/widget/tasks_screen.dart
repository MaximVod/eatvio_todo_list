import 'package:eatvio_todo_list/src/features/initialization/widget/dependencies_scope.dart';
import 'package:eatvio_todo_list/src/features/tasks/bloc/tasks_bloc.dart';
import 'package:eatvio_todo_list/src/features/tasks/model/create_edit_task_request.dart';
import 'package:eatvio_todo_list/src/features/tasks/model/task_model.dart';
import 'package:eatvio_todo_list/src/features/tasks/widget/create_task_dialog.dart';
import 'package:eatvio_todo_list/src/features/tasks/widget/task_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///Mark item
typedef MarkItem<bool> = void Function(bool value);

const List<String> Filterlist = <String>[
  'Все',
  'Важные',
];

/// Screen for tasks
class TasksScreen extends StatefulWidget {
  final String tableId;
  final String tableName;

  const TasksScreen({
    required this.tableId,
    required this.tableName,
    super.key,
  });

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  String dropdownValue = Filterlist.first;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) =>
            TasksBloc(DependenciesScope.repositoriesOf(context).tasksRepository)
              ..add(FetchAllTasks(widget.tableId)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              widget.tableName,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          floatingActionButton: Builder(
            builder: (context) => FloatingActionButton(
              backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
              enableFeedback: false,
              elevation: 0,
              onPressed: () {
                _showDialog(context, null).then((value) {
                  if (value != null) {
                    context
                        .read<TasksBloc>()
                        .add(CreateTask(widget.tableId, value));
                  }
                });
              },
              child: const Icon(Icons.add),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: BlocBuilder<TasksBloc, TasksState>(
              builder: (context, state) => switch (state) {
                TasksIdle() => Center(
                    child: CircularProgressIndicator(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                TasksLoading() => Center(
                    child: CircularProgressIndicator(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                TasksFetched() => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Фильтр:  ",
                            textAlign: TextAlign.start,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                  fontWeight: FontWeight.w300,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                          ),
                          DropdownButton<String>(
                            value: dropdownValue,
                            icon: const Icon(Icons.sort),
                            elevation: 16,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                            onChanged: (String? value) {
                              setState(() {
                                dropdownValue = value!;
                              });
                              context
                                  .read<TasksBloc>()
                                  .add(FilterList(value != Filterlist.first));
                            },
                            items: Filterlist.map<DropdownMenuItem<String>>(
                              (String value) => DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              ),
                            ).toList(),
                          ),
                        ],
                      ),
                      Expanded(
                        child: CustomScrollView(
                          slivers: <Widget>[
                            /// Top padding
                            const SliverPadding(
                              padding: EdgeInsets.only(top: 16),
                            ),
                            // Catalog root categories
                            SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (context, index) => TaskItem(
                                  taskItem: state.tasks[index],
                                  onEdit: () => _showDialog(
                                    context,
                                    state.tasks[index],
                                  ).then((value) {
                                    if (value != null) {
                                      context.read<TasksBloc>().add(
                                            EditTask(
                                              widget.tableId,
                                              state.tasks[index].id,
                                              value,
                                            ),
                                          );
                                    }
                                  }),
                                  markItem: (value) =>
                                      context.read<TasksBloc>().add(
                                            MarkTask(
                                              widget.tableId,
                                              state.tasks[index].id,
                                              value,
                                            ),
                                          ),
                                  onDelete: () => context.read<TasksBloc>().add(
                                        RemoveTask(
                                          widget.tableId,
                                          state.tasks[index].id,
                                        ),
                                      ),
                                ),
                                childCount: state.tasks.length,
                              ),
                            ),

                            /// Bottom padding
                            const SliverPadding(
                              padding: EdgeInsets.only(bottom: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                TasksFailure() => Center(
                    child: Text(
                      "Ошибка при запросе",
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                  ),
              },
            ),
          ),
        ),
      );

  Future<CreateEditTaskFields?> _showDialog(
    BuildContext context,
    TaskModel? taskModel,
  ) async =>
      showDialog<CreateEditTaskFields>(
        context: context,
        useRootNavigator: false,
        barrierLabel: "Label",
        barrierColor: Colors.black.withOpacity(0.5),
        builder: (context) => CreateTaskDialog(
          taskItem: taskModel,
        ),
      );
}
