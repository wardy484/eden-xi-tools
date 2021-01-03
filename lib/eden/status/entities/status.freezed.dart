// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StatusTearOff {
  const _$StatusTearOff();

// ignore: unused_element
  _Status call({bool online}) {
    return _Status(
      online: online,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Status = _$StatusTearOff();

/// @nodoc
mixin _$Status {
  bool get online;

  $StatusCopyWith<Status> get copyWith;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res>;
  $Res call({bool online});
}

/// @nodoc
class _$StatusCopyWithImpl<$Res> implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  final Status _value;
  // ignore: unused_field
  final $Res Function(Status) _then;

  @override
  $Res call({
    Object online = freezed,
  }) {
    return _then(_value.copyWith(
      online: online == freezed ? _value.online : online as bool,
    ));
  }
}

/// @nodoc
abstract class _$StatusCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$StatusCopyWith(_Status value, $Res Function(_Status) then) =
      __$StatusCopyWithImpl<$Res>;
  @override
  $Res call({bool online});
}

/// @nodoc
class __$StatusCopyWithImpl<$Res> extends _$StatusCopyWithImpl<$Res>
    implements _$StatusCopyWith<$Res> {
  __$StatusCopyWithImpl(_Status _value, $Res Function(_Status) _then)
      : super(_value, (v) => _then(v as _Status));

  @override
  _Status get _value => super._value as _Status;

  @override
  $Res call({
    Object online = freezed,
  }) {
    return _then(_Status(
      online: online == freezed ? _value.online : online as bool,
    ));
  }
}

/// @nodoc
class _$_Status implements _Status {
  _$_Status({this.online});

  @override
  final bool online;

  @override
  String toString() {
    return 'Status(online: $online)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Status &&
            (identical(other.online, online) ||
                const DeepCollectionEquality().equals(other.online, online)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(online);

  @override
  _$StatusCopyWith<_Status> get copyWith =>
      __$StatusCopyWithImpl<_Status>(this, _$identity);
}

abstract class _Status implements Status {
  factory _Status({bool online}) = _$_Status;

  @override
  bool get online;
  @override
  _$StatusCopyWith<_Status> get copyWith;
}
