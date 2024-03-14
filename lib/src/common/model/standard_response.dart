
import 'package:freezed_annotation/freezed_annotation.dart';

part 'standard_response.freezed.dart';
part 'standard_response.g.dart';

@freezed
abstract class StandardResponse with _$StandardResponse {
  factory StandardResponse({required String id}) =
  _StandardResponse;

  factory StandardResponse.fromJson(Map<String, dynamic> json) =>
      _$StandardResponseFromJson(json);
}