// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'server_status_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ServerStatusEventTearOff {
  const _$ServerStatusEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }

// ignore: unused_element
  _Fetched fetched() {
    return const _Fetched();
  }
}

/// @nodoc
// ignore: unused_element
const $ServerStatusEvent = _$ServerStatusEventTearOff();

/// @nodoc
mixin _$ServerStatusEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult fetched(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult fetched(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult fetched(_Fetched value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult fetched(_Fetched value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ServerStatusEventCopyWith<$Res> {
  factory $ServerStatusEventCopyWith(
          ServerStatusEvent value, $Res Function(ServerStatusEvent) then) =
      _$ServerStatusEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerStatusEventCopyWithImpl<$Res>
    implements $ServerStatusEventCopyWith<$Res> {
  _$ServerStatusEventCopyWithImpl(this._value, this._then);

  final ServerStatusEvent _value;
  // ignore: unused_field
  final $Res Function(ServerStatusEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ServerStatusEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ServerStatusEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult fetched(),
  }) {
    assert(started != null);
    assert(fetched != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult fetched(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult fetched(_Fetched value),
  }) {
    assert(started != null);
    assert(fetched != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult fetched(_Fetched value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ServerStatusEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$FetchedCopyWith<$Res> {
  factory _$FetchedCopyWith(_Fetched value, $Res Function(_Fetched) then) =
      __$FetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchedCopyWithImpl<$Res> extends _$ServerStatusEventCopyWithImpl<$Res>
    implements _$FetchedCopyWith<$Res> {
  __$FetchedCopyWithImpl(_Fetched _value, $Res Function(_Fetched) _then)
      : super(_value, (v) => _then(v as _Fetched));

  @override
  _Fetched get _value => super._value as _Fetched;
}

/// @nodoc
class _$_Fetched implements _Fetched {
  const _$_Fetched();

  @override
  String toString() {
    return 'ServerStatusEvent.fetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Fetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult fetched(),
  }) {
    assert(started != null);
    assert(fetched != null);
    return fetched();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult fetched(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetched != null) {
      return fetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult fetched(_Fetched value),
  }) {
    assert(started != null);
    assert(fetched != null);
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult fetched(_Fetched value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _Fetched implements ServerStatusEvent {
  const factory _Fetched() = _$_Fetched;
}

/// @nodoc
class _$ServerStatusStateTearOff {
  const _$ServerStatusStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Offline offline() {
    return const _Offline();
  }

// ignore: unused_element
  _Online online() {
    return const _Online();
  }
}

/// @nodoc
// ignore: unused_element
const $ServerStatusState = _$ServerStatusStateTearOff();

/// @nodoc
mixin _$ServerStatusState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult offline(),
    @required TResult online(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult offline(),
    TResult online(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult offline(_Offline value),
    @required TResult online(_Online value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult offline(_Offline value),
    TResult online(_Online value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ServerStatusStateCopyWith<$Res> {
  factory $ServerStatusStateCopyWith(
          ServerStatusState value, $Res Function(ServerStatusState) then) =
      _$ServerStatusStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerStatusStateCopyWithImpl<$Res>
    implements $ServerStatusStateCopyWith<$Res> {
  _$ServerStatusStateCopyWithImpl(this._value, this._then);

  final ServerStatusState _value;
  // ignore: unused_field
  final $Res Function(ServerStatusState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ServerStatusStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ServerStatusState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult offline(),
    @required TResult online(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(offline != null);
    assert(online != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult offline(),
    TResult online(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult offline(_Offline value),
    @required TResult online(_Online value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(offline != null);
    assert(online != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult offline(_Offline value),
    TResult online(_Online value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ServerStatusState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ServerStatusStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ServerStatusState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult offline(),
    @required TResult online(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(offline != null);
    assert(online != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult offline(),
    TResult online(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult offline(_Offline value),
    @required TResult online(_Online value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(offline != null);
    assert(online != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult offline(_Offline value),
    TResult online(_Online value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ServerStatusState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$OfflineCopyWith<$Res> {
  factory _$OfflineCopyWith(_Offline value, $Res Function(_Offline) then) =
      __$OfflineCopyWithImpl<$Res>;
}

/// @nodoc
class __$OfflineCopyWithImpl<$Res> extends _$ServerStatusStateCopyWithImpl<$Res>
    implements _$OfflineCopyWith<$Res> {
  __$OfflineCopyWithImpl(_Offline _value, $Res Function(_Offline) _then)
      : super(_value, (v) => _then(v as _Offline));

  @override
  _Offline get _value => super._value as _Offline;
}

/// @nodoc
class _$_Offline implements _Offline {
  const _$_Offline();

  @override
  String toString() {
    return 'ServerStatusState.offline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Offline);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult offline(),
    @required TResult online(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(offline != null);
    assert(online != null);
    return offline();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult offline(),
    TResult online(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (offline != null) {
      return offline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult offline(_Offline value),
    @required TResult online(_Online value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(offline != null);
    assert(online != null);
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult offline(_Offline value),
    TResult online(_Online value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class _Offline implements ServerStatusState {
  const factory _Offline() = _$_Offline;
}

/// @nodoc
abstract class _$OnlineCopyWith<$Res> {
  factory _$OnlineCopyWith(_Online value, $Res Function(_Online) then) =
      __$OnlineCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnlineCopyWithImpl<$Res> extends _$ServerStatusStateCopyWithImpl<$Res>
    implements _$OnlineCopyWith<$Res> {
  __$OnlineCopyWithImpl(_Online _value, $Res Function(_Online) _then)
      : super(_value, (v) => _then(v as _Online));

  @override
  _Online get _value => super._value as _Online;
}

/// @nodoc
class _$_Online implements _Online {
  const _$_Online();

  @override
  String toString() {
    return 'ServerStatusState.online()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Online);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult offline(),
    @required TResult online(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(offline != null);
    assert(online != null);
    return online();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult offline(),
    TResult online(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (online != null) {
      return online();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult offline(_Offline value),
    @required TResult online(_Online value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(offline != null);
    assert(online != null);
    return online(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult offline(_Offline value),
    TResult online(_Online value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (online != null) {
      return online(this);
    }
    return orElse();
  }
}

abstract class _Online implements ServerStatusState {
  const factory _Online() = _$_Online;
}
