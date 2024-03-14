import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_record_request.freezed.dart';
part 'change_record_request.g.dart';

@freezed
class ChangeRecordsRequest with _$ChangeRecordsRequest {
  factory ChangeRecordsRequest({required ChangeRecordsField fields}) =
  _ChangeRecordsRequest;

  factory ChangeRecordsRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangeRecordsRequestFromJson(json);
}

@JsonSerializable(includeIfNull: false)
class ChangeRecordsField {

  final String? name;
  final bool? private;

   ChangeRecordsField(
      this.name,
       this.private,);

  factory ChangeRecordsField.fromJson(Map<String, dynamic> json) =>
      _$ChangeRecordsFieldFromJson(json);

  Map<String, dynamic> toJson() => _$ChangeRecordsFieldToJson(this);
}