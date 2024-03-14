import 'package:dio/dio.dart';
import 'package:eatvio_todo_list/src/core/utils/logger.dart';
import 'package:eatvio_todo_list/src/features/app/model/dependencies.dart';
import 'package:eatvio_todo_list/src/features/lists/data/lists_data_source.dart';
import 'package:eatvio_todo_list/src/features/lists/data/lists_repository.dart';
import 'package:eatvio_todo_list/src/features/tasks/data/tasks_data_source.dart';
import 'package:eatvio_todo_list/src/features/tasks/data/tasks_repository.dart';

const timeOutSeconds = 20;

const apiToken =
    "pataWo3J7w37Mb7hr.423245f9bbe6c935b31ef9895b579fbe5e23474ee0f0cc709058564803206d4d";

const baseUrl = "https://api.airtable.com/v0";

final class InitializationProcessor {
  final Dio dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      contentType: 'application/json',
      connectTimeout: const Duration(seconds: timeOutSeconds),
      receiveTimeout: const Duration(seconds: timeOutSeconds),
      sendTimeout: const Duration(seconds: timeOutSeconds),
      headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $apiToken",
      },),);

  Dependencies _initDependencies() => Dependencies(
      dio: dio,
    );

  Future<Repositories> _initRepositories() async {
    final listsRepository =
        ListsRepositoryImpl(ListsDataSource.createDataSource(dio));

    final tasksRepository =
        TasksRepositoryImpl(TasksDataSource.createDataSource(dio));

    return Repositories(
        listsRepository: listsRepository, tasksRepository: tasksRepository,);
  }

  /// Method that starts the initialization process
  /// and returns the result of the initialization.
  ///
  /// This method may contain additional steps that need initialization
  /// before the application starts
  /// (for example, caching or enabling tracking manager)
  Future<InitializationResult> initialize() async {
    final stopwatch = Stopwatch()..start();

    logger.info('Initializing dependencies...');
    // initialize dependencies
    final dependencies = _initDependencies();
    logger.info('Dependencies initialized');
    // initialize dependencies
    final repositories = await _initRepositories();
    logger.info('Repositories initialized');

    stopwatch.stop();
    final result = InitializationResult(
      dependencies: dependencies,
      repositories: repositories,
      msSpent: stopwatch.elapsedMilliseconds,
    );
    return result;
  }
}
