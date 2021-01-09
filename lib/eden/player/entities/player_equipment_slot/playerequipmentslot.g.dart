// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playerequipmentslot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlayerEquipmentSlot _$_$_PlayerEquipmentSlotFromJson(
    Map<String, dynamic> json) {
  return _$_PlayerEquipmentSlot(
    json['equipslotid'] as int,
    json['itemid'] as int,
    json['name'] as String,
    json['signature'] as String,
  );
}

Map<String, dynamic> _$_$_PlayerEquipmentSlotToJson(
        _$_PlayerEquipmentSlot instance) =>
    <String, dynamic>{
      'equipslotid': instance.equipSlotId,
      'itemid': instance.itemId,
      'name': instance.name,
      'signature': instance.signature,
    };
