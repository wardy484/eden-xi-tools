// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SearchResult _$SearchResultFromJson(Map<String, dynamic> json) {
  return _SearchResult.fromJson(json);
}

/// @nodoc
class _$SearchResultTearOff {
  const _$SearchResultTearOff();

// ignore: unused_element
  _SearchResult call({int total, List<SearchResultItem> items}) {
    return _SearchResult(
      total: total,
      items: items,
    );
  }

// ignore: unused_element
  SearchResult fromJson(Map<String, Object> json) {
    return SearchResult.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SearchResult = _$SearchResultTearOff();

/// @nodoc
mixin _$SearchResult {
  int get total;
  List<SearchResultItem> get items;

  Map<String, dynamic> toJson();
  $SearchResultCopyWith<SearchResult> get copyWith;
}

/// @nodoc
abstract class $SearchResultCopyWith<$Res> {
  factory $SearchResultCopyWith(
          SearchResult value, $Res Function(SearchResult) then) =
      _$SearchResultCopyWithImpl<$Res>;
  $Res call({int total, List<SearchResultItem> items});
}

/// @nodoc
class _$SearchResultCopyWithImpl<$Res> implements $SearchResultCopyWith<$Res> {
  _$SearchResultCopyWithImpl(this._value, this._then);

  final SearchResult _value;
  // ignore: unused_field
  final $Res Function(SearchResult) _then;

  @override
  $Res call({
    Object total = freezed,
    Object items = freezed,
  }) {
    return _then(_value.copyWith(
      total: total == freezed ? _value.total : total as int,
      items: items == freezed ? _value.items : items as List<SearchResultItem>,
    ));
  }
}

/// @nodoc
abstract class _$SearchResultCopyWith<$Res>
    implements $SearchResultCopyWith<$Res> {
  factory _$SearchResultCopyWith(
          _SearchResult value, $Res Function(_SearchResult) then) =
      __$SearchResultCopyWithImpl<$Res>;
  @override
  $Res call({int total, List<SearchResultItem> items});
}

/// @nodoc
class __$SearchResultCopyWithImpl<$Res> extends _$SearchResultCopyWithImpl<$Res>
    implements _$SearchResultCopyWith<$Res> {
  __$SearchResultCopyWithImpl(
      _SearchResult _value, $Res Function(_SearchResult) _then)
      : super(_value, (v) => _then(v as _SearchResult));

  @override
  _SearchResult get _value => super._value as _SearchResult;

  @override
  $Res call({
    Object total = freezed,
    Object items = freezed,
  }) {
    return _then(_SearchResult(
      total: total == freezed ? _value.total : total as int,
      items: items == freezed ? _value.items : items as List<SearchResultItem>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SearchResult implements _SearchResult {
  _$_SearchResult({this.total, this.items});

  factory _$_SearchResult.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchResultFromJson(json);

  @override
  final int total;
  @override
  final List<SearchResultItem> items;

  @override
  String toString() {
    return 'SearchResult(total: $total, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchResult &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(items);

  @override
  _$SearchResultCopyWith<_SearchResult> get copyWith =>
      __$SearchResultCopyWithImpl<_SearchResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchResultToJson(this);
  }
}

abstract class _SearchResult implements SearchResult {
  factory _SearchResult({int total, List<SearchResultItem> items}) =
      _$_SearchResult;

  factory _SearchResult.fromJson(Map<String, dynamic> json) =
      _$_SearchResult.fromJson;

  @override
  int get total;
  @override
  List<SearchResultItem> get items;
  @override
  _$SearchResultCopyWith<_SearchResult> get copyWith;
}
