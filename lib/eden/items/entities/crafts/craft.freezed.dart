// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'craft.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Craft _$CraftFromJson(Map<String, dynamic> json) {
  return _Craft.fromJson(json);
}

/// @nodoc
class _$CraftTearOff {
  const _$CraftTearOff();

  _Craft call(
      {@JsonKey(name: 'BaseSell') required int baseSell,
      @JsonKey(name: 'Crystal') required int crystal,
      @JsonKey(name: 'HQCrystal') required int hqCrystal,
      @JsonKey(name: 'ID') required int id,
      @JsonKey(name: 'KeyItem') required int keyItem,
      @JsonKey(name: 'NoSale') required int noSale,
      @JsonKey(name: 'Type') required int type,
      @JsonKey(name: 'aH') required int ah,
      @JsonKey(name: 'ah_disabled') required int ahDisabled,
      @JsonKey(name: 'crafts') required List<CraftItem> crafts,
      @JsonKey(name: 'flags') required int flags,
      @JsonKey(name: 'ingredients') required List<CraftIngredient> ingredients,
      @JsonKey(name: 'itemid') required int itemId,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'results') required List<CraftResult> results,
      @JsonKey(name: 'sortname') required String sortName,
      @JsonKey(name: 'stackSize') required int stackSize,
      @JsonKey(name: 'subid') required int subId}) {
    return _Craft(
      baseSell: baseSell,
      crystal: crystal,
      hqCrystal: hqCrystal,
      id: id,
      keyItem: keyItem,
      noSale: noSale,
      type: type,
      ah: ah,
      ahDisabled: ahDisabled,
      crafts: crafts,
      flags: flags,
      ingredients: ingredients,
      itemId: itemId,
      name: name,
      results: results,
      sortName: sortName,
      stackSize: stackSize,
      subId: subId,
    );
  }

  Craft fromJson(Map<String, Object?> json) {
    return Craft.fromJson(json);
  }
}

/// @nodoc
const $Craft = _$CraftTearOff();

/// @nodoc
mixin _$Craft {
  @JsonKey(name: 'BaseSell')
  int get baseSell => throw _privateConstructorUsedError;
  @JsonKey(name: 'Crystal')
  int get crystal => throw _privateConstructorUsedError;
  @JsonKey(name: 'HQCrystal')
  int get hqCrystal => throw _privateConstructorUsedError;
  @JsonKey(name: 'ID')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'KeyItem')
  int get keyItem => throw _privateConstructorUsedError;
  @JsonKey(name: 'NoSale')
  int get noSale => throw _privateConstructorUsedError;
  @JsonKey(name: 'Type')
  int get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'aH')
  int get ah => throw _privateConstructorUsedError;
  @JsonKey(name: 'ah_disabled')
  int get ahDisabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'crafts')
  List<CraftItem> get crafts => throw _privateConstructorUsedError;
  @JsonKey(name: 'flags')
  int get flags => throw _privateConstructorUsedError;
  @JsonKey(name: 'ingredients')
  List<CraftIngredient> get ingredients => throw _privateConstructorUsedError;
  @JsonKey(name: 'itemid')
  int get itemId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<CraftResult> get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'sortname')
  String get sortName => throw _privateConstructorUsedError;
  @JsonKey(name: 'stackSize')
  int get stackSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'subid')
  int get subId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CraftCopyWith<Craft> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CraftCopyWith<$Res> {
  factory $CraftCopyWith(Craft value, $Res Function(Craft) then) =
      _$CraftCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'BaseSell') int baseSell,
      @JsonKey(name: 'Crystal') int crystal,
      @JsonKey(name: 'HQCrystal') int hqCrystal,
      @JsonKey(name: 'ID') int id,
      @JsonKey(name: 'KeyItem') int keyItem,
      @JsonKey(name: 'NoSale') int noSale,
      @JsonKey(name: 'Type') int type,
      @JsonKey(name: 'aH') int ah,
      @JsonKey(name: 'ah_disabled') int ahDisabled,
      @JsonKey(name: 'crafts') List<CraftItem> crafts,
      @JsonKey(name: 'flags') int flags,
      @JsonKey(name: 'ingredients') List<CraftIngredient> ingredients,
      @JsonKey(name: 'itemid') int itemId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'results') List<CraftResult> results,
      @JsonKey(name: 'sortname') String sortName,
      @JsonKey(name: 'stackSize') int stackSize,
      @JsonKey(name: 'subid') int subId});
}

/// @nodoc
class _$CraftCopyWithImpl<$Res> implements $CraftCopyWith<$Res> {
  _$CraftCopyWithImpl(this._value, this._then);

  final Craft _value;
  // ignore: unused_field
  final $Res Function(Craft) _then;

  @override
  $Res call({
    Object? baseSell = freezed,
    Object? crystal = freezed,
    Object? hqCrystal = freezed,
    Object? id = freezed,
    Object? keyItem = freezed,
    Object? noSale = freezed,
    Object? type = freezed,
    Object? ah = freezed,
    Object? ahDisabled = freezed,
    Object? crafts = freezed,
    Object? flags = freezed,
    Object? ingredients = freezed,
    Object? itemId = freezed,
    Object? name = freezed,
    Object? results = freezed,
    Object? sortName = freezed,
    Object? stackSize = freezed,
    Object? subId = freezed,
  }) {
    return _then(_value.copyWith(
      baseSell: baseSell == freezed
          ? _value.baseSell
          : baseSell // ignore: cast_nullable_to_non_nullable
              as int,
      crystal: crystal == freezed
          ? _value.crystal
          : crystal // ignore: cast_nullable_to_non_nullable
              as int,
      hqCrystal: hqCrystal == freezed
          ? _value.hqCrystal
          : hqCrystal // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      keyItem: keyItem == freezed
          ? _value.keyItem
          : keyItem // ignore: cast_nullable_to_non_nullable
              as int,
      noSale: noSale == freezed
          ? _value.noSale
          : noSale // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      ah: ah == freezed
          ? _value.ah
          : ah // ignore: cast_nullable_to_non_nullable
              as int,
      ahDisabled: ahDisabled == freezed
          ? _value.ahDisabled
          : ahDisabled // ignore: cast_nullable_to_non_nullable
              as int,
      crafts: crafts == freezed
          ? _value.crafts
          : crafts // ignore: cast_nullable_to_non_nullable
              as List<CraftItem>,
      flags: flags == freezed
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as int,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<CraftIngredient>,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CraftResult>,
      sortName: sortName == freezed
          ? _value.sortName
          : sortName // ignore: cast_nullable_to_non_nullable
              as String,
      stackSize: stackSize == freezed
          ? _value.stackSize
          : stackSize // ignore: cast_nullable_to_non_nullable
              as int,
      subId: subId == freezed
          ? _value.subId
          : subId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CraftCopyWith<$Res> implements $CraftCopyWith<$Res> {
  factory _$CraftCopyWith(_Craft value, $Res Function(_Craft) then) =
      __$CraftCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'BaseSell') int baseSell,
      @JsonKey(name: 'Crystal') int crystal,
      @JsonKey(name: 'HQCrystal') int hqCrystal,
      @JsonKey(name: 'ID') int id,
      @JsonKey(name: 'KeyItem') int keyItem,
      @JsonKey(name: 'NoSale') int noSale,
      @JsonKey(name: 'Type') int type,
      @JsonKey(name: 'aH') int ah,
      @JsonKey(name: 'ah_disabled') int ahDisabled,
      @JsonKey(name: 'crafts') List<CraftItem> crafts,
      @JsonKey(name: 'flags') int flags,
      @JsonKey(name: 'ingredients') List<CraftIngredient> ingredients,
      @JsonKey(name: 'itemid') int itemId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'results') List<CraftResult> results,
      @JsonKey(name: 'sortname') String sortName,
      @JsonKey(name: 'stackSize') int stackSize,
      @JsonKey(name: 'subid') int subId});
}

/// @nodoc
class __$CraftCopyWithImpl<$Res> extends _$CraftCopyWithImpl<$Res>
    implements _$CraftCopyWith<$Res> {
  __$CraftCopyWithImpl(_Craft _value, $Res Function(_Craft) _then)
      : super(_value, (v) => _then(v as _Craft));

  @override
  _Craft get _value => super._value as _Craft;

  @override
  $Res call({
    Object? baseSell = freezed,
    Object? crystal = freezed,
    Object? hqCrystal = freezed,
    Object? id = freezed,
    Object? keyItem = freezed,
    Object? noSale = freezed,
    Object? type = freezed,
    Object? ah = freezed,
    Object? ahDisabled = freezed,
    Object? crafts = freezed,
    Object? flags = freezed,
    Object? ingredients = freezed,
    Object? itemId = freezed,
    Object? name = freezed,
    Object? results = freezed,
    Object? sortName = freezed,
    Object? stackSize = freezed,
    Object? subId = freezed,
  }) {
    return _then(_Craft(
      baseSell: baseSell == freezed
          ? _value.baseSell
          : baseSell // ignore: cast_nullable_to_non_nullable
              as int,
      crystal: crystal == freezed
          ? _value.crystal
          : crystal // ignore: cast_nullable_to_non_nullable
              as int,
      hqCrystal: hqCrystal == freezed
          ? _value.hqCrystal
          : hqCrystal // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      keyItem: keyItem == freezed
          ? _value.keyItem
          : keyItem // ignore: cast_nullable_to_non_nullable
              as int,
      noSale: noSale == freezed
          ? _value.noSale
          : noSale // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      ah: ah == freezed
          ? _value.ah
          : ah // ignore: cast_nullable_to_non_nullable
              as int,
      ahDisabled: ahDisabled == freezed
          ? _value.ahDisabled
          : ahDisabled // ignore: cast_nullable_to_non_nullable
              as int,
      crafts: crafts == freezed
          ? _value.crafts
          : crafts // ignore: cast_nullable_to_non_nullable
              as List<CraftItem>,
      flags: flags == freezed
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as int,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<CraftIngredient>,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CraftResult>,
      sortName: sortName == freezed
          ? _value.sortName
          : sortName // ignore: cast_nullable_to_non_nullable
              as String,
      stackSize: stackSize == freezed
          ? _value.stackSize
          : stackSize // ignore: cast_nullable_to_non_nullable
              as int,
      subId: subId == freezed
          ? _value.subId
          : subId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Craft implements _Craft {
  _$_Craft(
      {@JsonKey(name: 'BaseSell') required this.baseSell,
      @JsonKey(name: 'Crystal') required this.crystal,
      @JsonKey(name: 'HQCrystal') required this.hqCrystal,
      @JsonKey(name: 'ID') required this.id,
      @JsonKey(name: 'KeyItem') required this.keyItem,
      @JsonKey(name: 'NoSale') required this.noSale,
      @JsonKey(name: 'Type') required this.type,
      @JsonKey(name: 'aH') required this.ah,
      @JsonKey(name: 'ah_disabled') required this.ahDisabled,
      @JsonKey(name: 'crafts') required this.crafts,
      @JsonKey(name: 'flags') required this.flags,
      @JsonKey(name: 'ingredients') required this.ingredients,
      @JsonKey(name: 'itemid') required this.itemId,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'results') required this.results,
      @JsonKey(name: 'sortname') required this.sortName,
      @JsonKey(name: 'stackSize') required this.stackSize,
      @JsonKey(name: 'subid') required this.subId});

  factory _$_Craft.fromJson(Map<String, dynamic> json) =>
      _$$_CraftFromJson(json);

  @override
  @JsonKey(name: 'BaseSell')
  final int baseSell;
  @override
  @JsonKey(name: 'Crystal')
  final int crystal;
  @override
  @JsonKey(name: 'HQCrystal')
  final int hqCrystal;
  @override
  @JsonKey(name: 'ID')
  final int id;
  @override
  @JsonKey(name: 'KeyItem')
  final int keyItem;
  @override
  @JsonKey(name: 'NoSale')
  final int noSale;
  @override
  @JsonKey(name: 'Type')
  final int type;
  @override
  @JsonKey(name: 'aH')
  final int ah;
  @override
  @JsonKey(name: 'ah_disabled')
  final int ahDisabled;
  @override
  @JsonKey(name: 'crafts')
  final List<CraftItem> crafts;
  @override
  @JsonKey(name: 'flags')
  final int flags;
  @override
  @JsonKey(name: 'ingredients')
  final List<CraftIngredient> ingredients;
  @override
  @JsonKey(name: 'itemid')
  final int itemId;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'results')
  final List<CraftResult> results;
  @override
  @JsonKey(name: 'sortname')
  final String sortName;
  @override
  @JsonKey(name: 'stackSize')
  final int stackSize;
  @override
  @JsonKey(name: 'subid')
  final int subId;

  @override
  String toString() {
    return 'Craft(baseSell: $baseSell, crystal: $crystal, hqCrystal: $hqCrystal, id: $id, keyItem: $keyItem, noSale: $noSale, type: $type, ah: $ah, ahDisabled: $ahDisabled, crafts: $crafts, flags: $flags, ingredients: $ingredients, itemId: $itemId, name: $name, results: $results, sortName: $sortName, stackSize: $stackSize, subId: $subId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Craft &&
            (identical(other.baseSell, baseSell) ||
                other.baseSell == baseSell) &&
            (identical(other.crystal, crystal) || other.crystal == crystal) &&
            (identical(other.hqCrystal, hqCrystal) ||
                other.hqCrystal == hqCrystal) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.keyItem, keyItem) || other.keyItem == keyItem) &&
            (identical(other.noSale, noSale) || other.noSale == noSale) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.ah, ah) || other.ah == ah) &&
            (identical(other.ahDisabled, ahDisabled) ||
                other.ahDisabled == ahDisabled) &&
            const DeepCollectionEquality().equals(other.crafts, crafts) &&
            (identical(other.flags, flags) || other.flags == flags) &&
            const DeepCollectionEquality()
                .equals(other.ingredients, ingredients) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.results, results) &&
            (identical(other.sortName, sortName) ||
                other.sortName == sortName) &&
            (identical(other.stackSize, stackSize) ||
                other.stackSize == stackSize) &&
            (identical(other.subId, subId) || other.subId == subId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      baseSell,
      crystal,
      hqCrystal,
      id,
      keyItem,
      noSale,
      type,
      ah,
      ahDisabled,
      const DeepCollectionEquality().hash(crafts),
      flags,
      const DeepCollectionEquality().hash(ingredients),
      itemId,
      name,
      const DeepCollectionEquality().hash(results),
      sortName,
      stackSize,
      subId);

  @JsonKey(ignore: true)
  @override
  _$CraftCopyWith<_Craft> get copyWith =>
      __$CraftCopyWithImpl<_Craft>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CraftToJson(this);
  }
}

abstract class _Craft implements Craft {
  factory _Craft(
      {@JsonKey(name: 'BaseSell') required int baseSell,
      @JsonKey(name: 'Crystal') required int crystal,
      @JsonKey(name: 'HQCrystal') required int hqCrystal,
      @JsonKey(name: 'ID') required int id,
      @JsonKey(name: 'KeyItem') required int keyItem,
      @JsonKey(name: 'NoSale') required int noSale,
      @JsonKey(name: 'Type') required int type,
      @JsonKey(name: 'aH') required int ah,
      @JsonKey(name: 'ah_disabled') required int ahDisabled,
      @JsonKey(name: 'crafts') required List<CraftItem> crafts,
      @JsonKey(name: 'flags') required int flags,
      @JsonKey(name: 'ingredients') required List<CraftIngredient> ingredients,
      @JsonKey(name: 'itemid') required int itemId,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'results') required List<CraftResult> results,
      @JsonKey(name: 'sortname') required String sortName,
      @JsonKey(name: 'stackSize') required int stackSize,
      @JsonKey(name: 'subid') required int subId}) = _$_Craft;

  factory _Craft.fromJson(Map<String, dynamic> json) = _$_Craft.fromJson;

  @override
  @JsonKey(name: 'BaseSell')
  int get baseSell;
  @override
  @JsonKey(name: 'Crystal')
  int get crystal;
  @override
  @JsonKey(name: 'HQCrystal')
  int get hqCrystal;
  @override
  @JsonKey(name: 'ID')
  int get id;
  @override
  @JsonKey(name: 'KeyItem')
  int get keyItem;
  @override
  @JsonKey(name: 'NoSale')
  int get noSale;
  @override
  @JsonKey(name: 'Type')
  int get type;
  @override
  @JsonKey(name: 'aH')
  int get ah;
  @override
  @JsonKey(name: 'ah_disabled')
  int get ahDisabled;
  @override
  @JsonKey(name: 'crafts')
  List<CraftItem> get crafts;
  @override
  @JsonKey(name: 'flags')
  int get flags;
  @override
  @JsonKey(name: 'ingredients')
  List<CraftIngredient> get ingredients;
  @override
  @JsonKey(name: 'itemid')
  int get itemId;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'results')
  List<CraftResult> get results;
  @override
  @JsonKey(name: 'sortname')
  String get sortName;
  @override
  @JsonKey(name: 'stackSize')
  int get stackSize;
  @override
  @JsonKey(name: 'subid')
  int get subId;
  @override
  @JsonKey(ignore: true)
  _$CraftCopyWith<_Craft> get copyWith => throw _privateConstructorUsedError;
}
