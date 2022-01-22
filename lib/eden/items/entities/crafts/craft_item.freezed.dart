// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'craft_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CraftItem _$CraftItemFromJson(Map<String, dynamic> json) {
  return _CraftItem.fromJson(json);
}

/// @nodoc
class _$CraftItemTearOff {
  const _$CraftItemTearOff();

  _CraftItem call({required String craft, required int level}) {
    return _CraftItem(
      craft: craft,
      level: level,
    );
  }

  CraftItem fromJson(Map<String, Object?> json) {
    return CraftItem.fromJson(json);
  }
}

/// @nodoc
const $CraftItem = _$CraftItemTearOff();

/// @nodoc
mixin _$CraftItem {
  String get craft => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CraftItemCopyWith<CraftItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CraftItemCopyWith<$Res> {
  factory $CraftItemCopyWith(CraftItem value, $Res Function(CraftItem) then) =
      _$CraftItemCopyWithImpl<$Res>;
  $Res call({String craft, int level});
}

/// @nodoc
class _$CraftItemCopyWithImpl<$Res> implements $CraftItemCopyWith<$Res> {
  _$CraftItemCopyWithImpl(this._value, this._then);

  final CraftItem _value;
  // ignore: unused_field
  final $Res Function(CraftItem) _then;

  @override
  $Res call({
    Object? craft = freezed,
    Object? level = freezed,
  }) {
    return _then(_value.copyWith(
      craft: craft == freezed
          ? _value.craft
          : craft // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CraftItemCopyWith<$Res> implements $CraftItemCopyWith<$Res> {
  factory _$CraftItemCopyWith(
          _CraftItem value, $Res Function(_CraftItem) then) =
      __$CraftItemCopyWithImpl<$Res>;
  @override
  $Res call({String craft, int level});
}

/// @nodoc
class __$CraftItemCopyWithImpl<$Res> extends _$CraftItemCopyWithImpl<$Res>
    implements _$CraftItemCopyWith<$Res> {
  __$CraftItemCopyWithImpl(_CraftItem _value, $Res Function(_CraftItem) _then)
      : super(_value, (v) => _then(v as _CraftItem));

  @override
  _CraftItem get _value => super._value as _CraftItem;

  @override
  $Res call({
    Object? craft = freezed,
    Object? level = freezed,
  }) {
    return _then(_CraftItem(
      craft: craft == freezed
          ? _value.craft
          : craft // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CraftItem implements _CraftItem {
  _$_CraftItem({required this.craft, required this.level});

  factory _$_CraftItem.fromJson(Map<String, dynamic> json) =>
      _$$_CraftItemFromJson(json);

  @override
  final String craft;
  @override
  final int level;

  @override
  String toString() {
    return 'CraftItem(craft: $craft, level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CraftItem &&
            (identical(other.craft, craft) || other.craft == craft) &&
            (identical(other.level, level) || other.level == level));
  }

  @override
  int get hashCode => Object.hash(runtimeType, craft, level);

  @JsonKey(ignore: true)
  @override
  _$CraftItemCopyWith<_CraftItem> get copyWith =>
      __$CraftItemCopyWithImpl<_CraftItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CraftItemToJson(this);
  }
}

abstract class _CraftItem implements CraftItem {
  factory _CraftItem({required String craft, required int level}) =
      _$_CraftItem;

  factory _CraftItem.fromJson(Map<String, dynamic> json) =
      _$_CraftItem.fromJson;

  @override
  String get craft;
  @override
  int get level;
  @override
  @JsonKey(ignore: true)
  _$CraftItemCopyWith<_CraftItem> get copyWith =>
      throw _privateConstructorUsedError;
}
