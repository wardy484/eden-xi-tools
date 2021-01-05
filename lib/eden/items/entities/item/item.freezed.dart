// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
class _$ItemTearOff {
  const _$ItemTearOff();

// ignore: unused_element
  _Item call(
      {int id,
      String armor,
      String desc,
      String key,
      String name,
      String sort,
      bool stackable}) {
    return _Item(
      id: id,
      armor: armor,
      desc: desc,
      key: key,
      name: name,
      sort: sort,
      stackable: stackable,
    );
  }

// ignore: unused_element
  Item fromJson(Map<String, Object> json) {
    return Item.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Item = _$ItemTearOff();

/// @nodoc
mixin _$Item {
  int get id;
  String get armor;
  String get desc;
  String get key;
  String get name;
  String get sort;
  bool get stackable;

  Map<String, dynamic> toJson();
  $ItemCopyWith<Item> get copyWith;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String armor,
      String desc,
      String key,
      String name,
      String sort,
      bool stackable});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object id = freezed,
    Object armor = freezed,
    Object desc = freezed,
    Object key = freezed,
    Object name = freezed,
    Object sort = freezed,
    Object stackable = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      armor: armor == freezed ? _value.armor : armor as String,
      desc: desc == freezed ? _value.desc : desc as String,
      key: key == freezed ? _value.key : key as String,
      name: name == freezed ? _value.name : name as String,
      sort: sort == freezed ? _value.sort : sort as String,
      stackable: stackable == freezed ? _value.stackable : stackable as bool,
    ));
  }
}

/// @nodoc
abstract class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) =
      __$ItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String armor,
      String desc,
      String key,
      String name,
      String sort,
      bool stackable});
}

/// @nodoc
class __$ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(_Item _value, $Res Function(_Item) _then)
      : super(_value, (v) => _then(v as _Item));

  @override
  _Item get _value => super._value as _Item;

  @override
  $Res call({
    Object id = freezed,
    Object armor = freezed,
    Object desc = freezed,
    Object key = freezed,
    Object name = freezed,
    Object sort = freezed,
    Object stackable = freezed,
  }) {
    return _then(_Item(
      id: id == freezed ? _value.id : id as int,
      armor: armor == freezed ? _value.armor : armor as String,
      desc: desc == freezed ? _value.desc : desc as String,
      key: key == freezed ? _value.key : key as String,
      name: name == freezed ? _value.name : name as String,
      sort: sort == freezed ? _value.sort : sort as String,
      stackable: stackable == freezed ? _value.stackable : stackable as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Item implements _Item {
  _$_Item(
      {this.id,
      this.armor,
      this.desc,
      this.key,
      this.name,
      this.sort,
      this.stackable});

  factory _$_Item.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemFromJson(json);

  @override
  final int id;
  @override
  final String armor;
  @override
  final String desc;
  @override
  final String key;
  @override
  final String name;
  @override
  final String sort;
  @override
  final bool stackable;

  bool _didtrimmedDesc = false;
  String _trimmedDesc;

  @override
  String get trimmedDesc {
    if (_didtrimmedDesc == false) {
      _didtrimmedDesc = true;
      _trimmedDesc = desc.replaceAll("\n", " ");
    }
    return _trimmedDesc;
  }

  @override
  String toString() {
    return 'Item(id: $id, armor: $armor, desc: $desc, key: $key, name: $name, sort: $sort, stackable: $stackable, trimmedDesc: $trimmedDesc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.armor, armor) ||
                const DeepCollectionEquality().equals(other.armor, armor)) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.sort, sort) ||
                const DeepCollectionEquality().equals(other.sort, sort)) &&
            (identical(other.stackable, stackable) ||
                const DeepCollectionEquality()
                    .equals(other.stackable, stackable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(armor) ^
      const DeepCollectionEquality().hash(desc) ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(sort) ^
      const DeepCollectionEquality().hash(stackable);

  @override
  _$ItemCopyWith<_Item> get copyWith =>
      __$ItemCopyWithImpl<_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemToJson(this);
  }
}

abstract class _Item implements Item {
  factory _Item(
      {int id,
      String armor,
      String desc,
      String key,
      String name,
      String sort,
      bool stackable}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  int get id;
  @override
  String get armor;
  @override
  String get desc;
  @override
  String get key;
  @override
  String get name;
  @override
  String get sort;
  @override
  bool get stackable;
  @override
  _$ItemCopyWith<_Item> get copyWith;
}
