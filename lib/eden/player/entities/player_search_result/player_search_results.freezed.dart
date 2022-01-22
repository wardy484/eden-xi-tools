// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player_search_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayerSearchResult _$PlayerSearchResultFromJson(Map<String, dynamic> json) {
  return _PlayerSearchResult.fromJson(json);
}

/// @nodoc
class _$PlayerSearchResultTearOff {
  const _$PlayerSearchResultTearOff();

  _PlayerSearchResult call(
      {required int total,
      @JsonKey(name: 'chars') required List<PlayerSearchResultItem> items}) {
    return _PlayerSearchResult(
      total: total,
      items: items,
    );
  }

  PlayerSearchResult fromJson(Map<String, Object?> json) {
    return PlayerSearchResult.fromJson(json);
  }
}

/// @nodoc
const $PlayerSearchResult = _$PlayerSearchResultTearOff();

/// @nodoc
mixin _$PlayerSearchResult {
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'chars')
  List<PlayerSearchResultItem> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerSearchResultCopyWith<PlayerSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerSearchResultCopyWith<$Res> {
  factory $PlayerSearchResultCopyWith(
          PlayerSearchResult value, $Res Function(PlayerSearchResult) then) =
      _$PlayerSearchResultCopyWithImpl<$Res>;
  $Res call(
      {int total, @JsonKey(name: 'chars') List<PlayerSearchResultItem> items});
}

/// @nodoc
class _$PlayerSearchResultCopyWithImpl<$Res>
    implements $PlayerSearchResultCopyWith<$Res> {
  _$PlayerSearchResultCopyWithImpl(this._value, this._then);

  final PlayerSearchResult _value;
  // ignore: unused_field
  final $Res Function(PlayerSearchResult) _then;

  @override
  $Res call({
    Object? total = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PlayerSearchResultItem>,
    ));
  }
}

/// @nodoc
abstract class _$PlayerSearchResultCopyWith<$Res>
    implements $PlayerSearchResultCopyWith<$Res> {
  factory _$PlayerSearchResultCopyWith(
          _PlayerSearchResult value, $Res Function(_PlayerSearchResult) then) =
      __$PlayerSearchResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {int total, @JsonKey(name: 'chars') List<PlayerSearchResultItem> items});
}

/// @nodoc
class __$PlayerSearchResultCopyWithImpl<$Res>
    extends _$PlayerSearchResultCopyWithImpl<$Res>
    implements _$PlayerSearchResultCopyWith<$Res> {
  __$PlayerSearchResultCopyWithImpl(
      _PlayerSearchResult _value, $Res Function(_PlayerSearchResult) _then)
      : super(_value, (v) => _then(v as _PlayerSearchResult));

  @override
  _PlayerSearchResult get _value => super._value as _PlayerSearchResult;

  @override
  $Res call({
    Object? total = freezed,
    Object? items = freezed,
  }) {
    return _then(_PlayerSearchResult(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PlayerSearchResultItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlayerSearchResult implements _PlayerSearchResult {
  _$_PlayerSearchResult(
      {required this.total, @JsonKey(name: 'chars') required this.items});

  factory _$_PlayerSearchResult.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerSearchResultFromJson(json);

  @override
  final int total;
  @override
  @JsonKey(name: 'chars')
  final List<PlayerSearchResultItem> items;

  @override
  String toString() {
    return 'PlayerSearchResult(total: $total, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlayerSearchResult &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, total, const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  _$PlayerSearchResultCopyWith<_PlayerSearchResult> get copyWith =>
      __$PlayerSearchResultCopyWithImpl<_PlayerSearchResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerSearchResultToJson(this);
  }
}

abstract class _PlayerSearchResult implements PlayerSearchResult {
  factory _PlayerSearchResult(
      {required int total,
      @JsonKey(name: 'chars')
          required List<PlayerSearchResultItem> items}) = _$_PlayerSearchResult;

  factory _PlayerSearchResult.fromJson(Map<String, dynamic> json) =
      _$_PlayerSearchResult.fromJson;

  @override
  int get total;
  @override
  @JsonKey(name: 'chars')
  List<PlayerSearchResultItem> get items;
  @override
  @JsonKey(ignore: true)
  _$PlayerSearchResultCopyWith<_PlayerSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}
