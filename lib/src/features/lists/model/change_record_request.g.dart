// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_record_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeRecordsField _$ChangeRecordsFieldFromJson(Map<String, dynamic> json) =>
    ChangeRecordsField(
      json['name'] as String?,
      json['private'] as bool?,
    );

Map<String, dynamic> _$ChangeRecordsFieldToJson(ChangeRecordsField instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('private', instance.private);
  return val;
}

_$ChangeRecordsRequestImpl _$$ChangeRecordsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangeRecordsRequestImpl(
      fields:
          ChangeRecordsField.fromJson(json['fields'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChangeRecordsRequestImplToJson(
        _$ChangeRecordsRequestImpl instance) =>
    <String, dynamic>{
      'fields': instance.fields,
    };
