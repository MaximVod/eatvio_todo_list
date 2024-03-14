import 'package:eatvio_todo_list/src/features/app/model/dependencies.dart';
import 'package:eatvio_todo_list/src/features/app/widget/app_context.dart';
import 'package:eatvio_todo_list/src/features/initialization/widget/dependencies_scope.dart';
import 'package:flutter/material.dart';

/// [App] is an entry point to the application.
///
/// Scopes that don't depend on widgets returned by [MaterialApp]
/// ([Directionality], [MediaQuery], [Localizations]) should be placed here.
class App extends StatelessWidget {
  /// The initialization result from the [InitializationProcessor]
  /// which contains initialized dependencies.
  final InitializationResult result;

  const App(this.result);

  @override
  Widget build(BuildContext context) => DependenciesScope(
      dependencies: result.dependencies,
      repositories: result.repositories,
      child: const AppContext(),);
}
