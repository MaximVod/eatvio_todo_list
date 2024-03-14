// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListModel _$ListModelFromJson(Map<String, dynamic> json) {
  return _ListModel.fromJson(json);
}

/// @nodoc
mixin _$ListModel {
  String get id => throw _privateConstructorUsedError;
  ListFields get fields => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListModelCopyWith<ListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListModelCopyWith<$Res> {
  factory $ListModelCopyWith(ListModel value, $Res Function(ListModel) then) =
      _$ListModelCopyWithImpl<$Res, ListModel>;
  @useResult
  $Res call({String id, ListFields fields});

  $ListFieldsCopyWith<$Res> get fields;
}

/// @nodoc
class _$ListModelCopyWithImpl<$Res, $Val extends ListModel>
    implements $ListModelCopyWith<$Res> {
  _$ListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fields = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as ListFields,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ListFieldsCopyWith<$Res> get fields {
    return $ListFieldsCopyWith<$Res>(_value.fields, (value) {
      return _then(_value.copyWith(fields: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ListModelImplCopyWith<$Res>
    implements $ListModelCopyWith<$Res> {
  factory _$$ListModelImplCopyWith(
          _$ListModelImpl value, $Res Function(_$ListModelImpl) then) =
      __$$ListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, ListFields fields});

  @override
  $ListFieldsCopyWith<$Res> get fields;
}

/// @nodoc
class __$$ListModelImplCopyWithImpl<$Res>
    extends _$ListModelCopyWithImpl<$Res, _$ListModelImpl>
    implements _$$ListModelImplCopyWith<$Res> {
  __$$ListModelImplCopyWithImpl(
      _$ListModelImpl _value, $Res Function(_$ListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fields = null,
  }) {
    return _then(_$ListModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as ListFields,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListModelImpl implements _ListModel {
  _$ListModelImpl({required this.id, required this.fields});

  factory _$ListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListModelImplFromJson(json);

  @override
  final String id;
  @override
  final ListFields fields;

  @override
  String toString() {
    return 'ListModel(id: $id, fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fields, fields) || other.fields == fields));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fields);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListModelImplCopyWith<_$ListModelImpl> get copyWith =>
      __$$ListModelImplCopyWithImpl<_$ListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListModelImplToJson(
      this,
    );
  }
}

abstract class _ListModel implements ListModel {
  factory _ListModel(
      {required final String id,
      required final ListFields fields}) = _$ListModelImpl;

  factory _ListModel.fromJson(Map<String, dynamic> json) =
      _$ListModelImpl.fromJson;

  @override
  String get id;
  @override
  ListFields get fields;
  @override
  @JsonKey(ignore: true)
  _$$ListModelImplCopyWith<_$ListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ListFields _$ListFieldsFromJson(Map<String, dynamic> json) {
  return _ListFields.fromJson(json);
}

/// @nodoc
mixin _$ListFields {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  bool get private => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListFieldsCopyWith<ListFields> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListFieldsCopyWith<$Res> {
  factory $ListFieldsCopyWith(
          ListFields value, $Res Function(ListFields) then) =
      _$ListFieldsCopyWithImpl<$Res, ListFields>;
  @useResult
  $Res call({String name, String id, bool private});
}

/// @nodoc
class _$ListFieldsCopyWithImpl<$Res, $Val extends ListFields>
    implements $ListFieldsCopyWith<$Res> {
  _$ListFieldsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? private = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      private: null == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListFieldsImplCopyWith<$Res>
    implements $ListFieldsCopyWith<$Res> {
  factory _$$ListFieldsImplCopyWith(
          _$ListFieldsImpl value, $Res Function(_$ListFieldsImpl) then) =
      __$$ListFieldsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String id, bool private});
}

/// @nodoc
class __$$ListFieldsImplCopyWithImpl<$Res>
    extends _$ListFieldsCopyWithImpl<$Res, _$ListFieldsImpl>
    implements _$$ListFieldsImplCopyWith<$Res> {
  __$$ListFieldsImplCopyWithImpl(
      _$ListFieldsImpl _value, $Res Function(_$ListFieldsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? private = null,
  }) {
    return _then(_$ListFieldsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      private: null == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListFieldsImpl implements _ListFields {
  _$ListFieldsImpl(
      {required this.name, required this.id, this.private = false});

  factory _$ListFieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListFieldsImplFromJson(json);

  @override
  final String name;
  @override
  final String id;
  @override
  @JsonKey()
  final bool private;

  @override
  String toString() {
    return 'ListFields(name: $name, id: $id, private: $private)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListFieldsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.private, private) || other.private == private));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, private);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListFieldsImplCopyWith<_$ListFieldsImpl> get copyWith =>
      __$$ListFieldsImplCopyWithImpl<_$ListFieldsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListFieldsImplToJson(
      this,
    );
  }
}

abstract class _ListFields implements ListFields {
  factory _ListFields(
      {required final String name,
      required final String id,
      final bool private}) = _$ListFieldsImpl;

  factory _ListFields.fromJson(Map<String, dynamic> json) =
      _$ListFieldsImpl.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  bool get private;
  @override
  @JsonKey(ignore: true)
  _$$ListFieldsImplCopyWith<_$ListFieldsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
