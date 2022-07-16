// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlayerSearchState {
  String get playerName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String playerName) initial,
    required TResult Function(String playerName) loading,
    required TResult Function(
            String playerName, PlayerSearchResult results, bool hasReachedMax)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String playerName)? initial,
    TResult Function(String playerName)? loading,
    TResult Function(
            String playerName, PlayerSearchResult results, bool hasReachedMax)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String playerName)? initial,
    TResult Function(String playerName)? loading,
    TResult Function(
            String playerName, PlayerSearchResult results, bool hasReachedMax)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerSearchStateInitial value) initial,
    required TResult Function(PlayerSearchStateLoading value) loading,
    required TResult Function(PlayerSearchStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayerSearchStateInitial value)? initial,
    TResult Function(PlayerSearchStateLoading value)? loading,
    TResult Function(PlayerSearchStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerSearchStateInitial value)? initial,
    TResult Function(PlayerSearchStateLoading value)? loading,
    TResult Function(PlayerSearchStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerSearchStateCopyWith<PlayerSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerSearchStateCopyWith<$Res> {
  factory $PlayerSearchStateCopyWith(
          PlayerSearchState value, $Res Function(PlayerSearchState) then) =
      _$PlayerSearchStateCopyWithImpl<$Res>;
  $Res call({String playerName});
}

/// @nodoc
class _$PlayerSearchStateCopyWithImpl<$Res>
    implements $PlayerSearchStateCopyWith<$Res> {
  _$PlayerSearchStateCopyWithImpl(this._value, this._then);

  final PlayerSearchState _value;
  // ignore: unused_field
  final $Res Function(PlayerSearchState) _then;

  @override
  $Res call({
    Object? playerName = freezed,
  }) {
    return _then(_value.copyWith(
      playerName: playerName == freezed
          ? _value.playerName
          : playerName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$PlayerSearchStateInitialCopyWith<$Res>
    implements $PlayerSearchStateCopyWith<$Res> {
  factory _$$PlayerSearchStateInitialCopyWith(_$PlayerSearchStateInitial value,
          $Res Function(_$PlayerSearchStateInitial) then) =
      __$$PlayerSearchStateInitialCopyWithImpl<$Res>;
  @override
  $Res call({String playerName});
}

/// @nodoc
class __$$PlayerSearchStateInitialCopyWithImpl<$Res>
    extends _$PlayerSearchStateCopyWithImpl<$Res>
    implements _$$PlayerSearchStateInitialCopyWith<$Res> {
  __$$PlayerSearchStateInitialCopyWithImpl(_$PlayerSearchStateInitial _value,
      $Res Function(_$PlayerSearchStateInitial) _then)
      : super(_value, (v) => _then(v as _$PlayerSearchStateInitial));

  @override
  _$PlayerSearchStateInitial get _value =>
      super._value as _$PlayerSearchStateInitial;

  @override
  $Res call({
    Object? playerName = freezed,
  }) {
    return _then(_$PlayerSearchStateInitial(
      playerName: playerName == freezed
          ? _value.playerName
          : playerName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlayerSearchStateInitial implements PlayerSearchStateInitial {
  const _$PlayerSearchStateInitial({required this.playerName});

  @override
  final String playerName;

  @override
  String toString() {
    return 'PlayerSearchState.initial(playerName: $playerName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerSearchStateInitial &&
            const DeepCollectionEquality()
                .equals(other.playerName, playerName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(playerName));

  @JsonKey(ignore: true)
  @override
  _$$PlayerSearchStateInitialCopyWith<_$PlayerSearchStateInitial>
      get copyWith =>
          __$$PlayerSearchStateInitialCopyWithImpl<_$PlayerSearchStateInitial>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String playerName) initial,
    required TResult Function(String playerName) loading,
    required TResult Function(
            String playerName, PlayerSearchResult results, bool hasReachedMax)
        loaded,
  }) {
    return initial(playerName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String playerName)? initial,
    TResult Function(String playerName)? loading,
    TResult Function(
            String playerName, PlayerSearchResult results, bool hasReachedMax)?
        loaded,
  }) {
    return initial?.call(playerName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String playerName)? initial,
    TResult Function(String playerName)? loading,
    TResult Function(
            String playerName, PlayerSearchResult results, bool hasReachedMax)?
        loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(playerName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerSearchStateInitial value) initial,
    required TResult Function(PlayerSearchStateLoading value) loading,
    required TResult Function(PlayerSearchStateLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayerSearchStateInitial value)? initial,
    TResult Function(PlayerSearchStateLoading value)? loading,
    TResult Function(PlayerSearchStateLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerSearchStateInitial value)? initial,
    TResult Function(PlayerSearchStateLoading value)? loading,
    TResult Function(PlayerSearchStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PlayerSearchStateInitial implements PlayerSearchState {
  const factory PlayerSearchStateInitial({required final String playerName}) =
      _$PlayerSearchStateInitial;

  @override
  String get playerName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$PlayerSearchStateInitialCopyWith<_$PlayerSearchStateInitial>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayerSearchStateLoadingCopyWith<$Res>
    implements $PlayerSearchStateCopyWith<$Res> {
  factory _$$PlayerSearchStateLoadingCopyWith(_$PlayerSearchStateLoading value,
          $Res Function(_$PlayerSearchStateLoading) then) =
      __$$PlayerSearchStateLoadingCopyWithImpl<$Res>;
  @override
  $Res call({String playerName});
}

/// @nodoc
class __$$PlayerSearchStateLoadingCopyWithImpl<$Res>
    extends _$PlayerSearchStateCopyWithImpl<$Res>
    implements _$$PlayerSearchStateLoadingCopyWith<$Res> {
  __$$PlayerSearchStateLoadingCopyWithImpl(_$PlayerSearchStateLoading _value,
      $Res Function(_$PlayerSearchStateLoading) _then)
      : super(_value, (v) => _then(v as _$PlayerSearchStateLoading));

  @override
  _$PlayerSearchStateLoading get _value =>
      super._value as _$PlayerSearchStateLoading;

  @override
  $Res call({
    Object? playerName = freezed,
  }) {
    return _then(_$PlayerSearchStateLoading(
      playerName: playerName == freezed
          ? _value.playerName
          : playerName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlayerSearchStateLoading implements PlayerSearchStateLoading {
  const _$PlayerSearchStateLoading({required this.playerName});

  @override
  final String playerName;

  @override
  String toString() {
    return 'PlayerSearchState.loading(playerName: $playerName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerSearchStateLoading &&
            const DeepCollectionEquality()
                .equals(other.playerName, playerName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(playerName));

  @JsonKey(ignore: true)
  @override
  _$$PlayerSearchStateLoadingCopyWith<_$PlayerSearchStateLoading>
      get copyWith =>
          __$$PlayerSearchStateLoadingCopyWithImpl<_$PlayerSearchStateLoading>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String playerName) initial,
    required TResult Function(String playerName) loading,
    required TResult Function(
            String playerName, PlayerSearchResult results, bool hasReachedMax)
        loaded,
  }) {
    return loading(playerName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String playerName)? initial,
    TResult Function(String playerName)? loading,
    TResult Function(
            String playerName, PlayerSearchResult results, bool hasReachedMax)?
        loaded,
  }) {
    return loading?.call(playerName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String playerName)? initial,
    TResult Function(String playerName)? loading,
    TResult Function(
            String playerName, PlayerSearchResult results, bool hasReachedMax)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(playerName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerSearchStateInitial value) initial,
    required TResult Function(PlayerSearchStateLoading value) loading,
    required TResult Function(PlayerSearchStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayerSearchStateInitial value)? initial,
    TResult Function(PlayerSearchStateLoading value)? loading,
    TResult Function(PlayerSearchStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerSearchStateInitial value)? initial,
    TResult Function(PlayerSearchStateLoading value)? loading,
    TResult Function(PlayerSearchStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PlayerSearchStateLoading implements PlayerSearchState {
  const factory PlayerSearchStateLoading({required final String playerName}) =
      _$PlayerSearchStateLoading;

  @override
  String get playerName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$PlayerSearchStateLoadingCopyWith<_$PlayerSearchStateLoading>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayerSearchStateLoadedCopyWith<$Res>
    implements $PlayerSearchStateCopyWith<$Res> {
  factory _$$PlayerSearchStateLoadedCopyWith(_$PlayerSearchStateLoaded value,
          $Res Function(_$PlayerSearchStateLoaded) then) =
      __$$PlayerSearchStateLoadedCopyWithImpl<$Res>;
  @override
  $Res call(
      {String playerName, PlayerSearchResult results, bool hasReachedMax});

  $PlayerSearchResultCopyWith<$Res> get results;
}

/// @nodoc
class __$$PlayerSearchStateLoadedCopyWithImpl<$Res>
    extends _$PlayerSearchStateCopyWithImpl<$Res>
    implements _$$PlayerSearchStateLoadedCopyWith<$Res> {
  __$$PlayerSearchStateLoadedCopyWithImpl(_$PlayerSearchStateLoaded _value,
      $Res Function(_$PlayerSearchStateLoaded) _then)
      : super(_value, (v) => _then(v as _$PlayerSearchStateLoaded));

  @override
  _$PlayerSearchStateLoaded get _value =>
      super._value as _$PlayerSearchStateLoaded;

  @override
  $Res call({
    Object? playerName = freezed,
    Object? results = freezed,
    Object? hasReachedMax = freezed,
  }) {
    return _then(_$PlayerSearchStateLoaded(
      playerName: playerName == freezed
          ? _value.playerName
          : playerName // ignore: cast_nullable_to_non_nullable
              as String,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as PlayerSearchResult,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $PlayerSearchResultCopyWith<$Res> get results {
    return $PlayerSearchResultCopyWith<$Res>(_value.results, (value) {
      return _then(_value.copyWith(results: value));
    });
  }
}

/// @nodoc

class _$PlayerSearchStateLoaded implements PlayerSearchStateLoaded {
  const _$PlayerSearchStateLoaded(
      {required this.playerName,
      required this.results,
      required this.hasReachedMax});

  @override
  final String playerName;
  @override
  final PlayerSearchResult results;
  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'PlayerSearchState.loaded(playerName: $playerName, results: $results, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerSearchStateLoaded &&
            const DeepCollectionEquality()
                .equals(other.playerName, playerName) &&
            const DeepCollectionEquality().equals(other.results, results) &&
            const DeepCollectionEquality()
                .equals(other.hasReachedMax, hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(playerName),
      const DeepCollectionEquality().hash(results),
      const DeepCollectionEquality().hash(hasReachedMax));

  @JsonKey(ignore: true)
  @override
  _$$PlayerSearchStateLoadedCopyWith<_$PlayerSearchStateLoaded> get copyWith =>
      __$$PlayerSearchStateLoadedCopyWithImpl<_$PlayerSearchStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String playerName) initial,
    required TResult Function(String playerName) loading,
    required TResult Function(
            String playerName, PlayerSearchResult results, bool hasReachedMax)
        loaded,
  }) {
    return loaded(playerName, results, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String playerName)? initial,
    TResult Function(String playerName)? loading,
    TResult Function(
            String playerName, PlayerSearchResult results, bool hasReachedMax)?
        loaded,
  }) {
    return loaded?.call(playerName, results, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String playerName)? initial,
    TResult Function(String playerName)? loading,
    TResult Function(
            String playerName, PlayerSearchResult results, bool hasReachedMax)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(playerName, results, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerSearchStateInitial value) initial,
    required TResult Function(PlayerSearchStateLoading value) loading,
    required TResult Function(PlayerSearchStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlayerSearchStateInitial value)? initial,
    TResult Function(PlayerSearchStateLoading value)? loading,
    TResult Function(PlayerSearchStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerSearchStateInitial value)? initial,
    TResult Function(PlayerSearchStateLoading value)? loading,
    TResult Function(PlayerSearchStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class PlayerSearchStateLoaded implements PlayerSearchState {
  const factory PlayerSearchStateLoaded(
      {required final String playerName,
      required final PlayerSearchResult results,
      required final bool hasReachedMax}) = _$PlayerSearchStateLoaded;

  @override
  String get playerName => throw _privateConstructorUsedError;
  PlayerSearchResult get results => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$PlayerSearchStateLoadedCopyWith<_$PlayerSearchStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
