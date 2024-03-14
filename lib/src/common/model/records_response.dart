import 'package:freezed_annotation/freezed_annotation.dart';

part 'records_response.freezed.dart';
part 'records_response.g.dart';

@Freezed(genericArgumentFactories: true)
sealed class RecordsResponse<T> with _$RecordsResponse<T> {
  factory RecordsResponse({required List<T> records}) = _RecordsResponse;

  factory RecordsResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT,) =>
      _$RecordsResponseFromJson(json, fromJsonT);
}
