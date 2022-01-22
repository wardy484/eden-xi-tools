// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      id: json['id'] as int,
      armor: json['armor'] as String?,
      desc: json['desc'] as String,
      key: json['key'] as String,
      name: json['name'] as String,
      sort: json['sort'] as String,
      stackable: json['stackable'] as bool,
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'id': instance.id,
      'armor': instance.armor,
      'desc': instance.desc,
      'key': instance.key,
      'name': instance.name,
      'sort': instance.sort,
      'stackable': instance.stackable,
    };
