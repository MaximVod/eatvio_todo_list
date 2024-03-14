// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListModelImpl _$$ListModelImplFromJson(Map<String, dynamic> json) =>
    _$ListModelImpl(
      id: json['id'] as String,
      fields: ListFields.fromJson(json['fields'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ListModelImplToJson(_$ListModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fields': instance.fields,
    };

_$ListFieldsImpl _$$ListFieldsImplFromJson(Map<String, dynamic> json) =>
    _$ListFieldsImpl(
      name: json['name'] as String,
      id: json['id'] as String,
      private: json['private'] as bool? ?? false,
    );

Map<String, dynamic> _$$ListFieldsImplToJson(_$ListFieldsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'private': instance.private,
    };
