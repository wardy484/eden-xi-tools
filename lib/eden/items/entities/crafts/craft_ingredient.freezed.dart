// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'craft_ingredient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CraftIngredient _$CraftIngredientFromJson(Map<String, dynamic> json) {
  return _CraftIngredient.fromJson(json);
}

/// @nodoc
class _$CraftIngredientTearOff {
  const _$CraftIngredientTearOff();

  _CraftIngredient call(
      {required int count, required int id, required String name}) {
    return _CraftIngredient(
      count: count,
      id: id,
      name: name,
    );
  }

  CraftIngredient fromJson(Map<String, Object?> json) {
    return CraftIngredient.fromJson(json);
  }
}

/// @nodoc
const $CraftIngredient = _$CraftIngredientTearOff();

/// @nodoc
mixin _$CraftIngredient {
  int get count => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CraftIngredientCopyWith<CraftIngredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CraftIngredientCopyWith<$Res> {
  factory $CraftIngredientCopyWith(
          CraftIngredient value, $Res Function(CraftIngredient) then) =
      _$CraftIngredientCopyWithImpl<$Res>;
  $Res call({int count, int id, String name});
}

/// @nodoc
class _$CraftIngredientCopyWithImpl<$Res>
    implements $CraftIngredientCopyWith<$Res> {
  _$CraftIngredientCopyWithImpl(this._value, this._then);

  final CraftIngredient _value;
  // ignore: unused_field
  final $Res Function(CraftIngredient) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CraftIngredientCopyWith<$Res>
    implements $CraftIngredientCopyWith<$Res> {
  factory _$CraftIngredientCopyWith(
          _CraftIngredient value, $Res Function(_CraftIngredient) then) =
      __$CraftIngredientCopyWithImpl<$Res>;
  @override
  $Res call({int count, int id, String name});
}

/// @nodoc
class __$CraftIngredientCopyWithImpl<$Res>
    extends _$CraftIngredientCopyWithImpl<$Res>
    implements _$CraftIngredientCopyWith<$Res> {
  __$CraftIngredientCopyWithImpl(
      _CraftIngredient _value, $Res Function(_CraftIngredient) _then)
      : super(_value, (v) => _then(v as _CraftIngredient));

  @override
  _CraftIngredient get _value => super._value as _CraftIngredient;

  @override
  $Res call({
    Object? count = freezed,
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_CraftIngredient(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CraftIngredient implements _CraftIngredient {
  _$_CraftIngredient(
      {required this.count, required this.id, required this.name});

  factory _$_CraftIngredient.fromJson(Map<String, dynamic> json) =>
      _$$_CraftIngredientFromJson(json);

  @override
  final int count;
  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'CraftIngredient(count: $count, id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CraftIngredient &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count, id, name);

  @JsonKey(ignore: true)
  @override
  _$CraftIngredientCopyWith<_CraftIngredient> get copyWith =>
      __$CraftIngredientCopyWithImpl<_CraftIngredient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CraftIngredientToJson(this);
  }
}

abstract class _CraftIngredient implements CraftIngredient {
  factory _CraftIngredient(
      {required int count,
      required int id,
      required String name}) = _$_CraftIngredient;

  factory _CraftIngredient.fromJson(Map<String, dynamic> json) =
      _$_CraftIngredient.fromJson;

  @override
  int get count;
  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$CraftIngredientCopyWith<_CraftIngredient> get copyWith =>
      throw _privateConstructorUsedError;
}
