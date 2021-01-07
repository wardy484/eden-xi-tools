// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'favouriteslist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Favouriteable _$FavouriteableFromJson(Map<String, dynamic> json) {
  return _Favouritable.fromJson(json);
}

/// @nodoc
class _$FavouriteableTearOff {
  const _$FavouriteableTearOff();

// ignore: unused_element
  _Favouritable call() {
    return _Favouritable();
  }

// ignore: unused_element
  Favouriteable fromJson(Map<String, Object> json) {
    return Favouriteable.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Favouriteable = _$FavouriteableTearOff();

/// @nodoc
mixin _$Favouriteable {
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $FavouriteableCopyWith<$Res> {
  factory $FavouriteableCopyWith(
          Favouriteable value, $Res Function(Favouriteable) then) =
      _$FavouriteableCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavouriteableCopyWithImpl<$Res>
    implements $FavouriteableCopyWith<$Res> {
  _$FavouriteableCopyWithImpl(this._value, this._then);

  final Favouriteable _value;
  // ignore: unused_field
  final $Res Function(Favouriteable) _then;
}

/// @nodoc
abstract class _$FavouritableCopyWith<$Res> {
  factory _$FavouritableCopyWith(
          _Favouritable value, $Res Function(_Favouritable) then) =
      __$FavouritableCopyWithImpl<$Res>;
}

/// @nodoc
class __$FavouritableCopyWithImpl<$Res>
    extends _$FavouriteableCopyWithImpl<$Res>
    implements _$FavouritableCopyWith<$Res> {
  __$FavouritableCopyWithImpl(
      _Favouritable _value, $Res Function(_Favouritable) _then)
      : super(_value, (v) => _then(v as _Favouritable));

  @override
  _Favouritable get _value => super._value as _Favouritable;
}

@JsonSerializable()

/// @nodoc
class _$_Favouritable with DiagnosticableTreeMixin implements _Favouritable {
  _$_Favouritable();

  factory _$_Favouritable.fromJson(Map<String, dynamic> json) =>
      _$_$_FavouritableFromJson(json);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Favouriteable()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Favouriteable'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Favouritable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FavouritableToJson(this);
  }
}

abstract class _Favouritable implements Favouriteable {
  factory _Favouritable() = _$_Favouritable;

  factory _Favouritable.fromJson(Map<String, dynamic> json) =
      _$_Favouritable.fromJson;
}
