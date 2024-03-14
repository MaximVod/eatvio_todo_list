import 'package:eatvio_todo_list/src/features/tasks/data/tasks_repository.dart';
import 'package:eatvio_todo_list/src/features/tasks/model/create_edit_task_request.dart';
import 'package:eatvio_todo_list/src/features/tasks/model/task_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///States for logic with tasks
sealed class TasksState {}

class TasksIdle implements TasksState {
  TasksIdle();
}

class TasksLoading implements TasksState {
  TasksLoading();
}

class TasksFetched implements TasksState {
  final List<TaskModel> tasks;
  TasksFetched(this.tasks);
}

class TasksFailure implements TasksState {
  final String error;
  TasksFailure(this.error);
}

///Events for logic with tasks
sealed class TasksEvent {}

class FetchAllTasks implements TasksEvent {
  final String tableId;
  FetchAllTasks(this.tableId);
}

class CreateTask implements TasksEvent {
  final String tableId;
  final CreateEditTaskFields fields;

  CreateTask(this.tableId, this.fields);
}

class EditTask implements TasksEvent {
  final String tableId;
  final String recordId;
  final CreateEditTaskFields fields;

  EditTask(this.tableId, this.recordId, this.fields);
}

class RemoveTask implements TasksEvent {
  final String tableId;
  final String recordId;
  RemoveTask(this.tableId, this.recordId);
}

class FilterList implements TasksEvent {
  final bool priority;
  FilterList(this.priority);
}

class MarkTask implements TasksEvent {
  final String tableId;
  final String recordId;
  final bool isDone;
  MarkTask(this.tableId, this.recordId, this.isDone);
}

///BLoC of tasks
class TasksBloc extends Bloc<TasksEvent, TasksState> {
  final ITasksRepository _tasksRepository;
  final List<TaskModel> tasksList = [];

  TasksBloc(ITasksRepository tasksRepository)
      : _tasksRepository = tasksRepository,
        super(TasksIdle()) {
    on<TasksEvent>(
      (event, emitter) => switch (event) {
        FetchAllTasks() => _fetchTasks(emitter, event.tableId),
        CreateTask() => _createTask(emitter, event.tableId, event.fields),
        RemoveTask() => _removeTask(emitter, event.tableId, event.recordId),
        MarkTask() =>
          _markTask(emitter, event.tableId, event.recordId, event.isDone),
        EditTask() =>
          _editTask(emitter, event.tableId, event.recordId, event.fields),
        FilterList() => _filterList(emitter, event.priority),
      },
    );
  }

  Future<void> _fetchTasks(Emitter<TasksState> emitter, String tableId) async {
    try {
      emitter(TasksLoading());
      final lists = await _tasksRepository.getTasks(tableId: tableId);
      tasksList.clear();
      tasksList.addAll(lists);
      return emitter(TasksFetched(lists));
    } on Object catch (error) {
      emitter(
        TasksFailure(error.toString()),
      );
      rethrow;
    }
  }

  Future<void> _createTask(Emitter<TasksState> emitter, String tableId,
      CreateEditTaskFields fields,) async {
    try {
      await _tasksRepository.createTask(tableId: tableId, fields: fields);
      await _fetchTasks(emitter, tableId);
    } on Object catch (error) {
      emitter(
        TasksFailure(error.toString()),
      );
      rethrow;
    }
  }

  Future<void> _editTask(Emitter<TasksState> emitter, String tableId,
      String recordId, CreateEditTaskFields fields,) async {
    try {
      await _tasksRepository.editTask(
          tableId: tableId, recordId: recordId, fields: fields,);
      await _fetchTasks(emitter, tableId);
    } on Object catch (error) {
      emitter(
        TasksFailure(error.toString()),
      );
      rethrow;
    }
  }

  Future<void> _removeTask(
      Emitter<TasksState> emitter, String tableId, String recordId,) async {
    try {
      await _tasksRepository.removeTask(
        tableId: tableId,
        recordId: recordId,
      );
      await _fetchTasks(emitter, tableId);
    } on Object catch (error) {
      emitter(
        TasksFailure(error.toString()),
      );
      rethrow;
    }
  }

  Future<void> _markTask(Emitter<TasksState> emitter, String tableId,
      String recordId, bool isDone,) async {
    try {
      await _tasksRepository.markTask(
        tableId: tableId,
        recordId: recordId,
        isDone: isDone,
      );
    } on Object catch (error) {
      emitter(
        TasksFailure(error.toString()),
      );
      rethrow;
    }
  }

  Future<void> _filterList(Emitter<TasksState> emitter, bool priority) async {
    try {
      if (priority) {
        return emitter(TasksFetched(
            tasksList.where((element) => element.fields.priority).toList(),),);
      } else {
        return emitter(TasksFetched(
            tasksList,),);
      }
    } on Object catch (error) {
      emitter(
        TasksFailure(error.toString()),
      );
      rethrow;
    }
  }
}
