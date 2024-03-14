// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskModelImpl _$$TaskModelImplFromJson(Map<String, dynamic> json) =>
    _$TaskModelImpl(
      id: json['id'] as String,
      fields: TaskFields.fromJson(json['fields'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TaskModelImplToJson(_$TaskModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fields': instance.fields,
    };

_$TaskFieldsImpl _$$TaskFieldsImplFromJson(Map<String, dynamic> json) =>
    _$TaskFieldsImpl(
      name: json['name'] as String,
      dateOfCreation: json['date_of_creation'] as String,
      dateOfChange: json['date_of_change'] as String?,
      done: json['done'] as bool? ?? false,
      description: json['description'] as String? ?? "",
      priority: json['priority'] as bool? ?? false,
    );

Map<String, dynamic> _$$TaskFieldsImplToJson(_$TaskFieldsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'date_of_creation': instance.dateOfCreation,
      'date_of_change': instance.dateOfChange,
      'done': instance.done,
      'description': instance.description,
      'priority': instance.priority,
    };
