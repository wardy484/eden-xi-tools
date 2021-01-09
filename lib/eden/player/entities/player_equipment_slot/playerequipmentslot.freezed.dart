// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'playerequipmentslot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PlayerEquipmentSlot _$PlayerEquipmentSlotFromJson(Map<String, dynamic> json) {
  return _PlayerEquipmentSlot.fromJson(json);
}

/// @nodoc
class _$PlayerEquipmentSlotTearOff {
  const _$PlayerEquipmentSlotTearOff();

// ignore: unused_element
  _PlayerEquipmentSlot call(
      @JsonKey(name: 'equipslotid') int equipSlotId,
      @nullable @JsonKey(name: 'itemid') int itemId,
      @nullable String name,
      @nullable String signature) {
    return _PlayerEquipmentSlot(
      equipSlotId,
      itemId,
      name,
      signature,
    );
  }

// ignore: unused_element
  PlayerEquipmentSlot fromJson(Map<String, Object> json) {
    return PlayerEquipmentSlot.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PlayerEquipmentSlot = _$PlayerEquipmentSlotTearOff();

/// @nodoc
mixin _$PlayerEquipmentSlot {
  @JsonKey(name: 'equipslotid')
  int get equipSlotId;
  @nullable
  @JsonKey(name: 'itemid')
  int get itemId;
  @nullable
  String get name;
  @nullable
  String get signature;

  Map<String, dynamic> toJson();
  $PlayerEquipmentSlotCopyWith<PlayerEquipmentSlot> get copyWith;
}

/// @nodoc
abstract class $PlayerEquipmentSlotCopyWith<$Res> {
  factory $PlayerEquipmentSlotCopyWith(
          PlayerEquipmentSlot value, $Res Function(PlayerEquipmentSlot) then) =
      _$PlayerEquipmentSlotCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'equipslotid') int equipSlotId,
      @nullable @JsonKey(name: 'itemid') int itemId,
      @nullable String name,
      @nullable String signature});
}

/// @nodoc
class _$PlayerEquipmentSlotCopyWithImpl<$Res>
    implements $PlayerEquipmentSlotCopyWith<$Res> {
  _$PlayerEquipmentSlotCopyWithImpl(this._value, this._then);

  final PlayerEquipmentSlot _value;
  // ignore: unused_field
  final $Res Function(PlayerEquipmentSlot) _then;

  @override
  $Res call({
    Object equipSlotId = freezed,
    Object itemId = freezed,
    Object name = freezed,
    Object signature = freezed,
  }) {
    return _then(_value.copyWith(
      equipSlotId:
          equipSlotId == freezed ? _value.equipSlotId : equipSlotId as int,
      itemId: itemId == freezed ? _value.itemId : itemId as int,
      name: name == freezed ? _value.name : name as String,
      signature: signature == freezed ? _value.signature : signature as String,
    ));
  }
}

/// @nodoc
abstract class _$PlayerEquipmentSlotCopyWith<$Res>
    implements $PlayerEquipmentSlotCopyWith<$Res> {
  factory _$PlayerEquipmentSlotCopyWith(_PlayerEquipmentSlot value,
          $Res Function(_PlayerEquipmentSlot) then) =
      __$PlayerEquipmentSlotCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'equipslotid') int equipSlotId,
      @nullable @JsonKey(name: 'itemid') int itemId,
      @nullable String name,
      @nullable String signature});
}

/// @nodoc
class __$PlayerEquipmentSlotCopyWithImpl<$Res>
    extends _$PlayerEquipmentSlotCopyWithImpl<$Res>
    implements _$PlayerEquipmentSlotCopyWith<$Res> {
  __$PlayerEquipmentSlotCopyWithImpl(
      _PlayerEquipmentSlot _value, $Res Function(_PlayerEquipmentSlot) _then)
      : super(_value, (v) => _then(v as _PlayerEquipmentSlot));

  @override
  _PlayerEquipmentSlot get _value => super._value as _PlayerEquipmentSlot;

  @override
  $Res call({
    Object equipSlotId = freezed,
    Object itemId = freezed,
    Object name = freezed,
    Object signature = freezed,
  }) {
    return _then(_PlayerEquipmentSlot(
      equipSlotId == freezed ? _value.equipSlotId : equipSlotId as int,
      itemId == freezed ? _value.itemId : itemId as int,
      name == freezed ? _value.name : name as String,
      signature == freezed ? _value.signature : signature as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PlayerEquipmentSlot implements _PlayerEquipmentSlot {
  _$_PlayerEquipmentSlot(
      @JsonKey(name: 'equipslotid') this.equipSlotId,
      @nullable @JsonKey(name: 'itemid') this.itemId,
      @nullable this.name,
      @nullable this.signature)
      : assert(equipSlotId != null);

  factory _$_PlayerEquipmentSlot.fromJson(Map<String, dynamic> json) =>
      _$_$_PlayerEquipmentSlotFromJson(json);

  @override
  @JsonKey(name: 'equipslotid')
  final int equipSlotId;
  @override
  @nullable
  @JsonKey(name: 'itemid')
  final int itemId;
  @override
  @nullable
  final String name;
  @override
  @nullable
  final String signature;

  @override
  String toString() {
    return 'PlayerEquipmentSlot(equipSlotId: $equipSlotId, itemId: $itemId, name: $name, signature: $signature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlayerEquipmentSlot &&
            (identical(other.equipSlotId, equipSlotId) ||
                const DeepCollectionEquality()
                    .equals(other.equipSlotId, equipSlotId)) &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.signature, signature) ||
                const DeepCollectionEquality()
                    .equals(other.signature, signature)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(equipSlotId) ^
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(signature);

  @override
  _$PlayerEquipmentSlotCopyWith<_PlayerEquipmentSlot> get copyWith =>
      __$PlayerEquipmentSlotCopyWithImpl<_PlayerEquipmentSlot>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlayerEquipmentSlotToJson(this);
  }
}

abstract class _PlayerEquipmentSlot implements PlayerEquipmentSlot {
  factory _PlayerEquipmentSlot(
      @JsonKey(name: 'equipslotid') int equipSlotId,
      @nullable @JsonKey(name: 'itemid') int itemId,
      @nullable String name,
      @nullable String signature) = _$_PlayerEquipmentSlot;

  factory _PlayerEquipmentSlot.fromJson(Map<String, dynamic> json) =
      _$_PlayerEquipmentSlot.fromJson;

  @override
  @JsonKey(name: 'equipslotid')
  int get equipSlotId;
  @override
  @nullable
  @JsonKey(name: 'itemid')
  int get itemId;
  @override
  @nullable
  String get name;
  @override
  @nullable
  String get signature;
  @override
  _$PlayerEquipmentSlotCopyWith<_PlayerEquipmentSlot> get copyWith;
}
