// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemSearchState {
  String get itemName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String itemName) initial,
    required TResult Function(String itemName) loading,
    required TResult Function(String itemName, SearchResult searchResult,
            int page, bool isLastPage)
        loaded,
    required TResult Function(String itemName, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String itemName)? initial,
    TResult Function(String itemName)? loading,
    TResult Function(String itemName, SearchResult searchResult, int page,
            bool isLastPage)?
        loaded,
    TResult Function(String itemName, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String itemName)? initial,
    TResult Function(String itemName)? loading,
    TResult Function(String itemName, SearchResult searchResult, int page,
            bool isLastPage)?
        loaded,
    TResult Function(String itemName, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemSearchStateInitial value) initial,
    required TResult Function(ItemSearchStateLoading value) loading,
    required TResult Function(ItemSearchStateLoaded value) loaded,
    required TResult Function(ItemSearchStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemSearchStateInitial value)? initial,
    TResult Function(ItemSearchStateLoading value)? loading,
    TResult Function(ItemSearchStateLoaded value)? loaded,
    TResult Function(ItemSearchStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemSearchStateInitial value)? initial,
    TResult Function(ItemSearchStateLoading value)? loading,
    TResult Function(ItemSearchStateLoaded value)? loaded,
    TResult Function(ItemSearchStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemSearchStateCopyWith<ItemSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemSearchStateCopyWith<$Res> {
  factory $ItemSearchStateCopyWith(
          ItemSearchState value, $Res Function(ItemSearchState) then) =
      _$ItemSearchStateCopyWithImpl<$Res>;
  $Res call({String itemName});
}

/// @nodoc
class _$ItemSearchStateCopyWithImpl<$Res>
    implements $ItemSearchStateCopyWith<$Res> {
  _$ItemSearchStateCopyWithImpl(this._value, this._then);

  final ItemSearchState _value;
  // ignore: unused_field
  final $Res Function(ItemSearchState) _then;

  @override
  $Res call({
    Object? itemName = freezed,
  }) {
    return _then(_value.copyWith(
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$ItemSearchStateInitialCopyWith<$Res>
    implements $ItemSearchStateCopyWith<$Res> {
  factory _$$ItemSearchStateInitialCopyWith(_$ItemSearchStateInitial value,
          $Res Function(_$ItemSearchStateInitial) then) =
      __$$ItemSearchStateInitialCopyWithImpl<$Res>;
  @override
  $Res call({String itemName});
}

/// @nodoc
class __$$ItemSearchStateInitialCopyWithImpl<$Res>
    extends _$ItemSearchStateCopyWithImpl<$Res>
    implements _$$ItemSearchStateInitialCopyWith<$Res> {
  __$$ItemSearchStateInitialCopyWithImpl(_$ItemSearchStateInitial _value,
      $Res Function(_$ItemSearchStateInitial) _then)
      : super(_value, (v) => _then(v as _$ItemSearchStateInitial));

  @override
  _$ItemSearchStateInitial get _value =>
      super._value as _$ItemSearchStateInitial;

  @override
  $Res call({
    Object? itemName = freezed,
  }) {
    return _then(_$ItemSearchStateInitial(
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ItemSearchStateInitial implements ItemSearchStateInitial {
  const _$ItemSearchStateInitial({required this.itemName});

  @override
  final String itemName;

  @override
  String toString() {
    return 'ItemSearchState.initial(itemName: $itemName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemSearchStateInitial &&
            const DeepCollectionEquality().equals(other.itemName, itemName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(itemName));

  @JsonKey(ignore: true)
  @override
  _$$ItemSearchStateInitialCopyWith<_$ItemSearchStateInitial> get copyWith =>
      __$$ItemSearchStateInitialCopyWithImpl<_$ItemSearchStateInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String itemName) initial,
    required TResult Function(String itemName) loading,
    required TResult Function(String itemName, SearchResult searchResult,
            int page, bool isLastPage)
        loaded,
    required TResult Function(String itemName, String message) error,
  }) {
    return initial(itemName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String itemName)? initial,
    TResult Function(String itemName)? loading,
    TResult Function(String itemName, SearchResult searchResult, int page,
            bool isLastPage)?
        loaded,
    TResult Function(String itemName, String message)? error,
  }) {
    return initial?.call(itemName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String itemName)? initial,
    TResult Function(String itemName)? loading,
    TResult Function(String itemName, SearchResult searchResult, int page,
            bool isLastPage)?
        loaded,
    TResult Function(String itemName, String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(itemName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemSearchStateInitial value) initial,
    required TResult Function(ItemSearchStateLoading value) loading,
    required TResult Function(ItemSearchStateLoaded value) loaded,
    required TResult Function(ItemSearchStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemSearchStateInitial value)? initial,
    TResult Function(ItemSearchStateLoading value)? loading,
    TResult Function(ItemSearchStateLoaded value)? loaded,
    TResult Function(ItemSearchStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemSearchStateInitial value)? initial,
    TResult Function(ItemSearchStateLoading value)? loading,
    TResult Function(ItemSearchStateLoaded value)? loaded,
    TResult Function(ItemSearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ItemSearchStateInitial implements ItemSearchState {
  const factory ItemSearchStateInitial({required final String itemName}) =
      _$ItemSearchStateInitial;

  @override
  String get itemName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ItemSearchStateInitialCopyWith<_$ItemSearchStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemSearchStateLoadingCopyWith<$Res>
    implements $ItemSearchStateCopyWith<$Res> {
  factory _$$ItemSearchStateLoadingCopyWith(_$ItemSearchStateLoading value,
          $Res Function(_$ItemSearchStateLoading) then) =
      __$$ItemSearchStateLoadingCopyWithImpl<$Res>;
  @override
  $Res call({String itemName});
}

/// @nodoc
class __$$ItemSearchStateLoadingCopyWithImpl<$Res>
    extends _$ItemSearchStateCopyWithImpl<$Res>
    implements _$$ItemSearchStateLoadingCopyWith<$Res> {
  __$$ItemSearchStateLoadingCopyWithImpl(_$ItemSearchStateLoading _value,
      $Res Function(_$ItemSearchStateLoading) _then)
      : super(_value, (v) => _then(v as _$ItemSearchStateLoading));

  @override
  _$ItemSearchStateLoading get _value =>
      super._value as _$ItemSearchStateLoading;

  @override
  $Res call({
    Object? itemName = freezed,
  }) {
    return _then(_$ItemSearchStateLoading(
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ItemSearchStateLoading implements ItemSearchStateLoading {
  const _$ItemSearchStateLoading({required this.itemName});

  @override
  final String itemName;

  @override
  String toString() {
    return 'ItemSearchState.loading(itemName: $itemName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemSearchStateLoading &&
            const DeepCollectionEquality().equals(other.itemName, itemName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(itemName));

  @JsonKey(ignore: true)
  @override
  _$$ItemSearchStateLoadingCopyWith<_$ItemSearchStateLoading> get copyWith =>
      __$$ItemSearchStateLoadingCopyWithImpl<_$ItemSearchStateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String itemName) initial,
    required TResult Function(String itemName) loading,
    required TResult Function(String itemName, SearchResult searchResult,
            int page, bool isLastPage)
        loaded,
    required TResult Function(String itemName, String message) error,
  }) {
    return loading(itemName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String itemName)? initial,
    TResult Function(String itemName)? loading,
    TResult Function(String itemName, SearchResult searchResult, int page,
            bool isLastPage)?
        loaded,
    TResult Function(String itemName, String message)? error,
  }) {
    return loading?.call(itemName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String itemName)? initial,
    TResult Function(String itemName)? loading,
    TResult Function(String itemName, SearchResult searchResult, int page,
            bool isLastPage)?
        loaded,
    TResult Function(String itemName, String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(itemName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemSearchStateInitial value) initial,
    required TResult Function(ItemSearchStateLoading value) loading,
    required TResult Function(ItemSearchStateLoaded value) loaded,
    required TResult Function(ItemSearchStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemSearchStateInitial value)? initial,
    TResult Function(ItemSearchStateLoading value)? loading,
    TResult Function(ItemSearchStateLoaded value)? loaded,
    TResult Function(ItemSearchStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemSearchStateInitial value)? initial,
    TResult Function(ItemSearchStateLoading value)? loading,
    TResult Function(ItemSearchStateLoaded value)? loaded,
    TResult Function(ItemSearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ItemSearchStateLoading implements ItemSearchState {
  const factory ItemSearchStateLoading({required final String itemName}) =
      _$ItemSearchStateLoading;

  @override
  String get itemName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ItemSearchStateLoadingCopyWith<_$ItemSearchStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemSearchStateLoadedCopyWith<$Res>
    implements $ItemSearchStateCopyWith<$Res> {
  factory _$$ItemSearchStateLoadedCopyWith(_$ItemSearchStateLoaded value,
          $Res Function(_$ItemSearchStateLoaded) then) =
      __$$ItemSearchStateLoadedCopyWithImpl<$Res>;
  @override
  $Res call(
      {String itemName, SearchResult searchResult, int page, bool isLastPage});

  $SearchResultCopyWith<$Res> get searchResult;
}

/// @nodoc
class __$$ItemSearchStateLoadedCopyWithImpl<$Res>
    extends _$ItemSearchStateCopyWithImpl<$Res>
    implements _$$ItemSearchStateLoadedCopyWith<$Res> {
  __$$ItemSearchStateLoadedCopyWithImpl(_$ItemSearchStateLoaded _value,
      $Res Function(_$ItemSearchStateLoaded) _then)
      : super(_value, (v) => _then(v as _$ItemSearchStateLoaded));

  @override
  _$ItemSearchStateLoaded get _value => super._value as _$ItemSearchStateLoaded;

  @override
  $Res call({
    Object? itemName = freezed,
    Object? searchResult = freezed,
    Object? page = freezed,
    Object? isLastPage = freezed,
  }) {
    return _then(_$ItemSearchStateLoaded(
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      searchResult: searchResult == freezed
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as SearchResult,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isLastPage: isLastPage == freezed
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $SearchResultCopyWith<$Res> get searchResult {
    return $SearchResultCopyWith<$Res>(_value.searchResult, (value) {
      return _then(_value.copyWith(searchResult: value));
    });
  }
}

/// @nodoc

class _$ItemSearchStateLoaded implements ItemSearchStateLoaded {
  const _$ItemSearchStateLoaded(
      {required this.itemName,
      required this.searchResult,
      required this.page,
      required this.isLastPage});

  @override
  final String itemName;
  @override
  final SearchResult searchResult;
  @override
  final int page;
  @override
  final bool isLastPage;

  @override
  String toString() {
    return 'ItemSearchState.loaded(itemName: $itemName, searchResult: $searchResult, page: $page, isLastPage: $isLastPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemSearchStateLoaded &&
            const DeepCollectionEquality().equals(other.itemName, itemName) &&
            const DeepCollectionEquality()
                .equals(other.searchResult, searchResult) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality()
                .equals(other.isLastPage, isLastPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(itemName),
      const DeepCollectionEquality().hash(searchResult),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(isLastPage));

  @JsonKey(ignore: true)
  @override
  _$$ItemSearchStateLoadedCopyWith<_$ItemSearchStateLoaded> get copyWith =>
      __$$ItemSearchStateLoadedCopyWithImpl<_$ItemSearchStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String itemName) initial,
    required TResult Function(String itemName) loading,
    required TResult Function(String itemName, SearchResult searchResult,
            int page, bool isLastPage)
        loaded,
    required TResult Function(String itemName, String message) error,
  }) {
    return loaded(itemName, searchResult, page, isLastPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String itemName)? initial,
    TResult Function(String itemName)? loading,
    TResult Function(String itemName, SearchResult searchResult, int page,
            bool isLastPage)?
        loaded,
    TResult Function(String itemName, String message)? error,
  }) {
    return loaded?.call(itemName, searchResult, page, isLastPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String itemName)? initial,
    TResult Function(String itemName)? loading,
    TResult Function(String itemName, SearchResult searchResult, int page,
            bool isLastPage)?
        loaded,
    TResult Function(String itemName, String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(itemName, searchResult, page, isLastPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemSearchStateInitial value) initial,
    required TResult Function(ItemSearchStateLoading value) loading,
    required TResult Function(ItemSearchStateLoaded value) loaded,
    required TResult Function(ItemSearchStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemSearchStateInitial value)? initial,
    TResult Function(ItemSearchStateLoading value)? loading,
    TResult Function(ItemSearchStateLoaded value)? loaded,
    TResult Function(ItemSearchStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemSearchStateInitial value)? initial,
    TResult Function(ItemSearchStateLoading value)? loading,
    TResult Function(ItemSearchStateLoaded value)? loaded,
    TResult Function(ItemSearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ItemSearchStateLoaded implements ItemSearchState {
  const factory ItemSearchStateLoaded(
      {required final String itemName,
      required final SearchResult searchResult,
      required final int page,
      required final bool isLastPage}) = _$ItemSearchStateLoaded;

  @override
  String get itemName => throw _privateConstructorUsedError;
  SearchResult get searchResult => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get isLastPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ItemSearchStateLoadedCopyWith<_$ItemSearchStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemSearchStateErrorCopyWith<$Res>
    implements $ItemSearchStateCopyWith<$Res> {
  factory _$$ItemSearchStateErrorCopyWith(_$ItemSearchStateError value,
          $Res Function(_$ItemSearchStateError) then) =
      __$$ItemSearchStateErrorCopyWithImpl<$Res>;
  @override
  $Res call({String itemName, String message});
}

/// @nodoc
class __$$ItemSearchStateErrorCopyWithImpl<$Res>
    extends _$ItemSearchStateCopyWithImpl<$Res>
    implements _$$ItemSearchStateErrorCopyWith<$Res> {
  __$$ItemSearchStateErrorCopyWithImpl(_$ItemSearchStateError _value,
      $Res Function(_$ItemSearchStateError) _then)
      : super(_value, (v) => _then(v as _$ItemSearchStateError));

  @override
  _$ItemSearchStateError get _value => super._value as _$ItemSearchStateError;

  @override
  $Res call({
    Object? itemName = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ItemSearchStateError(
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ItemSearchStateError implements ItemSearchStateError {
  const _$ItemSearchStateError({required this.itemName, required this.message});

  @override
  final String itemName;
  @override
  final String message;

  @override
  String toString() {
    return 'ItemSearchState.error(itemName: $itemName, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemSearchStateError &&
            const DeepCollectionEquality().equals(other.itemName, itemName) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(itemName),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ItemSearchStateErrorCopyWith<_$ItemSearchStateError> get copyWith =>
      __$$ItemSearchStateErrorCopyWithImpl<_$ItemSearchStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String itemName) initial,
    required TResult Function(String itemName) loading,
    required TResult Function(String itemName, SearchResult searchResult,
            int page, bool isLastPage)
        loaded,
    required TResult Function(String itemName, String message) error,
  }) {
    return error(itemName, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String itemName)? initial,
    TResult Function(String itemName)? loading,
    TResult Function(String itemName, SearchResult searchResult, int page,
            bool isLastPage)?
        loaded,
    TResult Function(String itemName, String message)? error,
  }) {
    return error?.call(itemName, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String itemName)? initial,
    TResult Function(String itemName)? loading,
    TResult Function(String itemName, SearchResult searchResult, int page,
            bool isLastPage)?
        loaded,
    TResult Function(String itemName, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(itemName, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemSearchStateInitial value) initial,
    required TResult Function(ItemSearchStateLoading value) loading,
    required TResult Function(ItemSearchStateLoaded value) loaded,
    required TResult Function(ItemSearchStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemSearchStateInitial value)? initial,
    TResult Function(ItemSearchStateLoading value)? loading,
    TResult Function(ItemSearchStateLoaded value)? loaded,
    TResult Function(ItemSearchStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemSearchStateInitial value)? initial,
    TResult Function(ItemSearchStateLoading value)? loading,
    TResult Function(ItemSearchStateLoaded value)? loaded,
    TResult Function(ItemSearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ItemSearchStateError implements ItemSearchState {
  const factory ItemSearchStateError(
      {required final String itemName,
      required final String message}) = _$ItemSearchStateError;

  @override
  String get itemName => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ItemSearchStateErrorCopyWith<_$ItemSearchStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
