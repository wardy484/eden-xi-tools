// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'craft.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Craft _$$_CraftFromJson(Map<String, dynamic> json) => _$_Craft(
      baseSell: json['BaseSell'] as int,
      crystal: json['Crystal'] as int,
      hqCrystal: json['HQCrystal'] as int,
      id: json['ID'] as int,
      keyItem: json['KeyItem'] as int,
      noSale: json['NoSale'] as int,
      type: json['Type'] as int,
      ah: json['aH'] as int,
      ahDisabled: json['ah_disabled'] as int,
      crafts: (json['crafts'] as List<dynamic>)
          .map((e) => CraftItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      flags: json['flags'] as int,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => CraftIngredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemId: json['itemid'] as int,
      name: json['name'] as String,
      results: (json['results'] as List<dynamic>)
          .map((e) => CraftResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      sortName: json['sortname'] as String,
      stackSize: json['stackSize'] as int,
      subId: json['subid'] as int,
    );

Map<String, dynamic> _$$_CraftToJson(_$_Craft instance) => <String, dynamic>{
      'BaseSell': instance.baseSell,
      'Crystal': instance.crystal,
      'HQCrystal': instance.hqCrystal,
      'ID': instance.id,
      'KeyItem': instance.keyItem,
      'NoSale': instance.noSale,
      'Type': instance.type,
      'aH': instance.ah,
      'ah_disabled': instance.ahDisabled,
      'crafts': instance.crafts,
      'flags': instance.flags,
      'ingredients': instance.ingredients,
      'itemid': instance.itemId,
      'name': instance.name,
      'results': instance.results,
      'sortname': instance.sortName,
      'stackSize': instance.stackSize,
      'subid': instance.subId,
    };
