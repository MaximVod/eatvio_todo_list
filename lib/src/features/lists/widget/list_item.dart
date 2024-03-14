import 'package:eatvio_todo_list/src/features/lists/bloc/lists_bloc.dart';
import 'package:eatvio_todo_list/src/features/lists/model/list_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListItem extends StatefulWidget {
  final ListModel listModel;
  final VoidCallback onEdit;

  const ListItem({
    required this.listModel, required this.onEdit, super.key,
  });

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool isPublic = false;

  @override
  void initState() {
    isPublic = widget.listModel.fields.private;
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
            child: Row(
              children: [
                SizedBox(
                  width: 170,
                  child: Text(
                    widget.listModel.fields.name,
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: widget.onEdit,
                ),
                IconButton(
                    icon: Icon(isPublic ? Icons.person : Icons.person_outline),
                    onPressed: () => setState(() {
                          isPublic = !isPublic;
                          context.read<ListsBloc>().add(ChangePrivateState(
                              widget.listModel.id,
                              widget.listModel.fields.name,
                              isPublic,),);
                        }),),
                IconButton(
                    icon: const Icon(Icons.share),
                    onPressed: () {
                      if (isPublic) {
                        Clipboard.setData(ClipboardData(
                                text:
                                    "https://airtable.com/appLbQv5pZnpDZ3WQ/${widget.listModel.fields.id}",),)
                            .then((_) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Ссылка скопирована')),);
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text('Список должен быть публичен'),),);
                      }
                    },),
              ],
            ),
          ),
        ),
      ),
    );
}
