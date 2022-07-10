// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_show_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemShowState {
  bool get stacked => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool stacked) initial,
    required TResult Function(bool stacked) loading,
    required TResult Function(
            String key,
            Item item,
            List<BazaarItem> bazaarItems,
            List<Owner> owners,
            List<AuctionHouseItem> auctionItems,
            List<Craft> crafts,
            bool stacked)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool stacked)? initial,
    TResult Function(bool stacked)? loading,
    TResult Function(
            String key,
            Item item,
            List<BazaarItem> bazaarItems,
            List<Owner> owners,
            List<AuctionHouseItem> auctionItems,
            List<Craft> crafts,
            bool stacked)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool stacked)? initial,
    TResult Function(bool stacked)? loading,
    TResult Function(
            String key,
            Item item,
            List<BazaarItem> bazaarItems,
            List<Owner> owners,
            List<AuctionHouseItem> auctionItems,
            List<Craft> crafts,
            bool stacked)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemShowStateInitial value) initial,
    required TResult Function(ItemShowStateLoading value) loading,
    required TResult Function(ItemShowStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemShowStateInitial value)? initial,
    TResult Function(ItemShowStateLoading value)? loading,
    TResult Function(ItemShowStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemShowStateInitial value)? initial,
    TResult Function(ItemShowStateLoading value)? loading,
    TResult Function(ItemShowStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemShowStateCopyWith<ItemShowState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemShowStateCopyWith<$Res> {
  factory $ItemShowStateCopyWith(
          ItemShowState value, $Res Function(ItemShowState) then) =
      _$ItemShowStateCopyWithImpl<$Res>;
  $Res call({bool stacked});
}

/// @nodoc
class _$ItemShowStateCopyWithImpl<$Res>
    implements $ItemShowStateCopyWith<$Res> {
  _$ItemShowStateCopyWithImpl(this._value, this._then);

  final ItemShowState _value;
  // ignore: unused_field
  final $Res Function(ItemShowState) _then;

  @override
  $Res call({
    Object? stacked = freezed,
  }) {
    return _then(_value.copyWith(
      stacked: stacked == freezed
          ? _value.stacked
          : stacked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$ItemShowStateInitialCopyWith<$Res>
    implements $ItemShowStateCopyWith<$Res> {
  factory _$$ItemShowStateInitialCopyWith(_$ItemShowStateInitial value,
          $Res Function(_$ItemShowStateInitial) then) =
      __$$ItemShowStateInitialCopyWithImpl<$Res>;
  @override
  $Res call({bool stacked});
}

/// @nodoc
class __$$ItemShowStateInitialCopyWithImpl<$Res>
    extends _$ItemShowStateCopyWithImpl<$Res>
    implements _$$ItemShowStateInitialCopyWith<$Res> {
  __$$ItemShowStateInitialCopyWithImpl(_$ItemShowStateInitial _value,
      $Res Function(_$ItemShowStateInitial) _then)
      : super(_value, (v) => _then(v as _$ItemShowStateInitial));

  @override
  _$ItemShowStateInitial get _value => super._value as _$ItemShowStateInitial;

  @override
  $Res call({
    Object? stacked = freezed,
  }) {
    return _then(_$ItemShowStateInitial(
      stacked == freezed
          ? _value.stacked
          : stacked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ItemShowStateInitial implements ItemShowStateInitial {
  const _$ItemShowStateInitial(this.stacked);

  @override
  final bool stacked;

  @override
  String toString() {
    return 'ItemShowState.initial(stacked: $stacked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemShowStateInitial &&
            const DeepCollectionEquality().equals(other.stacked, stacked));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(stacked));

  @JsonKey(ignore: true)
  @override
  _$$ItemShowStateInitialCopyWith<_$ItemShowStateInitial> get copyWith =>
      __$$ItemShowStateInitialCopyWithImpl<_$ItemShowStateInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool stacked) initial,
    required TResult Function(bool stacked) loading,
    required TResult Function(
            String key,
            Item item,
            List<BazaarItem> bazaarItems,
            List<Owner> owners,
            List<AuctionHouseItem> auctionItems,
            List<Craft> crafts,
            bool stacked)
        loaded,
  }) {
    return initial(stacked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool stacked)? initial,
    TResult Function(bool stacked)? loading,
    TResult Function(
            String key,
            Item item,
            List<BazaarItem> bazaarItems,
            List<Owner> owners,
            List<AuctionHouseItem> auctionItems,
            List<Craft> crafts,
            bool stacked)?
        loaded,
  }) {
    return initial?.call(stacked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool stacked)? initial,
    TResult Function(bool stacked)? loading,
    TResult Function(
            String key,
            Item item,
            List<BazaarItem> bazaarItems,
            List<Owner> owners,
            List<AuctionHouseItem> auctionItems,
            List<Craft> crafts,
            bool stacked)?
        loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(stacked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemShowStateInitial value) initial,
    required TResult Function(ItemShowStateLoading value) loading,
    required TResult Function(ItemShowStateLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemShowStateInitial value)? initial,
    TResult Function(ItemShowStateLoading value)? loading,
    TResult Function(ItemShowStateLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemShowStateInitial value)? initial,
    TResult Function(ItemShowStateLoading value)? loading,
    TResult Function(ItemShowStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ItemShowStateInitial implements ItemShowState {
  const factory ItemShowStateInitial(final bool stacked) =
      _$ItemShowStateInitial;

  @override
  bool get stacked => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ItemShowStateInitialCopyWith<_$ItemShowStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemShowStateLoadingCopyWith<$Res>
    implements $ItemShowStateCopyWith<$Res> {
  factory _$$ItemShowStateLoadingCopyWith(_$ItemShowStateLoading value,
          $Res Function(_$ItemShowStateLoading) then) =
      __$$ItemShowStateLoadingCopyWithImpl<$Res>;
  @override
  $Res call({bool stacked});
}

/// @nodoc
class __$$ItemShowStateLoadingCopyWithImpl<$Res>
    extends _$ItemShowStateCopyWithImpl<$Res>
    implements _$$ItemShowStateLoadingCopyWith<$Res> {
  __$$ItemShowStateLoadingCopyWithImpl(_$ItemShowStateLoading _value,
      $Res Function(_$ItemShowStateLoading) _then)
      : super(_value, (v) => _then(v as _$ItemShowStateLoading));

  @override
  _$ItemShowStateLoading get _value => super._value as _$ItemShowStateLoading;

  @override
  $Res call({
    Object? stacked = freezed,
  }) {
    return _then(_$ItemShowStateLoading(
      stacked == freezed
          ? _value.stacked
          : stacked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ItemShowStateLoading implements ItemShowStateLoading {
  const _$ItemShowStateLoading(this.stacked);

  @override
  final bool stacked;

  @override
  String toString() {
    return 'ItemShowState.loading(stacked: $stacked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemShowStateLoading &&
            const DeepCollectionEquality().equals(other.stacked, stacked));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(stacked));

  @JsonKey(ignore: true)
  @override
  _$$ItemShowStateLoadingCopyWith<_$ItemShowStateLoading> get copyWith =>
      __$$ItemShowStateLoadingCopyWithImpl<_$ItemShowStateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool stacked) initial,
    required TResult Function(bool stacked) loading,
    required TResult Function(
            String key,
            Item item,
            List<BazaarItem> bazaarItems,
            List<Owner> owners,
            List<AuctionHouseItem> auctionItems,
            List<Craft> crafts,
            bool stacked)
        loaded,
  }) {
    return loading(stacked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool stacked)? initial,
    TResult Function(bool stacked)? loading,
    TResult Function(
            String key,
            Item item,
            List<BazaarItem> bazaarItems,
            List<Owner> owners,
            List<AuctionHouseItem> auctionItems,
            List<Craft> crafts,
            bool stacked)?
        loaded,
  }) {
    return loading?.call(stacked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool stacked)? initial,
    TResult Function(bool stacked)? loading,
    TResult Function(
            String key,
            Item item,
            List<BazaarItem> bazaarItems,
            List<Owner> owners,
            List<AuctionHouseItem> auctionItems,
            List<Craft> crafts,
            bool stacked)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(stacked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemShowStateInitial value) initial,
    required TResult Function(ItemShowStateLoading value) loading,
    required TResult Function(ItemShowStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemShowStateInitial value)? initial,
    TResult Function(ItemShowStateLoading value)? loading,
    TResult Function(ItemShowStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemShowStateInitial value)? initial,
    TResult Function(ItemShowStateLoading value)? loading,
    TResult Function(ItemShowStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ItemShowStateLoading implements ItemShowState {
  const factory ItemShowStateLoading(final bool stacked) =
      _$ItemShowStateLoading;

  @override
  bool get stacked => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ItemShowStateLoadingCopyWith<_$ItemShowStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemShowStateLoadedCopyWith<$Res>
    implements $ItemShowStateCopyWith<$Res> {
  factory _$$ItemShowStateLoadedCopyWith(_$ItemShowStateLoaded value,
          $Res Function(_$ItemShowStateLoaded) then) =
      __$$ItemShowStateLoadedCopyWithImpl<$Res>;
  @override
  $Res call(
      {String key,
      Item item,
      List<BazaarItem> bazaarItems,
      List<Owner> owners,
      List<AuctionHouseItem> auctionItems,
      List<Craft> crafts,
      bool stacked});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$ItemShowStateLoadedCopyWithImpl<$Res>
    extends _$ItemShowStateCopyWithImpl<$Res>
    implements _$$ItemShowStateLoadedCopyWith<$Res> {
  __$$ItemShowStateLoadedCopyWithImpl(
      _$ItemShowStateLoaded _value, $Res Function(_$ItemShowStateLoaded) _then)
      : super(_value, (v) => _then(v as _$ItemShowStateLoaded));

  @override
  _$ItemShowStateLoaded get _value => super._value as _$ItemShowStateLoaded;

  @override
  $Res call({
    Object? key = freezed,
    Object? item = freezed,
    Object? bazaarItems = freezed,
    Object? owners = freezed,
    Object? auctionItems = freezed,
    Object? crafts = freezed,
    Object? stacked = freezed,
  }) {
    return _then(_$ItemShowStateLoaded(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
      bazaarItems: bazaarItems == freezed
          ? _value._bazaarItems
          : bazaarItems // ignore: cast_nullable_to_non_nullable
              as List<BazaarItem>,
      owners: owners == freezed
          ? _value._owners
          : owners // ignore: cast_nullable_to_non_nullable
              as List<Owner>,
      auctionItems: auctionItems == freezed
          ? _value._auctionItems
          : auctionItems // ignore: cast_nullable_to_non_nullable
              as List<AuctionHouseItem>,
      crafts: crafts == freezed
          ? _value._crafts
          : crafts // ignore: cast_nullable_to_non_nullable
              as List<Craft>,
      stacked: stacked == freezed
          ? _value.stacked
          : stacked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$ItemShowStateLoaded implements ItemShowStateLoaded {
  const _$ItemShowStateLoaded(
      {required this.key,
      required this.item,
      required final List<BazaarItem> bazaarItems,
      required final List<Owner> owners,
      required final List<AuctionHouseItem> auctionItems,
      required final List<Craft> crafts,
      required this.stacked})
      : _bazaarItems = bazaarItems,
        _owners = owners,
        _auctionItems = auctionItems,
        _crafts = crafts;

  @override
  final String key;
  @override
  final Item item;
  final List<BazaarItem> _bazaarItems;
  @override
  List<BazaarItem> get bazaarItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bazaarItems);
  }

  final List<Owner> _owners;
  @override
  List<Owner> get owners {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_owners);
  }

  final List<AuctionHouseItem> _auctionItems;
  @override
  List<AuctionHouseItem> get auctionItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_auctionItems);
  }

  final List<Craft> _crafts;
  @override
  List<Craft> get crafts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crafts);
  }

  @override
  final bool stacked;

  @override
  String toString() {
    return 'ItemShowState.loaded(key: $key, item: $item, bazaarItems: $bazaarItems, owners: $owners, auctionItems: $auctionItems, crafts: $crafts, stacked: $stacked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemShowStateLoaded &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.item, item) &&
            const DeepCollectionEquality()
                .equals(other._bazaarItems, _bazaarItems) &&
            const DeepCollectionEquality().equals(other._owners, _owners) &&
            const DeepCollectionEquality()
                .equals(other._auctionItems, _auctionItems) &&
            const DeepCollectionEquality().equals(other._crafts, _crafts) &&
            const DeepCollectionEquality().equals(other.stacked, stacked));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(item),
      const DeepCollectionEquality().hash(_bazaarItems),
      const DeepCollectionEquality().hash(_owners),
      const DeepCollectionEquality().hash(_auctionItems),
      const DeepCollectionEquality().hash(_crafts),
      const DeepCollectionEquality().hash(stacked));

  @JsonKey(ignore: true)
  @override
  _$$ItemShowStateLoadedCopyWith<_$ItemShowStateLoaded> get copyWith =>
      __$$ItemShowStateLoadedCopyWithImpl<_$ItemShowStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool stacked) initial,
    required TResult Function(bool stacked) loading,
    required TResult Function(
            String key,
            Item item,
            List<BazaarItem> bazaarItems,
            List<Owner> owners,
            List<AuctionHouseItem> auctionItems,
            List<Craft> crafts,
            bool stacked)
        loaded,
  }) {
    return loaded(
        key, item, bazaarItems, owners, auctionItems, crafts, stacked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool stacked)? initial,
    TResult Function(bool stacked)? loading,
    TResult Function(
            String key,
            Item item,
            List<BazaarItem> bazaarItems,
            List<Owner> owners,
            List<AuctionHouseItem> auctionItems,
            List<Craft> crafts,
            bool stacked)?
        loaded,
  }) {
    return loaded?.call(
        key, item, bazaarItems, owners, auctionItems, crafts, stacked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool stacked)? initial,
    TResult Function(bool stacked)? loading,
    TResult Function(
            String key,
            Item item,
            List<BazaarItem> bazaarItems,
            List<Owner> owners,
            List<AuctionHouseItem> auctionItems,
            List<Craft> crafts,
            bool stacked)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          key, item, bazaarItems, owners, auctionItems, crafts, stacked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemShowStateInitial value) initial,
    required TResult Function(ItemShowStateLoading value) loading,
    required TResult Function(ItemShowStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemShowStateInitial value)? initial,
    TResult Function(ItemShowStateLoading value)? loading,
    TResult Function(ItemShowStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemShowStateInitial value)? initial,
    TResult Function(ItemShowStateLoading value)? loading,
    TResult Function(ItemShowStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ItemShowStateLoaded implements ItemShowState {
  const factory ItemShowStateLoaded(
      {required final String key,
      required final Item item,
      required final List<BazaarItem> bazaarItems,
      required final List<Owner> owners,
      required final List<AuctionHouseItem> auctionItems,
      required final List<Craft> crafts,
      required final bool stacked}) = _$ItemShowStateLoaded;

  String get key => throw _privateConstructorUsedError;
  Item get item => throw _privateConstructorUsedError;
  List<BazaarItem> get bazaarItems => throw _privateConstructorUsedError;
  List<Owner> get owners => throw _privateConstructorUsedError;
  List<AuctionHouseItem> get auctionItems => throw _privateConstructorUsedError;
  List<Craft> get crafts => throw _privateConstructorUsedError;
  @override
  bool get stacked => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ItemShowStateLoadedCopyWith<_$ItemShowStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
