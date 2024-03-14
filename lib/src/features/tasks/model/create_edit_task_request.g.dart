// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_edit_task_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateEditTaskFields _$CreateEditTaskFieldsFromJson(
        Map<String, dynamic> json) =>
    CreateEditTaskFields(
      name: json['name'] as String?,
      description: json['description'] as String?,
      done: json['done'] as bool?,
      priority: json['priority'] as bool?,
      date_of_creation: json['date_of_creation'] as String?,
      date_of_change: json['date_of_change'] as String?,
    );

Map<String, dynamic> _$CreateEditTaskFieldsToJson(
    CreateEditTaskFields instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('done', instance.done);
  writeNotNull('priority', instance.priority);
  writeNotNull('date_of_creation', instance.date_of_creation);
  writeNotNull('date_of_change', instance.date_of_change);
  return val;
}

_$ChangeRecordsRequestImpl _$$ChangeRecordsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangeRecordsRequestImpl(
      fields:
          CreateEditTaskFields.fromJson(json['fields'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChangeRecordsRequestImplToJson(
        _$ChangeRecordsRequestImpl instance) =>
    <String, dynamic>{
      'fields': instance.fields,
    };
