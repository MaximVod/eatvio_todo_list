import 'package:dio/dio.dart';
import 'package:eatvio_todo_list/src/features/lists/data/lists_repository.dart';
import 'package:eatvio_todo_list/src/features/tasks/data/tasks_repository.dart';

/// {@template dependencies}
/// Dependencies container
/// {@endtemplate}
base class Dependencies {
  /// {@macro dependencies}
  const Dependencies({
    required this.dio,
  });

  /// [Dio] instance, used to http requests.
  final Dio dio;


}

/// {@template dependencies}
/// Repositories container
/// {@endtemplate}
base class Repositories {
  /// {@macro dependencies}
  const Repositories({
    required this.listsRepository,
    required this.tasksRepository,
  });

  /// [IListsRepository] instance
  final IListsRepository listsRepository;

  /// [ITasksRepository] instance
  final ITasksRepository tasksRepository;


}

/// {@template initialization_result}
/// Result of initialization
/// {@endtemplate}
final class InitializationResult {
  /// {@macro initialization_result}
  const InitializationResult({
    required this.dependencies,
    required this.repositories,
    required this.msSpent,
  });

  /// The dependencies
  final Dependencies dependencies;

  /// The dependencies
  final Repositories repositories;

  /// The number of milliseconds spent
  final int msSpent;

  @override
  String toString() => '$InitializationResult('
      'dependencies: $dependencies, '
      'msSpent: $msSpent'
      ')';
}