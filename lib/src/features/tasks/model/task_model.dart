import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

@freezed
abstract class TaskModel with _$TaskModel {
  factory TaskModel({required String id, required TaskFields fields}) =
      _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}

@freezed
abstract class TaskFields with _$TaskFields {
  factory TaskFields({
    required String name,
    @JsonKey(name: "date_of_creation")
    required String dateOfCreation,
    @JsonKey(name: "date_of_change")
    String? dateOfChange,
    @Default(false) bool done,
    @Default("") String description,
    @Default(false) bool priority,
  }) = _TaskFields;

  factory TaskFields.fromJson(Map<String, dynamic> json) =>
      _$TaskFieldsFromJson(json);
}
