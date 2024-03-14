// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'records_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecordsResponseImpl<T> _$$RecordsResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$RecordsResponseImpl<T>(
      records: (json['records'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$$RecordsResponseImplToJson<T>(
  _$RecordsResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'records': instance.records.map(toJsonT).toList(),
    };
