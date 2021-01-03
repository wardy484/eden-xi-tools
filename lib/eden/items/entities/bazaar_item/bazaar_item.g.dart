// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bazaar_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BazaarItem _$_$_BazaarItemFromJson(Map<String, dynamic> json) {
  return _$_BazaarItem(
    bazaar: json['bazaar'] as int,
    charname: json['charname'] as String,
    onlineFlag: json['online_flag'] as int,
  );
}

Map<String, dynamic> _$_$_BazaarItemToJson(_$_BazaarItem instance) =>
    <String, dynamic>{
      'bazaar': instance.bazaar,
      'charname': instance.charname,
      'online_flag': instance.onlineFlag,
    };
