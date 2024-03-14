import 'package:eatvio_todo_list/src/common/model/records_response.dart';
import 'package:eatvio_todo_list/src/common/model/standard_response.dart';
import 'package:eatvio_todo_list/src/features/tasks/data/tasks_data_source.dart';
import 'package:eatvio_todo_list/src/features/tasks/model/create_edit_task_request.dart';
import 'package:eatvio_todo_list/src/features/tasks/model/task_model.dart';

/// Interface for fetching data of tasks

abstract interface class ITasksRepository {
  Future<List<TaskModel>> getTasks({required String tableId});
  Future<StandardResponse> createTask(
      {required String tableId, required CreateEditTaskFields fields,});
  Future<StandardResponse> removeTask(
      {required String tableId, required String recordId,});
  Future<StandardResponse> markTask(
      {required String tableId,
      required String recordId,
      required bool isDone,});
  Future<StandardResponse> editTask(
      {required String tableId,
      required String recordId,
      required CreateEditTaskFields fields,});
}

///Implementation of [ITasksRepository]

class TasksRepositoryImpl implements ITasksRepository {
  final TasksDataSource tasksDataSource;

  TasksRepositoryImpl(this.tasksDataSource);

  @override
  Future<List<TaskModel>> getTasks({required String tableId}) async {
    final RecordsResponse<TaskModel> listModel =
        await tasksDataSource.getAllTasks(tableId: tableId);

    return listModel.records;
  }

  @override
  Future<StandardResponse> createTask(
          {required String tableId, required CreateEditTaskFields fields,}) =>
      tasksDataSource.createTasks(
          tableId: tableId, requestBody: CreateEditTaskRequest(fields: fields),);

  @override
  Future<StandardResponse> removeTask(
          {required String tableId, required String recordId,}) =>
      tasksDataSource.removeTask(tableId: tableId, recordId: recordId);

  @override
  Future<StandardResponse> editTask(
      {required String tableId,
      required String recordId,
      required CreateEditTaskFields fields,}) => tasksDataSource.editTask(
        tableId: tableId,
        recordId: recordId,
        requestBody: CreateEditTaskRequest(fields: fields),);

  @override
  Future<StandardResponse> markTask(
          {required String tableId,
          required String recordId,
          required bool isDone,}) =>
      tasksDataSource.markTask(
          tableId: tableId,
          recordId: recordId,
          requestBody: CreateEditTaskRequest(
              fields: CreateEditTaskFields(
                  done: isDone,
                  date_of_change: DateTime.timestamp().toString(),),),);
}
