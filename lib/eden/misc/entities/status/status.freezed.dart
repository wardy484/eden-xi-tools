// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StatusTearOff {
  const _$StatusTearOff();

  _Status call({required bool online, required int players}) {
    return _Status(
      online: online,
      players: players,
    );
  }
}

/// @nodoc
const $Status = _$StatusTearOff();

/// @nodoc
mixin _$Status {
  bool get online => throw _privateConstructorUsedError;
  int get players => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatusCopyWith<Status> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res>;
  $Res call({bool online, int players});
}

/// @nodoc
class _$StatusCopyWithImpl<$Res> implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  final Status _value;
  // ignore: unused_field
  final $Res Function(Status) _then;

  @override
  $Res call({
    Object? online = freezed,
    Object? players = freezed,
  }) {
    return _then(_value.copyWith(
      online: online == freezed
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool,
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$StatusCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$StatusCopyWith(_Status value, $Res Function(_Status) then) =
      __$StatusCopyWithImpl<$Res>;
  @override
  $Res call({bool online, int players});
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
    Object? online = freezed,
    Object? players = freezed,
  }) {
    return _then(_Status(
      online: online == freezed
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool,
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Status implements _Status {
  _$_Status({required this.online, required this.players});

  @override
  final bool online;
  @override
  final int players;

  @override
  String toString() {
    return 'Status(online: $online, players: $players)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Status &&
            (identical(other.online, online) || other.online == online) &&
            (identical(other.players, players) || other.players == players));
  }

  @override
  int get hashCode => Object.hash(runtimeType, online, players);

  @JsonKey(ignore: true)
  @override
  _$StatusCopyWith<_Status> get copyWith =>
      __$StatusCopyWithImpl<_Status>(this, _$identity);
}

abstract class _Status implements Status {
  factory _Status({required bool online, required int players}) = _$_Status;

  @override
  bool get online;
  @override
  int get players;
  @override
  @JsonKey(ignore: true)
  _$StatusCopyWith<_Status> get copyWith => throw _privateConstructorUsedError;
}
