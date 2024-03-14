
import 'package:eatvio_todo_list/src/core/theme/color_scheme.dart';
import 'package:eatvio_todo_list/src/features/lists/widget/lists_screen.dart';
import 'package:flutter/material.dart';

class AppContext extends StatelessWidget {
  const AppContext({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
      home: const ListsScreen(),
      theme: lightThemeData,
    );
}