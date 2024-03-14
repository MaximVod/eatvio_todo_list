import 'package:eatvio_todo_list/src/common/model/records_response.dart';
import 'package:eatvio_todo_list/src/common/model/standard_response.dart';
import 'package:eatvio_todo_list/src/features/lists/data/lists_data_source.dart';
import 'package:eatvio_todo_list/src/features/lists/model/change_record_request.dart';
import 'package:eatvio_todo_list/src/features/lists/model/list_model.dart';

/// Interface for fetching data of lists

abstract interface class IListsRepository {
  Future<List<ListModel>> getAllLists();
  Future<StandardResponse> changeListName(
      {required String recordId, required String name,});
  Future<StandardResponse> changePrivateState({
    required String recordId,
    required String name,
    required bool state,
  });
}

class ListsRepositoryImpl implements IListsRepository {
  final ListsDataSource listsDataSource;

  ListsRepositoryImpl(this.listsDataSource);

  @override
  Future<List<ListModel>> getAllLists() async {
    final RecordsResponse<ListModel> listModel =
        await listsDataSource.getAllLists();

    return listModel.records;
  }

  @override
  Future<StandardResponse> changeListName(
          {required String recordId, required String name,}) =>
      listsDataSource.changeListName(
          recordId: recordId,
          requestBody:
              ChangeRecordsRequest(fields: ChangeRecordsField(name, null)),);

  @override
  Future<StandardResponse> changePrivateState(
          {required String recordId,
          required String name,
          required bool state,}) =>
      listsDataSource.changeListName(
          recordId: recordId,
          requestBody: ChangeRecordsRequest(
              fields: ChangeRecordsField(null, state),),);
}
