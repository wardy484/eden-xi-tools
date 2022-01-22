// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player_bazaar_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayerBazaarItem _$PlayerBazaarItemFromJson(Map<String, dynamic> json) {
  return _PlayerBazaarItem.fromJson(json);
}

/// @nodoc
class _$PlayerBazaarItemTearOff {
  const _$PlayerBazaarItemTearOff();

  _PlayerBazaarItem call(
      {@JsonKey(name: 'bazaar') required int bazaar,
      @JsonKey(name: 'name') required String itemName}) {
    return _PlayerBazaarItem(
      bazaar: bazaar,
      itemName: itemName,
    );
  }

  PlayerBazaarItem fromJson(Map<String, Object?> json) {
    return PlayerBazaarItem.fromJson(json);
  }
}

/// @nodoc
const $PlayerBazaarItem = _$PlayerBazaarItemTearOff();

/// @nodoc
mixin _$PlayerBazaarItem {
  @JsonKey(name: 'bazaar')
  int get bazaar => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get itemName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerBazaarItemCopyWith<PlayerBazaarItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerBazaarItemCopyWith<$Res> {
  factory $PlayerBazaarItemCopyWith(
          PlayerBazaarItem value, $Res Function(PlayerBazaarItem) then) =
      _$PlayerBazaarItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'bazaar') int bazaar,
      @JsonKey(name: 'name') String itemName});
}

/// @nodoc
class _$PlayerBazaarItemCopyWithImpl<$Res>
    implements $PlayerBazaarItemCopyWith<$Res> {
  _$PlayerBazaarItemCopyWithImpl(this._value, this._then);

  final PlayerBazaarItem _value;
  // ignore: unused_field
  final $Res Function(PlayerBazaarItem) _then;

  @override
  $Res call({
    Object? bazaar = freezed,
    Object? itemName = freezed,
  }) {
    return _then(_value.copyWith(
      bazaar: bazaar == freezed
          ? _value.bazaar
          : bazaar // ignore: cast_nullable_to_non_nullable
              as int,
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PlayerBazaarItemCopyWith<$Res>
    implements $PlayerBazaarItemCopyWith<$Res> {
  factory _$PlayerBazaarItemCopyWith(
          _PlayerBazaarItem value, $Res Function(_PlayerBazaarItem) then) =
      __$PlayerBazaarItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'bazaar') int bazaar,
      @JsonKey(name: 'name') String itemName});
}

/// @nodoc
class __$PlayerBazaarItemCopyWithImpl<$Res>
    extends _$PlayerBazaarItemCopyWithImpl<$Res>
    implements _$PlayerBazaarItemCopyWith<$Res> {
  __$PlayerBazaarItemCopyWithImpl(
      _PlayerBazaarItem _value, $Res Function(_PlayerBazaarItem) _then)
      : super(_value, (v) => _then(v as _PlayerBazaarItem));

  @override
  _PlayerBazaarItem get _value => super._value as _PlayerBazaarItem;

  @override
  $Res call({
    Object? bazaar = freezed,
    Object? itemName = freezed,
  }) {
    return _then(_PlayerBazaarItem(
      bazaar: bazaar == freezed
          ? _value.bazaar
          : bazaar // ignore: cast_nullable_to_non_nullable
              as int,
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlayerBazaarItem implements _PlayerBazaarItem {
  _$_PlayerBazaarItem(
      {@JsonKey(name: 'bazaar') required this.bazaar,
      @JsonKey(name: 'name') required this.itemName});

  factory _$_PlayerBazaarItem.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerBazaarItemFromJson(json);

  @override
  @JsonKey(name: 'bazaar')
  final int bazaar;
  @override
  @JsonKey(name: 'name')
  final String itemName;

  @override
  String toString() {
    return 'PlayerBazaarItem(bazaar: $bazaar, itemName: $itemName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlayerBazaarItem &&
            (identical(other.bazaar, bazaar) || other.bazaar == bazaar) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bazaar, itemName);

  @JsonKey(ignore: true)
  @override
  _$PlayerBazaarItemCopyWith<_PlayerBazaarItem> get copyWith =>
      __$PlayerBazaarItemCopyWithImpl<_PlayerBazaarItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerBazaarItemToJson(this);
  }
}

abstract class _PlayerBazaarItem implements PlayerBazaarItem {
  factory _PlayerBazaarItem(
      {@JsonKey(name: 'bazaar') required int bazaar,
      @JsonKey(name: 'name') required String itemName}) = _$_PlayerBazaarItem;

  factory _PlayerBazaarItem.fromJson(Map<String, dynamic> json) =
      _$_PlayerBazaarItem.fromJson;

  @override
  @JsonKey(name: 'bazaar')
  int get bazaar;
  @override
  @JsonKey(name: 'name')
  String get itemName;
  @override
  @JsonKey(ignore: true)
  _$PlayerBazaarItemCopyWith<_PlayerBazaarItem> get copyWith =>
      throw _privateConstructorUsedError;
}
