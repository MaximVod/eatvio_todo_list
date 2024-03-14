// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) {
  return _TaskModel.fromJson(json);
}

/// @nodoc
mixin _$TaskModel {
  String get id => throw _privateConstructorUsedError;
  TaskFields get fields => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskModelCopyWith<TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskModelCopyWith<$Res> {
  factory $TaskModelCopyWith(TaskModel value, $Res Function(TaskModel) then) =
      _$TaskModelCopyWithImpl<$Res, TaskModel>;
  @useResult
  $Res call({String id, TaskFields fields});

  $TaskFieldsCopyWith<$Res> get fields;
}

/// @nodoc
class _$TaskModelCopyWithImpl<$Res, $Val extends TaskModel>
    implements $TaskModelCopyWith<$Res> {
  _$TaskModelCopyWithImpl(this._value, this._then);

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
              as TaskFields,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskFieldsCopyWith<$Res> get fields {
    return $TaskFieldsCopyWith<$Res>(_value.fields, (value) {
      return _then(_value.copyWith(fields: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskModelImplCopyWith<$Res>
    implements $TaskModelCopyWith<$Res> {
  factory _$$TaskModelImplCopyWith(
          _$TaskModelImpl value, $Res Function(_$TaskModelImpl) then) =
      __$$TaskModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, TaskFields fields});

  @override
  $TaskFieldsCopyWith<$Res> get fields;
}

/// @nodoc
class __$$TaskModelImplCopyWithImpl<$Res>
    extends _$TaskModelCopyWithImpl<$Res, _$TaskModelImpl>
    implements _$$TaskModelImplCopyWith<$Res> {
  __$$TaskModelImplCopyWithImpl(
      _$TaskModelImpl _value, $Res Function(_$TaskModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fields = null,
  }) {
    return _then(_$TaskModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as TaskFields,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskModelImpl implements _TaskModel {
  _$TaskModelImpl({required this.id, required this.fields});

  factory _$TaskModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskModelImplFromJson(json);

  @override
  final String id;
  @override
  final TaskFields fields;

  @override
  String toString() {
    return 'TaskModel(id: $id, fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fields, fields) || other.fields == fields));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fields);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskModelImplCopyWith<_$TaskModelImpl> get copyWith =>
      __$$TaskModelImplCopyWithImpl<_$TaskModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskModelImplToJson(
      this,
    );
  }
}

abstract class _TaskModel implements TaskModel {
  factory _TaskModel(
      {required final String id,
      required final TaskFields fields}) = _$TaskModelImpl;

  factory _TaskModel.fromJson(Map<String, dynamic> json) =
      _$TaskModelImpl.fromJson;

  @override
  String get id;
  @override
  TaskFields get fields;
  @override
  @JsonKey(ignore: true)
  _$$TaskModelImplCopyWith<_$TaskModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskFields _$TaskFieldsFromJson(Map<String, dynamic> json) {
  return _TaskFields.fromJson(json);
}

/// @nodoc
mixin _$TaskFields {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "date_of_creation")
  String get dateOfCreation => throw _privateConstructorUsedError;
  @JsonKey(name: "date_of_change")
  String? get dateOfChange => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get priority => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskFieldsCopyWith<TaskFields> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskFieldsCopyWith<$Res> {
  factory $TaskFieldsCopyWith(
          TaskFields value, $Res Function(TaskFields) then) =
      _$TaskFieldsCopyWithImpl<$Res, TaskFields>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: "date_of_creation") String dateOfCreation,
      @JsonKey(name: "date_of_change") String? dateOfChange,
      bool done,
      String description,
      bool priority});
}

/// @nodoc
class _$TaskFieldsCopyWithImpl<$Res, $Val extends TaskFields>
    implements $TaskFieldsCopyWith<$Res> {
  _$TaskFieldsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dateOfCreation = null,
    Object? dateOfChange = freezed,
    Object? done = null,
    Object? description = null,
    Object? priority = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfCreation: null == dateOfCreation
          ? _value.dateOfCreation
          : dateOfCreation // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfChange: freezed == dateOfChange
          ? _value.dateOfChange
          : dateOfChange // ignore: cast_nullable_to_non_nullable
              as String?,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskFieldsImplCopyWith<$Res>
    implements $TaskFieldsCopyWith<$Res> {
  factory _$$TaskFieldsImplCopyWith(
          _$TaskFieldsImpl value, $Res Function(_$TaskFieldsImpl) then) =
      __$$TaskFieldsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: "date_of_creation") String dateOfCreation,
      @JsonKey(name: "date_of_change") String? dateOfChange,
      bool done,
      String description,
      bool priority});
}

/// @nodoc
class __$$TaskFieldsImplCopyWithImpl<$Res>
    extends _$TaskFieldsCopyWithImpl<$Res, _$TaskFieldsImpl>
    implements _$$TaskFieldsImplCopyWith<$Res> {
  __$$TaskFieldsImplCopyWithImpl(
      _$TaskFieldsImpl _value, $Res Function(_$TaskFieldsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dateOfCreation = null,
    Object? dateOfChange = freezed,
    Object? done = null,
    Object? description = null,
    Object? priority = null,
  }) {
    return _then(_$TaskFieldsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfCreation: null == dateOfCreation
          ? _value.dateOfCreation
          : dateOfCreation // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfChange: freezed == dateOfChange
          ? _value.dateOfChange
          : dateOfChange // ignore: cast_nullable_to_non_nullable
              as String?,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskFieldsImpl implements _TaskFields {
  _$TaskFieldsImpl(
      {required this.name,
      @JsonKey(name: "date_of_creation") required this.dateOfCreation,
      @JsonKey(name: "date_of_change") this.dateOfChange,
      this.done = false,
      this.description = "",
      this.priority = false});

  factory _$TaskFieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskFieldsImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: "date_of_creation")
  final String dateOfCreation;
  @override
  @JsonKey(name: "date_of_change")
  final String? dateOfChange;
  @override
  @JsonKey()
  final bool done;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final bool priority;

  @override
  String toString() {
    return 'TaskFields(name: $name, dateOfCreation: $dateOfCreation, dateOfChange: $dateOfChange, done: $done, description: $description, priority: $priority)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskFieldsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dateOfCreation, dateOfCreation) ||
                other.dateOfCreation == dateOfCreation) &&
            (identical(other.dateOfChange, dateOfChange) ||
                other.dateOfChange == dateOfChange) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.priority, priority) ||
                other.priority == priority));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, dateOfCreation,
      dateOfChange, done, description, priority);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskFieldsImplCopyWith<_$TaskFieldsImpl> get copyWith =>
      __$$TaskFieldsImplCopyWithImpl<_$TaskFieldsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskFieldsImplToJson(
      this,
    );
  }
}

abstract class _TaskFields implements TaskFields {
  factory _TaskFields(
      {required final String name,
      @JsonKey(name: "date_of_creation") required final String dateOfCreation,
      @JsonKey(name: "date_of_change") final String? dateOfChange,
      final bool done,
      final String description,
      final bool priority}) = _$TaskFieldsImpl;

  factory _TaskFields.fromJson(Map<String, dynamic> json) =
      _$TaskFieldsImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: "date_of_creation")
  String get dateOfCreation;
  @override
  @JsonKey(name: "date_of_change")
  String? get dateOfChange;
  @override
  bool get done;
  @override
  String get description;
  @override
  bool get priority;
  @override
  @JsonKey(ignore: true)
  _$$TaskFieldsImplCopyWith<_$TaskFieldsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
