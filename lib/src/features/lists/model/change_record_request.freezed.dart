// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_record_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangeRecordsRequest _$ChangeRecordsRequestFromJson(Map<String, dynamic> json) {
  return _ChangeRecordsRequest.fromJson(json);
}

/// @nodoc
mixin _$ChangeRecordsRequest {
  ChangeRecordsField get fields => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeRecordsRequestCopyWith<ChangeRecordsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeRecordsRequestCopyWith<$Res> {
  factory $ChangeRecordsRequestCopyWith(ChangeRecordsRequest value,
          $Res Function(ChangeRecordsRequest) then) =
      _$ChangeRecordsRequestCopyWithImpl<$Res, ChangeRecordsRequest>;
  @useResult
  $Res call({ChangeRecordsField fields});
}

/// @nodoc
class _$ChangeRecordsRequestCopyWithImpl<$Res,
        $Val extends ChangeRecordsRequest>
    implements $ChangeRecordsRequestCopyWith<$Res> {
  _$ChangeRecordsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = null,
  }) {
    return _then(_value.copyWith(
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as ChangeRecordsField,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeRecordsRequestImplCopyWith<$Res>
    implements $ChangeRecordsRequestCopyWith<$Res> {
  factory _$$ChangeRecordsRequestImplCopyWith(_$ChangeRecordsRequestImpl value,
          $Res Function(_$ChangeRecordsRequestImpl) then) =
      __$$ChangeRecordsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChangeRecordsField fields});
}

/// @nodoc
class __$$ChangeRecordsRequestImplCopyWithImpl<$Res>
    extends _$ChangeRecordsRequestCopyWithImpl<$Res, _$ChangeRecordsRequestImpl>
    implements _$$ChangeRecordsRequestImplCopyWith<$Res> {
  __$$ChangeRecordsRequestImplCopyWithImpl(_$ChangeRecordsRequestImpl _value,
      $Res Function(_$ChangeRecordsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = null,
  }) {
    return _then(_$ChangeRecordsRequestImpl(
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as ChangeRecordsField,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangeRecordsRequestImpl implements _ChangeRecordsRequest {
  _$ChangeRecordsRequestImpl({required this.fields});

  factory _$ChangeRecordsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeRecordsRequestImplFromJson(json);

  @override
  final ChangeRecordsField fields;

  @override
  String toString() {
    return 'ChangeRecordsRequest(fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeRecordsRequestImpl &&
            (identical(other.fields, fields) || other.fields == fields));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fields);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeRecordsRequestImplCopyWith<_$ChangeRecordsRequestImpl>
      get copyWith =>
          __$$ChangeRecordsRequestImplCopyWithImpl<_$ChangeRecordsRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeRecordsRequestImplToJson(
      this,
    );
  }
}

abstract class _ChangeRecordsRequest implements ChangeRecordsRequest {
  factory _ChangeRecordsRequest({required final ChangeRecordsField fields}) =
      _$ChangeRecordsRequestImpl;

  factory _ChangeRecordsRequest.fromJson(Map<String, dynamic> json) =
      _$ChangeRecordsRequestImpl.fromJson;

  @override
  ChangeRecordsField get fields;
  @override
  @JsonKey(ignore: true)
  _$$ChangeRecordsRequestImplCopyWith<_$ChangeRecordsRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
