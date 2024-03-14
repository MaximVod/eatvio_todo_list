import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_model.freezed.dart';
part 'list_model.g.dart';

@freezed
abstract class ListModel with _$ListModel {
  factory ListModel({required String id, required ListFields fields}) =
      _ListModel;

  factory ListModel.fromJson(Map<String, dynamic> json) =>
      _$ListModelFromJson(json);
}

@freezed
abstract class ListFields with _$ListFields {
  factory ListFields(
      {required String name,
      required String id,
      @Default(false) bool private,}) = _ListFields;

  factory ListFields.fromJson(Map<String, dynamic> json) =>
      _$ListFieldsFromJson(json);
}
