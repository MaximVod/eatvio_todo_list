import 'package:dio/dio.dart';
import 'package:eatvio_todo_list/src/common/model/records_response.dart';
import 'package:eatvio_todo_list/src/common/model/standard_response.dart';
import 'package:eatvio_todo_list/src/features/tasks/model/create_edit_task_request.dart';
import 'package:eatvio_todo_list/src/features/tasks/model/task_model.dart';
import 'package:retrofit/retrofit.dart';

part 'tasks_data_source.g.dart';

/// Data source for tasks of list

@RestApi()
abstract interface class TasksDataSource {
  factory TasksDataSource.createDataSource(Dio dio) = _TasksDataSource;

  /// Get all tasks of list by table ID
  @GET('/appLbQv5pZnpDZ3WQ/{tableId}')
  Future<RecordsResponse<TaskModel>> getAllTasks({
    @Path("tableId") required String tableId,
  });

  /// Create task
  @POST('/appLbQv5pZnpDZ3WQ/{tableId}')
  Future<StandardResponse> createTasks({
    @Path("tableId") required String tableId,
    @Body() required CreateEditTaskRequest requestBody,
  });

  /// Remove task
  @DELETE('/appLbQv5pZnpDZ3WQ/{tableId}/{recordId}')
  Future<StandardResponse> removeTask({
    @Path("tableId") required String tableId,
    @Path("recordId") required String recordId,
  });

  /// Mark done or undone
  @PATCH('/appLbQv5pZnpDZ3WQ/{tableId}/{recordId}')
  Future<StandardResponse> markTask({
    @Path("tableId") required String tableId,
    @Path("recordId") required String recordId,
    @Body() required CreateEditTaskRequest requestBody,
  });

  /// Edit task
  @PATCH('/appLbQv5pZnpDZ3WQ/{tableId}/{recordId}')
  Future<StandardResponse> editTask({
    @Path("tableId") required String tableId,
    @Path("recordId") required String recordId,
    @Body() required CreateEditTaskRequest requestBody,
  });
}
