// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'standard_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StandardResponse _$StandardResponseFromJson(Map<String, dynamic> json) {
  return _StandardResponse.fromJson(json);
}

/// @nodoc
mixin _$StandardResponse {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StandardResponseCopyWith<StandardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandardResponseCopyWith<$Res> {
  factory $StandardResponseCopyWith(
          StandardResponse value, $Res Function(StandardResponse) then) =
      _$StandardResponseCopyWithImpl<$Res, StandardResponse>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$StandardResponseCopyWithImpl<$Res, $Val extends StandardResponse>
    implements $StandardResponseCopyWith<$Res> {
  _$StandardResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StandardResponseImplCopyWith<$Res>
    implements $StandardResponseCopyWith<$Res> {
  factory _$$StandardResponseImplCopyWith(_$StandardResponseImpl value,
          $Res Function(_$StandardResponseImpl) then) =
      __$$StandardResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$StandardResponseImplCopyWithImpl<$Res>
    extends _$StandardResponseCopyWithImpl<$Res, _$StandardResponseImpl>
    implements _$$StandardResponseImplCopyWith<$Res> {
  __$$StandardResponseImplCopyWithImpl(_$StandardResponseImpl _value,
      $Res Function(_$StandardResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$StandardResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StandardResponseImpl implements _StandardResponse {
  _$StandardResponseImpl({required this.id});

  factory _$StandardResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StandardResponseImplFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'StandardResponse(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StandardResponseImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StandardResponseImplCopyWith<_$StandardResponseImpl> get copyWith =>
      __$$StandardResponseImplCopyWithImpl<_$StandardResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StandardResponseImplToJson(
      this,
    );
  }
}

abstract class _StandardResponse implements StandardResponse {
  factory _StandardResponse({required final String id}) =
      _$StandardResponseImpl;

  factory _StandardResponse.fromJson(Map<String, dynamic> json) =
      _$StandardResponseImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$StandardResponseImplCopyWith<_$StandardResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
