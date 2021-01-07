// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'favourites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FavouritesEventTearOff {
  const _$FavouritesEventTearOff();

// ignore: unused_element
  _Started<T> started<T>() {
    return _Started<T>();
  }

// ignore: unused_element
  _Saved<T> saved<T>(T item) {
    return _Saved<T>(
      item,
    );
  }

// ignore: unused_element
  _Removed<T> removed<T>(T item) {
    return _Removed<T>(
      item,
    );
  }

// ignore: unused_element
  _Sorted<T> sorted<T>(int oldIndex, int newIndex) {
    return _Sorted<T>(
      oldIndex,
      newIndex,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FavouritesEvent = _$FavouritesEventTearOff();

/// @nodoc
mixin _$FavouritesEvent<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult saved(T item),
    @required TResult removed(T item),
    @required TResult sorted(int oldIndex, int newIndex),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult saved(T item),
    TResult removed(T item),
    TResult sorted(int oldIndex, int newIndex),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started<T> value),
    @required TResult saved(_Saved<T> value),
    @required TResult removed(_Removed<T> value),
    @required TResult sorted(_Sorted<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started<T> value),
    TResult saved(_Saved<T> value),
    TResult removed(_Removed<T> value),
    TResult sorted(_Sorted<T> value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FavouritesEventCopyWith<T, $Res> {
  factory $FavouritesEventCopyWith(
          FavouritesEvent<T> value, $Res Function(FavouritesEvent<T>) then) =
      _$FavouritesEventCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$FavouritesEventCopyWithImpl<T, $Res>
    implements $FavouritesEventCopyWith<T, $Res> {
  _$FavouritesEventCopyWithImpl(this._value, this._then);

  final FavouritesEvent<T> _value;
  // ignore: unused_field
  final $Res Function(FavouritesEvent<T>) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<T, $Res> {
  factory _$StartedCopyWith(
          _Started<T> value, $Res Function(_Started<T>) then) =
      __$StartedCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<T, $Res>
    extends _$FavouritesEventCopyWithImpl<T, $Res>
    implements _$StartedCopyWith<T, $Res> {
  __$StartedCopyWithImpl(_Started<T> _value, $Res Function(_Started<T>) _then)
      : super(_value, (v) => _then(v as _Started<T>));

  @override
  _Started<T> get _value => super._value as _Started<T>;
}

/// @nodoc
class _$_Started<T> implements _Started<T> {
  const _$_Started();

  @override
  String toString() {
    return 'FavouritesEvent<$T>.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult saved(T item),
    @required TResult removed(T item),
    @required TResult sorted(int oldIndex, int newIndex),
  }) {
    assert(started != null);
    assert(saved != null);
    assert(removed != null);
    assert(sorted != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult saved(T item),
    TResult removed(T item),
    TResult sorted(int oldIndex, int newIndex),
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
    @required TResult started(_Started<T> value),
    @required TResult saved(_Saved<T> value),
    @required TResult removed(_Removed<T> value),
    @required TResult sorted(_Sorted<T> value),
  }) {
    assert(started != null);
    assert(saved != null);
    assert(removed != null);
    assert(sorted != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started<T> value),
    TResult saved(_Saved<T> value),
    TResult removed(_Removed<T> value),
    TResult sorted(_Sorted<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started<T> implements FavouritesEvent<T> {
  const factory _Started() = _$_Started<T>;
}

/// @nodoc
abstract class _$SavedCopyWith<T, $Res> {
  factory _$SavedCopyWith(_Saved<T> value, $Res Function(_Saved<T>) then) =
      __$SavedCopyWithImpl<T, $Res>;
  $Res call({T item});
}

/// @nodoc
class __$SavedCopyWithImpl<T, $Res>
    extends _$FavouritesEventCopyWithImpl<T, $Res>
    implements _$SavedCopyWith<T, $Res> {
  __$SavedCopyWithImpl(_Saved<T> _value, $Res Function(_Saved<T>) _then)
      : super(_value, (v) => _then(v as _Saved<T>));

  @override
  _Saved<T> get _value => super._value as _Saved<T>;

  @override
  $Res call({
    Object item = freezed,
  }) {
    return _then(_Saved<T>(
      item == freezed ? _value.item : item as T,
    ));
  }
}

/// @nodoc
class _$_Saved<T> implements _Saved<T> {
  const _$_Saved(this.item) : assert(item != null);

  @override
  final T item;

  @override
  String toString() {
    return 'FavouritesEvent<$T>.saved(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Saved<T> &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(item);

  @override
  _$SavedCopyWith<T, _Saved<T>> get copyWith =>
      __$SavedCopyWithImpl<T, _Saved<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult saved(T item),
    @required TResult removed(T item),
    @required TResult sorted(int oldIndex, int newIndex),
  }) {
    assert(started != null);
    assert(saved != null);
    assert(removed != null);
    assert(sorted != null);
    return saved(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult saved(T item),
    TResult removed(T item),
    TResult sorted(int oldIndex, int newIndex),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started<T> value),
    @required TResult saved(_Saved<T> value),
    @required TResult removed(_Removed<T> value),
    @required TResult sorted(_Sorted<T> value),
  }) {
    assert(started != null);
    assert(saved != null);
    assert(removed != null);
    assert(sorted != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started<T> value),
    TResult saved(_Saved<T> value),
    TResult removed(_Removed<T> value),
    TResult sorted(_Sorted<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved<T> implements FavouritesEvent<T> {
  const factory _Saved(T item) = _$_Saved<T>;

  T get item;
  _$SavedCopyWith<T, _Saved<T>> get copyWith;
}

/// @nodoc
abstract class _$RemovedCopyWith<T, $Res> {
  factory _$RemovedCopyWith(
          _Removed<T> value, $Res Function(_Removed<T>) then) =
      __$RemovedCopyWithImpl<T, $Res>;
  $Res call({T item});
}

/// @nodoc
class __$RemovedCopyWithImpl<T, $Res>
    extends _$FavouritesEventCopyWithImpl<T, $Res>
    implements _$RemovedCopyWith<T, $Res> {
  __$RemovedCopyWithImpl(_Removed<T> _value, $Res Function(_Removed<T>) _then)
      : super(_value, (v) => _then(v as _Removed<T>));

  @override
  _Removed<T> get _value => super._value as _Removed<T>;

  @override
  $Res call({
    Object item = freezed,
  }) {
    return _then(_Removed<T>(
      item == freezed ? _value.item : item as T,
    ));
  }
}

/// @nodoc
class _$_Removed<T> implements _Removed<T> {
  const _$_Removed(this.item) : assert(item != null);

  @override
  final T item;

  @override
  String toString() {
    return 'FavouritesEvent<$T>.removed(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Removed<T> &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(item);

  @override
  _$RemovedCopyWith<T, _Removed<T>> get copyWith =>
      __$RemovedCopyWithImpl<T, _Removed<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult saved(T item),
    @required TResult removed(T item),
    @required TResult sorted(int oldIndex, int newIndex),
  }) {
    assert(started != null);
    assert(saved != null);
    assert(removed != null);
    assert(sorted != null);
    return removed(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult saved(T item),
    TResult removed(T item),
    TResult sorted(int oldIndex, int newIndex),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removed != null) {
      return removed(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started<T> value),
    @required TResult saved(_Saved<T> value),
    @required TResult removed(_Removed<T> value),
    @required TResult sorted(_Sorted<T> value),
  }) {
    assert(started != null);
    assert(saved != null);
    assert(removed != null);
    assert(sorted != null);
    return removed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started<T> value),
    TResult saved(_Saved<T> value),
    TResult removed(_Removed<T> value),
    TResult sorted(_Sorted<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removed != null) {
      return removed(this);
    }
    return orElse();
  }
}

abstract class _Removed<T> implements FavouritesEvent<T> {
  const factory _Removed(T item) = _$_Removed<T>;

  T get item;
  _$RemovedCopyWith<T, _Removed<T>> get copyWith;
}

/// @nodoc
abstract class _$SortedCopyWith<T, $Res> {
  factory _$SortedCopyWith(_Sorted<T> value, $Res Function(_Sorted<T>) then) =
      __$SortedCopyWithImpl<T, $Res>;
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class __$SortedCopyWithImpl<T, $Res>
    extends _$FavouritesEventCopyWithImpl<T, $Res>
    implements _$SortedCopyWith<T, $Res> {
  __$SortedCopyWithImpl(_Sorted<T> _value, $Res Function(_Sorted<T>) _then)
      : super(_value, (v) => _then(v as _Sorted<T>));

  @override
  _Sorted<T> get _value => super._value as _Sorted<T>;

  @override
  $Res call({
    Object oldIndex = freezed,
    Object newIndex = freezed,
  }) {
    return _then(_Sorted<T>(
      oldIndex == freezed ? _value.oldIndex : oldIndex as int,
      newIndex == freezed ? _value.newIndex : newIndex as int,
    ));
  }
}

/// @nodoc
class _$_Sorted<T> implements _Sorted<T> {
  const _$_Sorted(this.oldIndex, this.newIndex)
      : assert(oldIndex != null),
        assert(newIndex != null);

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString() {
    return 'FavouritesEvent<$T>.sorted(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Sorted<T> &&
            (identical(other.oldIndex, oldIndex) ||
                const DeepCollectionEquality()
                    .equals(other.oldIndex, oldIndex)) &&
            (identical(other.newIndex, newIndex) ||
                const DeepCollectionEquality()
                    .equals(other.newIndex, newIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(oldIndex) ^
      const DeepCollectionEquality().hash(newIndex);

  @override
  _$SortedCopyWith<T, _Sorted<T>> get copyWith =>
      __$SortedCopyWithImpl<T, _Sorted<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult saved(T item),
    @required TResult removed(T item),
    @required TResult sorted(int oldIndex, int newIndex),
  }) {
    assert(started != null);
    assert(saved != null);
    assert(removed != null);
    assert(sorted != null);
    return sorted(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult saved(T item),
    TResult removed(T item),
    TResult sorted(int oldIndex, int newIndex),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sorted != null) {
      return sorted(oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started<T> value),
    @required TResult saved(_Saved<T> value),
    @required TResult removed(_Removed<T> value),
    @required TResult sorted(_Sorted<T> value),
  }) {
    assert(started != null);
    assert(saved != null);
    assert(removed != null);
    assert(sorted != null);
    return sorted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started<T> value),
    TResult saved(_Saved<T> value),
    TResult removed(_Removed<T> value),
    TResult sorted(_Sorted<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sorted != null) {
      return sorted(this);
    }
    return orElse();
  }
}

abstract class _Sorted<T> implements FavouritesEvent<T> {
  const factory _Sorted(int oldIndex, int newIndex) = _$_Sorted<T>;

  int get oldIndex;
  int get newIndex;
  _$SortedCopyWith<T, _Sorted<T>> get copyWith;
}

/// @nodoc
class _$FavouritesStateTearOff {
  const _$FavouritesStateTearOff();

// ignore: unused_element
  _Initial<T> initial<T>() {
    return _Initial<T>();
  }

// ignore: unused_element
  _Loading<T> loading<T>() {
    return _Loading<T>();
  }

// ignore: unused_element
  _Loaded<T> loaded<T>(dynamic favourites) {
    return _Loaded<T>(
      favourites,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FavouritesState = _$FavouritesStateTearOff();

/// @nodoc
mixin _$FavouritesState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(dynamic favourites),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(dynamic favourites),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial<T> value),
    @required TResult loading(_Loading<T> value),
    @required TResult loaded(_Loaded<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial<T> value),
    TResult loading(_Loading<T> value),
    TResult loaded(_Loaded<T> value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FavouritesStateCopyWith<T, $Res> {
  factory $FavouritesStateCopyWith(
          FavouritesState<T> value, $Res Function(FavouritesState<T>) then) =
      _$FavouritesStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$FavouritesStateCopyWithImpl<T, $Res>
    implements $FavouritesStateCopyWith<T, $Res> {
  _$FavouritesStateCopyWithImpl(this._value, this._then);

  final FavouritesState<T> _value;
  // ignore: unused_field
  final $Res Function(FavouritesState<T>) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<T, $Res> {
  factory _$InitialCopyWith(
          _Initial<T> value, $Res Function(_Initial<T>) then) =
      __$InitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<T, $Res>
    extends _$FavouritesStateCopyWithImpl<T, $Res>
    implements _$InitialCopyWith<T, $Res> {
  __$InitialCopyWithImpl(_Initial<T> _value, $Res Function(_Initial<T>) _then)
      : super(_value, (v) => _then(v as _Initial<T>));

  @override
  _Initial<T> get _value => super._value as _Initial<T>;
}

/// @nodoc
class _$_Initial<T> implements _Initial<T> {
  const _$_Initial();

  @override
  String toString() {
    return 'FavouritesState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(dynamic favourites),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(dynamic favourites),
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
    @required TResult initial(_Initial<T> value),
    @required TResult loading(_Loading<T> value),
    @required TResult loaded(_Loaded<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial<T> value),
    TResult loading(_Loading<T> value),
    TResult loaded(_Loaded<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements FavouritesState<T> {
  const factory _Initial() = _$_Initial<T>;
}

/// @nodoc
abstract class _$LoadingCopyWith<T, $Res> {
  factory _$LoadingCopyWith(
          _Loading<T> value, $Res Function(_Loading<T>) then) =
      __$LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<T, $Res>
    extends _$FavouritesStateCopyWithImpl<T, $Res>
    implements _$LoadingCopyWith<T, $Res> {
  __$LoadingCopyWithImpl(_Loading<T> _value, $Res Function(_Loading<T>) _then)
      : super(_value, (v) => _then(v as _Loading<T>));

  @override
  _Loading<T> get _value => super._value as _Loading<T>;
}

/// @nodoc
class _$_Loading<T> implements _Loading<T> {
  const _$_Loading();

  @override
  String toString() {
    return 'FavouritesState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(dynamic favourites),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(dynamic favourites),
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
    @required TResult initial(_Initial<T> value),
    @required TResult loading(_Loading<T> value),
    @required TResult loaded(_Loaded<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial<T> value),
    TResult loading(_Loading<T> value),
    TResult loaded(_Loaded<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T> implements FavouritesState<T> {
  const factory _Loading() = _$_Loading<T>;
}

/// @nodoc
abstract class _$LoadedCopyWith<T, $Res> {
  factory _$LoadedCopyWith(_Loaded<T> value, $Res Function(_Loaded<T>) then) =
      __$LoadedCopyWithImpl<T, $Res>;
  $Res call({dynamic favourites});
}

/// @nodoc
class __$LoadedCopyWithImpl<T, $Res>
    extends _$FavouritesStateCopyWithImpl<T, $Res>
    implements _$LoadedCopyWith<T, $Res> {
  __$LoadedCopyWithImpl(_Loaded<T> _value, $Res Function(_Loaded<T>) _then)
      : super(_value, (v) => _then(v as _Loaded<T>));

  @override
  _Loaded<T> get _value => super._value as _Loaded<T>;

  @override
  $Res call({
    Object favourites = freezed,
  }) {
    return _then(_Loaded<T>(
      favourites == freezed ? _value.favourites : favourites,
    ));
  }
}

/// @nodoc
class _$_Loaded<T> implements _Loaded<T> {
  const _$_Loaded(this.favourites) : assert(favourites != null);

  @override
  final dynamic favourites;

  @override
  String toString() {
    return 'FavouritesState<$T>.loaded(favourites: $favourites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded<T> &&
            (identical(other.favourites, favourites) ||
                const DeepCollectionEquality()
                    .equals(other.favourites, favourites)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(favourites);

  @override
  _$LoadedCopyWith<T, _Loaded<T>> get copyWith =>
      __$LoadedCopyWithImpl<T, _Loaded<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(dynamic favourites),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return loaded(favourites);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(dynamic favourites),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(favourites);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial<T> value),
    @required TResult loading(_Loading<T> value),
    @required TResult loaded(_Loaded<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial<T> value),
    TResult loading(_Loading<T> value),
    TResult loaded(_Loaded<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded<T> implements FavouritesState<T> {
  const factory _Loaded(dynamic favourites) = _$_Loaded<T>;

  dynamic get favourites;
  _$LoadedCopyWith<T, _Loaded<T>> get copyWith;
}
