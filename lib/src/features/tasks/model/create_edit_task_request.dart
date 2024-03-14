import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_edit_task_request.freezed.dart';
part 'create_edit_task_request.g.dart';

@freezed
class CreateEditTaskRequest with _$CreateEditTaskRequest {
  factory CreateEditTaskRequest({required CreateEditTaskFields fields}) =
      _ChangeRecordsRequest;

  factory CreateEditTaskRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateEditTaskRequestFromJson(json);
}

@JsonSerializable(includeIfNull: false)
class CreateEditTaskFields {
  final String? name;
  final String? description;
  final bool? done;
  final bool? priority;
  final String? date_of_creation;
  final String? date_of_change;



  CreateEditTaskFields(
      { this.name,
       this.description,
       this.done,
       this.priority,
       this.date_of_creation,
       this.date_of_change,});

  factory CreateEditTaskFields.fromJson(Map<String, dynamic> json) =>
      _$CreateEditTaskFieldsFromJson(json);

  Map<String, dynamic> toJson() => _$CreateEditTaskFieldsToJson(this);
}
