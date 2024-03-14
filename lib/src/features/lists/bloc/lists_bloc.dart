import 'package:eatvio_todo_list/src/features/lists/data/lists_repository.dart';
import 'package:eatvio_todo_list/src/features/lists/model/list_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///States for logic with lists
sealed class ListsState {}

class ListsIdle implements ListsState {
  ListsIdle();
}

class ListsLoading implements ListsState {
  ListsLoading();
}

class ListsFetched implements ListsState {
  final List<ListModel> lists;
  ListsFetched(this.lists);
}

class ListsFailure implements ListsState {
  final String error;
  ListsFailure(this.error);
}

///Events for logic with lists
sealed class ListsEvent {}

class FetchAllLists implements ListsEvent {
  FetchAllLists();
}

class ChangeListName implements ListsEvent {
  final String recordId;
  final String newName;

  ChangeListName(this.recordId, this.newName);
}

class ChangePrivateState implements ListsEvent {
  final String recordId;
  final String name;
  final bool newState;

  ChangePrivateState(this.recordId, this.name, this.newState);
}

///BLoC of Lists
class ListsBloc extends Bloc<ListsEvent, ListsState> {
  final IListsRepository _listsRepository;

  ListsBloc(IListsRepository listsRepository)
      : _listsRepository = listsRepository,
        super(ListsIdle()) {
    on<ListsEvent>(
      (event, emitter) => switch (event) {
        FetchAllLists() => _fetchAllLists(emitter),
        ChangeListName() =>
          _changeListName(emitter, event.recordId, event.newName),
        ChangePrivateState() => _changePrivateState(
            emitter, event.recordId, event.name, event.newState,),
      },
    );
  }

  Future<void> _fetchAllLists(
    Emitter<ListsState> emitter,
  ) async {
    try {
      emitter(ListsLoading());
      final lists = await _listsRepository.getAllLists();
      return emitter(ListsFetched(lists));
    } on Object catch (error) {
      emitter(
        ListsFailure(error.toString()),
      );
      rethrow;
    }
  }

  Future<void> _changeListName(
      Emitter<ListsState> emitter, String recordId, String newName,) async {
    try {
      emitter(ListsLoading());
      await _listsRepository.changeListName(recordId: recordId, name: newName);
      await _fetchAllLists(emitter);
    } on Object catch (error) {
      emitter(
        ListsFailure(error.toString()),
      );
      rethrow;
    }
  }

  Future<void> _changePrivateState(Emitter<ListsState> emitter, String recordId,
      String name, bool newState,) async {
    try {
      await _listsRepository.changePrivateState(
          recordId: recordId, name: name, state: newState,);
    } on Object catch (error) {
      emitter(
        ListsFailure(error.toString()),
      );
      rethrow;
    }
  }
}
