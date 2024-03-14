import 'package:eatvio_todo_list/src/features/initialization/widget/dependencies_scope.dart';
import 'package:eatvio_todo_list/src/features/lists/bloc/lists_bloc.dart';
import 'package:eatvio_todo_list/src/features/lists/model/list_model.dart';
import 'package:eatvio_todo_list/src/features/lists/widget/change_name_dialog.dart';
import 'package:eatvio_todo_list/src/features/lists/widget/list_item.dart';
import 'package:eatvio_todo_list/src/features/tasks/widget/tasks_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Screen for lists of TODOs

class ListsScreen extends StatelessWidget {
  const ListsScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) =>
            ListsBloc(DependenciesScope.repositoriesOf(context).listsRepository)
              ..add(FetchAllLists()),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Списки задач",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: BlocBuilder<ListsBloc, ListsState>(
              builder: (context, state) => switch (state) {
                ListsIdle() => Center(
                    child: CircularProgressIndicator(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ListsLoading() => Center(
                    child: CircularProgressIndicator(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ListsFetched() => CustomScrollView(
                    slivers: <Widget>[
                      /// Top padding
                      const SliverPadding(
                        padding: EdgeInsets.only(top: 16),
                      ),
                      // Catalog root categories
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) => GestureDetector(
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => TasksScreen(
                                  tableId: state.lists[index].fields.id,
                                  tableName: state.lists[index].fields.name,
                                ),
                              ),
                            ),
                            child: ListItem(
                              listModel: state.lists[index],
                              onEdit: () => _showDialog(context).then((value) {
                                if (value != null) {
                                  if (checkUnique(state.lists, value)) {
                                    context.read<ListsBloc>().add(
                                          ChangeListName(
                                            state.lists[index].id,
                                            value,
                                          ),
                                        );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                          'Имя должно быть уникально',
                                        ),
                                      ),
                                    );
                                  }
                                }
                              }),
                            ),
                          ),
                          childCount: state.lists.length,
                        ),
                      ),

                      /// Bottom padding
                      const SliverPadding(
                        padding: EdgeInsets.only(bottom: 16),
                      ),
                    ],
                  ),
                ListsFailure() => Center(
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

  Future<String?> _showDialog(BuildContext context) async => showDialog<String>(
        context: context,
        barrierLabel: "Label",
        barrierColor: Colors.black.withOpacity(0.5),
        builder: (context) => const ChangeNameDialog(),
      );

  bool checkUnique(List<ListModel> lists, String value) {
    bool isUnique = true;
    for (final listValue in lists) {
      if (listValue.fields.name == value) {
        isUnique = false;
      } else {
        isUnique = true;
      }
    }
    return isUnique;
  }
}
