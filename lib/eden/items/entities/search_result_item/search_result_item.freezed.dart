// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_result_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SearchResultItem _$SearchResultItemFromJson(Map<String, dynamic> json) {
  return _SearchResultItem.fromJson(json);
}

/// @nodoc
class _$SearchResultItemTearOff {
  const _$SearchResultItemTearOff();

// ignore: unused_element
  _SearchResultItem call({int id, String name, String sort, String key}) {
    return _SearchResultItem(
      id: id,
      name: name,
      sort: sort,
      key: key,
    );
  }

// ignore: unused_element
  SearchResultItem fromJson(Map<String, Object> json) {
    return SearchResultItem.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SearchResultItem = _$SearchResultItemTearOff();

/// @nodoc
mixin _$SearchResultItem {
  int get id;
  String get name;
  String get sort;
  String get key;

  Map<String, dynamic> toJson();
  $SearchResultItemCopyWith<SearchResultItem> get copyWith;
}

/// @nodoc
abstract class $SearchResultItemCopyWith<$Res> {
  factory $SearchResultItemCopyWith(
          SearchResultItem value, $Res Function(SearchResultItem) then) =
      _$SearchResultItemCopyWithImpl<$Res>;
  $Res call({int id, String name, String sort, String key});
}

/// @nodoc
class _$SearchResultItemCopyWithImpl<$Res>
    implements $SearchResultItemCopyWith<$Res> {
  _$SearchResultItemCopyWithImpl(this._value, this._then);

  final SearchResultItem _value;
  // ignore: unused_field
  final $Res Function(SearchResultItem) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object sort = freezed,
    Object key = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      sort: sort == freezed ? _value.sort : sort as String,
      key: key == freezed ? _value.key : key as String,
    ));
  }
}

/// @nodoc
abstract class _$SearchResultItemCopyWith<$Res>
    implements $SearchResultItemCopyWith<$Res> {
  factory _$SearchResultItemCopyWith(
          _SearchResultItem value, $Res Function(_SearchResultItem) then) =
      __$SearchResultItemCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String sort, String key});
}

/// @nodoc
class __$SearchResultItemCopyWithImpl<$Res>
    extends _$SearchResultItemCopyWithImpl<$Res>
    implements _$SearchResultItemCopyWith<$Res> {
  __$SearchResultItemCopyWithImpl(
      _SearchResultItem _value, $Res Function(_SearchResultItem) _then)
      : super(_value, (v) => _then(v as _SearchResultItem));

  @override
  _SearchResultItem get _value => super._value as _SearchResultItem;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object sort = freezed,
    Object key = freezed,
  }) {
    return _then(_SearchResultItem(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      sort: sort == freezed ? _value.sort : sort as String,
      key: key == freezed ? _value.key : key as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SearchResultItem implements _SearchResultItem {
  _$_SearchResultItem({this.id, this.name, this.sort, this.key});

  factory _$_SearchResultItem.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchResultItemFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String sort;
  @override
  final String key;

  @override
  String toString() {
    return 'SearchResultItem(id: $id, name: $name, sort: $sort, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchResultItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.sort, sort) ||
                const DeepCollectionEquality().equals(other.sort, sort)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(sort) ^
      const DeepCollectionEquality().hash(key);

  @override
  _$SearchResultItemCopyWith<_SearchResultItem> get copyWith =>
      __$SearchResultItemCopyWithImpl<_SearchResultItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchResultItemToJson(this);
  }
}

abstract class _SearchResultItem implements SearchResultItem {
  factory _SearchResultItem({int id, String name, String sort, String key}) =
      _$_SearchResultItem;

  factory _SearchResultItem.fromJson(Map<String, dynamic> json) =
      _$_SearchResultItem.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get sort;
  @override
  String get key;
  @override
  _$SearchResultItemCopyWith<_SearchResultItem> get copyWith;
}
