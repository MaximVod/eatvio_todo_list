import 'package:dio/dio.dart';
import 'package:eatvio_todo_list/src/common/model/records_response.dart';
import 'package:eatvio_todo_list/src/common/model/standard_response.dart';
import 'package:eatvio_todo_list/src/features/lists/model/change_record_request.dart';
import 'package:eatvio_todo_list/src/features/lists/model/list_model.dart';
import 'package:retrofit/retrofit.dart';

part 'lists_data_source.g.dart';

/// Data source for lists

@RestApi()
abstract interface class ListsDataSource {
  factory ListsDataSource.createDataSource(Dio dio) = _ListsDataSource;

  /// Get all lists of tasks
  @GET('/appLbQv5pZnpDZ3WQ/tblGh3GDaBfyFmaRr')
  Future<RecordsResponse<ListModel>> getAllLists();

  /// Change list name
  @PATCH('/appLbQv5pZnpDZ3WQ/tblGh3GDaBfyFmaRr/{recordId}')
  Future<StandardResponse> changeListName(
      {@Path("recordId") required String recordId,
      @Body() required ChangeRecordsRequest requestBody,});

  /// Change private state
  @PATCH('/appLbQv5pZnpDZ3WQ/tblGh3GDaBfyFmaRr/{recordId}')
  Future<StandardResponse> changePrivateState(
      {@Path("recordId") required String recordId,
      @Body() required ChangeRecordsRequest requestBody,});
}
