// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_equipment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlayerEquipment _$_$_PlayerEquipmentFromJson(Map<String, dynamic> json) {
  return _$_PlayerEquipment(
    json['ammo'] == null
        ? null
        : PlayerEquipmentSlot.fromJson(json['ammo'] as Map<String, dynamic>),
    json['back'] == null
        ? null
        : PlayerEquipmentSlot.fromJson(json['back'] as Map<String, dynamic>),
    json['body'] == null
        ? null
        : PlayerEquipmentSlot.fromJson(json['body'] as Map<String, dynamic>),
    json['ear1'] == null
        ? null
        : PlayerEquipmentSlot.fromJson(json['ear1'] as Map<String, dynamic>),
    json['ear2'] == null
        ? null
        : PlayerEquipmentSlot.fromJson(json['ear2'] as Map<String, dynamic>),
    json['feet'] == null
        ? null
        : PlayerEquipmentSlot.fromJson(json['feet'] as Map<String, dynamic>),
    json['hands'] == null
        ? null
        : PlayerEquipmentSlot.fromJson(json['hands'] as Map<String, dynamic>),
    json['head'] == null
        ? null
        : PlayerEquipmentSlot.fromJson(json['head'] as Map<String, dynamic>),
    json['legs'] == null
        ? null
        : PlayerEquipmentSlot.fromJson(json['legs'] as Map<String, dynamic>),
    json['ls1'] == null
        ? null
        : PlayerEquipmentSlot.fromJson(json['ls1'] as Map<String, dynamic>),
    json['ls2'] == null
        ? null
        : PlayerEquipmentSlot.fromJson(json['ls2'] as Map<String, dynamic>),
    json['main'] == null
        ? null
        : PlayerEquipmentSlot.fromJson(json['main'] as Map<String, dynamic>),
    json['neck'] == null
        ? null
        : PlayerEquipmentSlot.fromJson(json['neck'] as Map<String, dynamic>),
    json['ranged'] == null
        ? null
        : PlayerEquipmentSlot.fromJson(json['ranged'] as Map<String, dynamic>),
    json['ring1'] == null
        ? null
        : PlayerEquipmentSlot.fromJson(json['ring1'] as Map<String, dynamic>),
    json['ring2'] == null
        ? null
        : PlayerEquipmentSlot.fromJson(json['ring2'] as Map<String, dynamic>),
    json['sub'] == null
        ? null
        : PlayerEquipmentSlot.fromJson(json['sub'] as Map<String, dynamic>),
    json['waist'] == null
        ? null
        : PlayerEquipmentSlot.fromJson(json['waist'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PlayerEquipmentToJson(_$_PlayerEquipment instance) =>
    <String, dynamic>{
      'ammo': instance.ammo,
      'back': instance.back,
      'body': instance.body,
      'ear1': instance.ear1,
      'ear2': instance.ear2,
      'feet': instance.feet,
      'hands': instance.hands,
      'head': instance.head,
      'legs': instance.legs,
      'ls1': instance.ls1,
      'ls2': instance.ls2,
      'main': instance.main,
      'neck': instance.neck,
      'ranged': instance.ranged,
      'ring1': instance.ring1,
      'ring2': instance.ring2,
      'sub': instance.sub,
      'waist': instance.waist,
    };
