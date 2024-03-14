import 'package:flutter/material.dart';

/// Dialog for change name
class ChangeNameDialog extends StatefulWidget {
  /// {@macro sample_page}
  const ChangeNameDialog({super.key});

  @override
  State<ChangeNameDialog> createState() => _ChangeNameDialogState();
}

class _ChangeNameDialogState extends State<ChangeNameDialog> {
  /// TextField for category name
  final TextEditingController textEditingController = TextEditingController();

  bool validText = false;

  @override
  void initState() {
    textEditingController.addListener(() {
      if (textEditingController.text.length > 1) {
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

  @override
  Widget build(BuildContext context) => AlertDialog(
        title: const Text("Изменить имя списка задач", textAlign: TextAlign.center,),
        content: TextField(
          controller: textEditingController,
          maxLength: 21,
          decoration: const InputDecoration(
            hintText: "Новоя имя",
          ),
        ),
        actions: <Widget>[
          TextButton(
              onPressed: () {
                if (validText) {
                  Navigator.of(context).pop(textEditingController.text);
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
